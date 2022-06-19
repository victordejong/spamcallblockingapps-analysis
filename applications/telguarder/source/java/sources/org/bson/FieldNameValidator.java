package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/FieldNameValidator.class */
public interface FieldNameValidator {
    FieldNameValidator getValidatorForField(String str);

    boolean validate(String str);
}
