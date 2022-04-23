package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ReEncryptResult.class */
public class ReEncryptResult implements Serializable {
    private ByteBuffer ciphertextBlob;
    private String destinationEncryptionAlgorithm;
    private String keyId;
    private String sourceEncryptionAlgorithm;
    private String sourceKeyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ReEncryptResult)) {
            return false;
        }
        ReEncryptResult reEncryptResult = (ReEncryptResult) obj;
        if ((reEncryptResult.getCiphertextBlob() == null) ^ (getCiphertextBlob() == null)) {
            return false;
        }
        if (reEncryptResult.getCiphertextBlob() != null && !reEncryptResult.getCiphertextBlob().equals(getCiphertextBlob())) {
            return false;
        }
        if ((reEncryptResult.getSourceKeyId() == null) ^ (getSourceKeyId() == null)) {
            return false;
        }
        if (reEncryptResult.getSourceKeyId() != null && !reEncryptResult.getSourceKeyId().equals(getSourceKeyId())) {
            return false;
        }
        if ((reEncryptResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (reEncryptResult.getKeyId() != null && !reEncryptResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((reEncryptResult.getSourceEncryptionAlgorithm() == null) ^ (getSourceEncryptionAlgorithm() == null)) {
            return false;
        }
        if (reEncryptResult.getSourceEncryptionAlgorithm() != null && !reEncryptResult.getSourceEncryptionAlgorithm().equals(getSourceEncryptionAlgorithm())) {
            return false;
        }
        if ((reEncryptResult.getDestinationEncryptionAlgorithm() == null) ^ (getDestinationEncryptionAlgorithm() == null)) {
            return false;
        }
        return reEncryptResult.getDestinationEncryptionAlgorithm() == null || reEncryptResult.getDestinationEncryptionAlgorithm().equals(getDestinationEncryptionAlgorithm());
    }

    public ByteBuffer getCiphertextBlob() {
        return this.ciphertextBlob;
    }

    public String getDestinationEncryptionAlgorithm() {
        return this.destinationEncryptionAlgorithm;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getSourceEncryptionAlgorithm() {
        return this.sourceEncryptionAlgorithm;
    }

    public String getSourceKeyId() {
        return this.sourceKeyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCiphertextBlob() == null ? 0 : getCiphertextBlob().hashCode();
        int hashCode2 = getSourceKeyId() == null ? 0 : getSourceKeyId().hashCode();
        int hashCode3 = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode4 = getSourceEncryptionAlgorithm() == null ? 0 : getSourceEncryptionAlgorithm().hashCode();
        if (getDestinationEncryptionAlgorithm() != null) {
            i = getDestinationEncryptionAlgorithm().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
    }

    public void setDestinationEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.destinationEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
    }

    public void setDestinationEncryptionAlgorithm(String str) {
        this.destinationEncryptionAlgorithm = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setSourceEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.sourceEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
    }

    public void setSourceEncryptionAlgorithm(String str) {
        this.sourceEncryptionAlgorithm = str;
    }

    public void setSourceKeyId(String str) {
        this.sourceKeyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCiphertextBlob() != null) {
            sb.append("CiphertextBlob: " + getCiphertextBlob() + ",");
        }
        if (getSourceKeyId() != null) {
            sb.append("SourceKeyId: " + getSourceKeyId() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getSourceEncryptionAlgorithm() != null) {
            sb.append("SourceEncryptionAlgorithm: " + getSourceEncryptionAlgorithm() + ",");
        }
        if (getDestinationEncryptionAlgorithm() != null) {
            sb.append("DestinationEncryptionAlgorithm: " + getDestinationEncryptionAlgorithm());
        }
        sb.append("}");
        return sb.toString();
    }

    public ReEncryptResult withCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
        return this;
    }

    public ReEncryptResult withDestinationEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.destinationEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
        return this;
    }

    public ReEncryptResult withDestinationEncryptionAlgorithm(String str) {
        this.destinationEncryptionAlgorithm = str;
        return this;
    }

    public ReEncryptResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public ReEncryptResult withSourceEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.sourceEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
        return this;
    }

    public ReEncryptResult withSourceEncryptionAlgorithm(String str) {
        this.sourceEncryptionAlgorithm = str;
        return this;
    }

    public ReEncryptResult withSourceKeyId(String str) {
        this.sourceKeyId = str;
        return this;
    }
}
