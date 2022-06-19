package com.amazonaws.services.kms.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateCustomKeyStoreResult.class */
public class CreateCustomKeyStoreResult implements Serializable {
    private String customKeyStoreId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateCustomKeyStoreResult)) {
            return false;
        }
        CreateCustomKeyStoreResult createCustomKeyStoreResult = (CreateCustomKeyStoreResult) obj;
        if ((createCustomKeyStoreResult.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        return createCustomKeyStoreResult.getCustomKeyStoreId() == null || createCustomKeyStoreResult.getCustomKeyStoreId().equals(getCustomKeyStoreId());
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public int hashCode() {
        return (getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode()) + 31;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateCustomKeyStoreResult withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }
}
