package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GrantConstraints.class */
public class GrantConstraints implements Serializable {
    private Map<String, String> encryptionContextSubset = new HashMap();
    private Map<String, String> encryptionContextEquals = new HashMap();

    public GrantConstraints addEncryptionContextEqualsEntry(String str, String str2) {
        if (this.encryptionContextEquals == null) {
            this.encryptionContextEquals = new HashMap();
        }
        if (!this.encryptionContextEquals.containsKey(str)) {
            this.encryptionContextEquals.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GrantConstraints addEncryptionContextSubsetEntry(String str, String str2) {
        if (this.encryptionContextSubset == null) {
            this.encryptionContextSubset = new HashMap();
        }
        if (!this.encryptionContextSubset.containsKey(str)) {
            this.encryptionContextSubset.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GrantConstraints clearEncryptionContextEqualsEntries() {
        this.encryptionContextEquals = null;
        return this;
    }

    public GrantConstraints clearEncryptionContextSubsetEntries() {
        this.encryptionContextSubset = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GrantConstraints)) {
            return false;
        }
        GrantConstraints grantConstraints = (GrantConstraints) obj;
        if ((grantConstraints.getEncryptionContextSubset() == null) ^ (getEncryptionContextSubset() == null)) {
            return false;
        }
        if (grantConstraints.getEncryptionContextSubset() != null && !grantConstraints.getEncryptionContextSubset().equals(getEncryptionContextSubset())) {
            return false;
        }
        if ((grantConstraints.getEncryptionContextEquals() == null) ^ (getEncryptionContextEquals() == null)) {
            return false;
        }
        return grantConstraints.getEncryptionContextEquals() == null || grantConstraints.getEncryptionContextEquals().equals(getEncryptionContextEquals());
    }

    public Map<String, String> getEncryptionContextEquals() {
        return this.encryptionContextEquals;
    }

    public Map<String, String> getEncryptionContextSubset() {
        return this.encryptionContextSubset;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getEncryptionContextSubset() == null ? 0 : getEncryptionContextSubset().hashCode();
        if (getEncryptionContextEquals() != null) {
            i = getEncryptionContextEquals().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setEncryptionContextEquals(Map<String, String> map) {
        this.encryptionContextEquals = map;
    }

    public void setEncryptionContextSubset(Map<String, String> map) {
        this.encryptionContextSubset = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getEncryptionContextSubset() != null) {
            sb.append("EncryptionContextSubset: " + getEncryptionContextSubset() + ",");
        }
        if (getEncryptionContextEquals() != null) {
            sb.append("EncryptionContextEquals: " + getEncryptionContextEquals());
        }
        sb.append("}");
        return sb.toString();
    }

    public GrantConstraints withEncryptionContextEquals(Map<String, String> map) {
        this.encryptionContextEquals = map;
        return this;
    }

    public GrantConstraints withEncryptionContextSubset(Map<String, String> map) {
        this.encryptionContextSubset = map;
        return this;
    }
}
