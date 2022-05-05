package org.junit.validator;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationValidatorFactory.class */
public class AnnotationValidatorFactory {
    private static final ConcurrentHashMap<ValidateWith, AnnotationValidator> VALIDATORS_FOR_ANNOTATION_TYPES = new ConcurrentHashMap<>();

    public AnnotationValidator createAnnotationValidator(ValidateWith validateWith) {
        AnnotationValidator annotationValidator = VALIDATORS_FOR_ANNOTATION_TYPES.get(validateWith);
        if (annotationValidator != null) {
            return annotationValidator;
        }
        Class<? extends AnnotationValidator> value = validateWith.value();
        if (value == null) {
            throw new IllegalArgumentException("Can't create validator, value is null in annotation " + validateWith.getClass().getName());
        }
        try {
            VALIDATORS_FOR_ANNOTATION_TYPES.putIfAbsent(validateWith, (AnnotationValidator) value.newInstance());
            return VALIDATORS_FOR_ANNOTATION_TYPES.get(validateWith);
        } catch (Exception e) {
            throw new RuntimeException("Exception received when creating AnnotationValidator class " + value.getName(), e);
        }
    }
}
