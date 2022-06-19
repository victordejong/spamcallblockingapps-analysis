package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/EncryptResult.class */
public class EncryptResult implements Serializable {
    private ByteBuffer ciphertextBlob;
    private String encryptionAlgorithm;
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof EncryptResult)) {
            return false;
        }
        EncryptResult encryptResult = (EncryptResult) obj;
        if ((encryptResult.getCiphertextBlob() == null) ^ (getCiphertextBlob() == null)) {
            return false;
        }
        if (encryptResult.getCiphertextBlob() != null && !encryptResult.getCiphertextBlob().equals(getCiphertextBlob())) {
            return false;
        }
        if ((encryptResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (encryptResult.getKeyId() != null && !encryptResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((encryptResult.getEncryptionAlgorithm() == null) ^ (getEncryptionAlgorithm() == null)) {
            return false;
        }
        return encryptResult.getEncryptionAlgorithm() == null || encryptResult.getEncryptionAlgorithm().equals(getEncryptionAlgorithm());
    }

    public ByteBuffer getCiphertextBlob() {
        return this.ciphertextBlob;
    }

    public String getEncryptionAlgorithm() {
        return this.encryptionAlgorithm;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCiphertextBlob() == null ? 0 : getCiphertextBlob().hashCode();
        int hashCode2 = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getEncryptionAlgorithm() != null) {
            i = getEncryptionAlgorithm().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
    }

    public void setEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.encryptionAlgorithm = encryptionAlgorithmSpec.toString();
    }

    public void setEncryptionAlgorithm(String str) {
        this.encryptionAlgorithm = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCiphertextBlob() != null) {
            sb.append("CiphertextBlob: " + getCiphertextBlob() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getEncryptionAlgorithm() != null) {
            sb.append("EncryptionAlgorithm: " + getEncryptionAlgorithm());
        }
        sb.append("}");
        return sb.toString();
    }

    public EncryptResult withCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
        return this;
    }

    public EncryptResult withEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.encryptionAlgorithm = encryptionAlgorithmSpec.toString();
        return this;
    }

    public EncryptResult withEncryptionAlgorithm(String str) {
        this.encryptionAlgorithm = str;
        return this;
    }

    public EncryptResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
