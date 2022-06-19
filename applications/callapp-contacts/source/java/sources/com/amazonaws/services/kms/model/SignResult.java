package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/SignResult.class */
public class SignResult implements Serializable {
    private String keyId;
    private ByteBuffer signature;
    private String signingAlgorithm;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignResult)) {
            return false;
        }
        SignResult signResult = (SignResult) obj;
        if ((signResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (signResult.getKeyId() != null && !signResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((signResult.getSignature() == null) ^ (getSignature() == null)) {
            return false;
        }
        if (signResult.getSignature() != null && !signResult.getSignature().equals(getSignature())) {
            return false;
        }
        if ((signResult.getSigningAlgorithm() == null) ^ (getSigningAlgorithm() == null)) {
            return false;
        }
        return signResult.getSigningAlgorithm() == null || signResult.getSigningAlgorithm().equals(getSigningAlgorithm());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public ByteBuffer getSignature() {
        return this.signature;
    }

    public String getSigningAlgorithm() {
        return this.signingAlgorithm;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getSignature() == null ? 0 : getSignature().hashCode();
        if (getSigningAlgorithm() != null) {
            i = getSigningAlgorithm().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setSignature(ByteBuffer byteBuffer) {
        this.signature = byteBuffer;
    }

    public void setSigningAlgorithm(SigningAlgorithmSpec signingAlgorithmSpec) {
        this.signingAlgorithm = signingAlgorithmSpec.toString();
    }

    public void setSigningAlgorithm(String str) {
        this.signingAlgorithm = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getSignature() != null) {
            sb.append("Signature: " + getSignature() + ",");
        }
        if (getSigningAlgorithm() != null) {
            sb.append("SigningAlgorithm: " + getSigningAlgorithm());
        }
        sb.append("}");
        return sb.toString();
    }

    public SignResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public SignResult withSignature(ByteBuffer byteBuffer) {
        this.signature = byteBuffer;
        return this;
    }

    public SignResult withSigningAlgorithm(SigningAlgorithmSpec signingAlgorithmSpec) {
        this.signingAlgorithm = signingAlgorithmSpec.toString();
        return this;
    }

    public SignResult withSigningAlgorithm(String str) {
        this.signingAlgorithm = str;
        return this;
    }
}
