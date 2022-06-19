package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/NoOpFieldNameValidator.class */
class NoOpFieldNameValidator implements FieldNameValidator {
    @Override // org.bson.FieldNameValidator
    public FieldNameValidator getValidatorForField(String str) {
        return this;
    }

    @Override // org.bson.FieldNameValidator
    public boolean validate(String str) {
        return true;
    }
}
