package org.junit.validator;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.junit.runners.model.Annotatable;
import org.junit.runners.model.FrameworkField;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.TestClass;
/* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationsValidator.class */
public final class AnnotationsValidator implements TestClassValidator {
    private static final List<AnnotatableValidator<?>> VALIDATORS = Arrays.asList(new ClassValidator(), new MethodValidator(), new FieldValidator());

    /* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationsValidator$AnnotatableValidator.class */
    private static abstract class AnnotatableValidator<T extends Annotatable> {
        private static final AnnotationValidatorFactory ANNOTATION_VALIDATOR_FACTORY = new AnnotationValidatorFactory();

        private AnnotatableValidator() {
        }

        private List<Exception> validateAnnotatable(T t) {
            ArrayList arrayList = new ArrayList();
            for (Annotation annotation : t.getAnnotations()) {
                ValidateWith validateWith = (ValidateWith) annotation.annotationType().getAnnotation(ValidateWith.class);
                if (validateWith != null) {
                    arrayList.addAll(validateAnnotatable(ANNOTATION_VALIDATOR_FACTORY.createAnnotationValidator(validateWith), t));
                }
            }
            return arrayList;
        }

        abstract Iterable<T> getAnnotatablesForTestClass(TestClass testClass);

        abstract List<Exception> validateAnnotatable(AnnotationValidator annotationValidator, T t);

        public List<Exception> validateTestClass(TestClass testClass) {
            ArrayList arrayList = new ArrayList();
            for (T t : getAnnotatablesForTestClass(testClass)) {
                arrayList.addAll(validateAnnotatable(t));
            }
            return arrayList;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationsValidator$ClassValidator.class */
    private static class ClassValidator extends AnnotatableValidator<TestClass> {
        private ClassValidator() {
            super();
        }

        @Override // org.junit.validator.AnnotationsValidator.AnnotatableValidator
        Iterable<TestClass> getAnnotatablesForTestClass(TestClass testClass) {
            return Collections.singletonList(testClass);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<Exception> validateAnnotatable(AnnotationValidator annotationValidator, TestClass testClass) {
            return annotationValidator.validateAnnotatedClass(testClass);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationsValidator$FieldValidator.class */
    private static class FieldValidator extends AnnotatableValidator<FrameworkField> {
        private FieldValidator() {
            super();
        }

        @Override // org.junit.validator.AnnotationsValidator.AnnotatableValidator
        Iterable<FrameworkField> getAnnotatablesForTestClass(TestClass testClass) {
            return testClass.getAnnotatedFields();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<Exception> validateAnnotatable(AnnotationValidator annotationValidator, FrameworkField frameworkField) {
            return annotationValidator.validateAnnotatedField(frameworkField);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/validator/AnnotationsValidator$MethodValidator.class */
    private static class MethodValidator extends AnnotatableValidator<FrameworkMethod> {
        private MethodValidator() {
            super();
        }

        @Override // org.junit.validator.AnnotationsValidator.AnnotatableValidator
        Iterable<FrameworkMethod> getAnnotatablesForTestClass(TestClass testClass) {
            return testClass.getAnnotatedMethods();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<Exception> validateAnnotatable(AnnotationValidator annotationValidator, FrameworkMethod frameworkMethod) {
            return annotationValidator.validateAnnotatedMethod(frameworkMethod);
        }
    }

    @Override // org.junit.validator.TestClassValidator
    public List<Exception> validateTestClass(TestClass testClass) {
        ArrayList arrayList = new ArrayList();
        for (AnnotatableValidator<?> annotatableValidator : VALIDATORS) {
            arrayList.addAll(annotatableValidator.validateTestClass(testClass));
        }
        return arrayList;
    }
}
