package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult.class */
public class GenerateDataKeyPairWithoutPlaintextResult implements Serializable {
    private String keyId;
    private String keyPairSpec;
    private ByteBuffer privateKeyCiphertextBlob;
    private ByteBuffer publicKey;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GenerateDataKeyPairWithoutPlaintextResult)) {
            return false;
        }
        GenerateDataKeyPairWithoutPlaintextResult generateDataKeyPairWithoutPlaintextResult = (GenerateDataKeyPairWithoutPlaintextResult) obj;
        if ((generateDataKeyPairWithoutPlaintextResult.getPrivateKeyCiphertextBlob() == null) ^ (getPrivateKeyCiphertextBlob() == null)) {
            return false;
        }
        if (generateDataKeyPairWithoutPlaintextResult.getPrivateKeyCiphertextBlob() != null && !generateDataKeyPairWithoutPlaintextResult.getPrivateKeyCiphertextBlob().equals(getPrivateKeyCiphertextBlob())) {
            return false;
        }
        if ((generateDataKeyPairWithoutPlaintextResult.getPublicKey() == null) ^ (getPublicKey() == null)) {
            return false;
        }
        if (generateDataKeyPairWithoutPlaintextResult.getPublicKey() != null && !generateDataKeyPairWithoutPlaintextResult.getPublicKey().equals(getPublicKey())) {
            return false;
        }
        if ((generateDataKeyPairWithoutPlaintextResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (generateDataKeyPairWithoutPlaintextResult.getKeyId() != null && !generateDataKeyPairWithoutPlaintextResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((generateDataKeyPairWithoutPlaintextResult.getKeyPairSpec() == null) ^ (getKeyPairSpec() == null)) {
            return false;
        }
        return generateDataKeyPairWithoutPlaintextResult.getKeyPairSpec() == null || generateDataKeyPairWithoutPlaintextResult.getKeyPairSpec().equals(getKeyPairSpec());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getKeyPairSpec() {
        return this.keyPairSpec;
    }

    public ByteBuffer getPrivateKeyCiphertextBlob() {
        return this.privateKeyCiphertextBlob;
    }

    public ByteBuffer getPublicKey() {
        return this.publicKey;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getPrivateKeyCiphertextBlob() == null ? 0 : getPrivateKeyCiphertextBlob().hashCode();
        int hashCode2 = getPublicKey() == null ? 0 : getPublicKey().hashCode();
        int hashCode3 = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getKeyPairSpec() != null) {
            i = getKeyPairSpec().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setKeyPairSpec(DataKeyPairSpec dataKeyPairSpec) {
        this.keyPairSpec = dataKeyPairSpec.toString();
    }

    public void setKeyPairSpec(String str) {
        this.keyPairSpec = str;
    }

    public void setPrivateKeyCiphertextBlob(ByteBuffer byteBuffer) {
        this.privateKeyCiphertextBlob = byteBuffer;
    }

    public void setPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getPrivateKeyCiphertextBlob() != null) {
            sb.append("PrivateKeyCiphertextBlob: " + getPrivateKeyCiphertextBlob() + ",");
        }
        if (getPublicKey() != null) {
            sb.append("PublicKey: " + getPublicKey() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getKeyPairSpec() != null) {
            sb.append("KeyPairSpec: " + getKeyPairSpec());
        }
        sb.append("}");
        return sb.toString();
    }

    public GenerateDataKeyPairWithoutPlaintextResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GenerateDataKeyPairWithoutPlaintextResult withKeyPairSpec(DataKeyPairSpec dataKeyPairSpec) {
        this.keyPairSpec = dataKeyPairSpec.toString();
        return this;
    }

    public GenerateDataKeyPairWithoutPlaintextResult withKeyPairSpec(String str) {
        this.keyPairSpec = str;
        return this;
    }

    public GenerateDataKeyPairWithoutPlaintextResult withPrivateKeyCiphertextBlob(ByteBuffer byteBuffer) {
        this.privateKeyCiphertextBlob = byteBuffer;
        return this;
    }

    public GenerateDataKeyPairWithoutPlaintextResult withPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
        return this;
    }
}
