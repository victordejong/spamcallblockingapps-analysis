package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GenerateDataKeyPairResult.class */
public class GenerateDataKeyPairResult implements Serializable {
    private String keyId;
    private String keyPairSpec;
    private ByteBuffer privateKeyCiphertextBlob;
    private ByteBuffer privateKeyPlaintext;
    private ByteBuffer publicKey;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GenerateDataKeyPairResult)) {
            return false;
        }
        GenerateDataKeyPairResult generateDataKeyPairResult = (GenerateDataKeyPairResult) obj;
        if ((generateDataKeyPairResult.getPrivateKeyCiphertextBlob() == null) ^ (getPrivateKeyCiphertextBlob() == null)) {
            return false;
        }
        if (generateDataKeyPairResult.getPrivateKeyCiphertextBlob() != null && !generateDataKeyPairResult.getPrivateKeyCiphertextBlob().equals(getPrivateKeyCiphertextBlob())) {
            return false;
        }
        if ((generateDataKeyPairResult.getPrivateKeyPlaintext() == null) ^ (getPrivateKeyPlaintext() == null)) {
            return false;
        }
        if (generateDataKeyPairResult.getPrivateKeyPlaintext() != null && !generateDataKeyPairResult.getPrivateKeyPlaintext().equals(getPrivateKeyPlaintext())) {
            return false;
        }
        if ((generateDataKeyPairResult.getPublicKey() == null) ^ (getPublicKey() == null)) {
            return false;
        }
        if (generateDataKeyPairResult.getPublicKey() != null && !generateDataKeyPairResult.getPublicKey().equals(getPublicKey())) {
            return false;
        }
        if ((generateDataKeyPairResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (generateDataKeyPairResult.getKeyId() != null && !generateDataKeyPairResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((generateDataKeyPairResult.getKeyPairSpec() == null) ^ (getKeyPairSpec() == null)) {
            return false;
        }
        return generateDataKeyPairResult.getKeyPairSpec() == null || generateDataKeyPairResult.getKeyPairSpec().equals(getKeyPairSpec());
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

    public ByteBuffer getPrivateKeyPlaintext() {
        return this.privateKeyPlaintext;
    }

    public ByteBuffer getPublicKey() {
        return this.publicKey;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getPrivateKeyCiphertextBlob() == null ? 0 : getPrivateKeyCiphertextBlob().hashCode();
        int hashCode2 = getPrivateKeyPlaintext() == null ? 0 : getPrivateKeyPlaintext().hashCode();
        int hashCode3 = getPublicKey() == null ? 0 : getPublicKey().hashCode();
        int hashCode4 = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getKeyPairSpec() != null) {
            i = getKeyPairSpec().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
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

    public void setPrivateKeyPlaintext(ByteBuffer byteBuffer) {
        this.privateKeyPlaintext = byteBuffer;
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
        if (getPrivateKeyPlaintext() != null) {
            sb.append("PrivateKeyPlaintext: " + getPrivateKeyPlaintext() + ",");
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

    public GenerateDataKeyPairResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GenerateDataKeyPairResult withKeyPairSpec(DataKeyPairSpec dataKeyPairSpec) {
        this.keyPairSpec = dataKeyPairSpec.toString();
        return this;
    }

    public GenerateDataKeyPairResult withKeyPairSpec(String str) {
        this.keyPairSpec = str;
        return this;
    }

    public GenerateDataKeyPairResult withPrivateKeyCiphertextBlob(ByteBuffer byteBuffer) {
        this.privateKeyCiphertextBlob = byteBuffer;
        return this;
    }

    public GenerateDataKeyPairResult withPrivateKeyPlaintext(ByteBuffer byteBuffer) {
        this.privateKeyPlaintext = byteBuffer;
        return this;
    }

    public GenerateDataKeyPairResult withPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
        return this;
    }
}
