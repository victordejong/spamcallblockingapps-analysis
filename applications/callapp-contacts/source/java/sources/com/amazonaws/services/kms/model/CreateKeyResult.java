package com.amazonaws.services.kms.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateKeyResult.class */
public class CreateKeyResult implements Serializable {
    private KeyMetadata keyMetadata;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateKeyResult)) {
            return false;
        }
        CreateKeyResult createKeyResult = (CreateKeyResult) obj;
        if ((createKeyResult.getKeyMetadata() == null) ^ (getKeyMetadata() == null)) {
            return false;
        }
        return createKeyResult.getKeyMetadata() == null || createKeyResult.getKeyMetadata().equals(getKeyMetadata());
    }

    public KeyMetadata getKeyMetadata() {
        return this.keyMetadata;
    }

    public int hashCode() {
        return (getKeyMetadata() == null ? 0 : getKeyMetadata().hashCode()) + 31;
    }

    public void setKeyMetadata(KeyMetadata keyMetadata) {
        this.keyMetadata = keyMetadata;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyMetadata() != null) {
            sb.append("KeyMetadata: " + getKeyMetadata());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateKeyResult withKeyMetadata(KeyMetadata keyMetadata) {
        this.keyMetadata = keyMetadata;
        return this;
    }
}
