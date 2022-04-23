package com.amazonaws.services.kms.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/KeyListEntry.class */
public class KeyListEntry implements Serializable {
    private String keyArn;
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof KeyListEntry)) {
            return false;
        }
        KeyListEntry keyListEntry = (KeyListEntry) obj;
        if ((keyListEntry.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (keyListEntry.getKeyId() != null && !keyListEntry.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((keyListEntry.getKeyArn() == null) ^ (getKeyArn() == null)) {
            return false;
        }
        return keyListEntry.getKeyArn() == null || keyListEntry.getKeyArn().equals(getKeyArn());
    }

    public String getKeyArn() {
        return this.keyArn;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getKeyArn() != null) {
            i = getKeyArn().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setKeyArn(String str) {
        this.keyArn = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getKeyArn() != null) {
            sb.append("KeyArn: " + getKeyArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public KeyListEntry withKeyArn(String str) {
        this.keyArn = str;
        return this;
    }

    public KeyListEntry withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
