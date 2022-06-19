package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetPublicKeyResult.class */
public class GetPublicKeyResult implements Serializable {
    private String customerMasterKeySpec;
    private String keyId;
    private String keyUsage;
    private ByteBuffer publicKey;
    private List<String> encryptionAlgorithms = new ArrayList();
    private List<String> signingAlgorithms = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetPublicKeyResult)) {
            return false;
        }
        GetPublicKeyResult getPublicKeyResult = (GetPublicKeyResult) obj;
        if ((getPublicKeyResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (getPublicKeyResult.getKeyId() != null && !getPublicKeyResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((getPublicKeyResult.getPublicKey() == null) ^ (getPublicKey() == null)) {
            return false;
        }
        if (getPublicKeyResult.getPublicKey() != null && !getPublicKeyResult.getPublicKey().equals(getPublicKey())) {
            return false;
        }
        if ((getPublicKeyResult.getCustomerMasterKeySpec() == null) ^ (getCustomerMasterKeySpec() == null)) {
            return false;
        }
        if (getPublicKeyResult.getCustomerMasterKeySpec() != null && !getPublicKeyResult.getCustomerMasterKeySpec().equals(getCustomerMasterKeySpec())) {
            return false;
        }
        if ((getPublicKeyResult.getKeyUsage() == null) ^ (getKeyUsage() == null)) {
            return false;
        }
        if (getPublicKeyResult.getKeyUsage() != null && !getPublicKeyResult.getKeyUsage().equals(getKeyUsage())) {
            return false;
        }
        if ((getPublicKeyResult.getEncryptionAlgorithms() == null) ^ (getEncryptionAlgorithms() == null)) {
            return false;
        }
        if (getPublicKeyResult.getEncryptionAlgorithms() != null && !getPublicKeyResult.getEncryptionAlgorithms().equals(getEncryptionAlgorithms())) {
            return false;
        }
        if ((getPublicKeyResult.getSigningAlgorithms() == null) ^ (getSigningAlgorithms() == null)) {
            return false;
        }
        return getPublicKeyResult.getSigningAlgorithms() == null || getPublicKeyResult.getSigningAlgorithms().equals(getSigningAlgorithms());
    }

    public String getCustomerMasterKeySpec() {
        return this.customerMasterKeySpec;
    }

    public List<String> getEncryptionAlgorithms() {
        return this.encryptionAlgorithms;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getKeyUsage() {
        return this.keyUsage;
    }

    public ByteBuffer getPublicKey() {
        return this.publicKey;
    }

    public List<String> getSigningAlgorithms() {
        return this.signingAlgorithms;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getPublicKey() == null ? 0 : getPublicKey().hashCode();
        int hashCode3 = getCustomerMasterKeySpec() == null ? 0 : getCustomerMasterKeySpec().hashCode();
        int hashCode4 = getKeyUsage() == null ? 0 : getKeyUsage().hashCode();
        int hashCode5 = getEncryptionAlgorithms() == null ? 0 : getEncryptionAlgorithms().hashCode();
        if (getSigningAlgorithms() != null) {
            i = getSigningAlgorithms().hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setCustomerMasterKeySpec(CustomerMasterKeySpec customerMasterKeySpec) {
        this.customerMasterKeySpec = customerMasterKeySpec.toString();
    }

    public void setCustomerMasterKeySpec(String str) {
        this.customerMasterKeySpec = str;
    }

    public void setEncryptionAlgorithms(Collection<String> collection) {
        if (collection == null) {
            this.encryptionAlgorithms = null;
        } else {
            this.encryptionAlgorithms = new ArrayList(collection);
        }
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setKeyUsage(KeyUsageType keyUsageType) {
        this.keyUsage = keyUsageType.toString();
    }

    public void setKeyUsage(String str) {
        this.keyUsage = str;
    }

    public void setPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
    }

    public void setSigningAlgorithms(Collection<String> collection) {
        if (collection == null) {
            this.signingAlgorithms = null;
        } else {
            this.signingAlgorithms = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getPublicKey() != null) {
            sb.append("PublicKey: " + getPublicKey() + ",");
        }
        if (getCustomerMasterKeySpec() != null) {
            sb.append("CustomerMasterKeySpec: " + getCustomerMasterKeySpec() + ",");
        }
        if (getKeyUsage() != null) {
            sb.append("KeyUsage: " + getKeyUsage() + ",");
        }
        if (getEncryptionAlgorithms() != null) {
            sb.append("EncryptionAlgorithms: " + getEncryptionAlgorithms() + ",");
        }
        if (getSigningAlgorithms() != null) {
            sb.append("SigningAlgorithms: " + getSigningAlgorithms());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetPublicKeyResult withCustomerMasterKeySpec(CustomerMasterKeySpec customerMasterKeySpec) {
        this.customerMasterKeySpec = customerMasterKeySpec.toString();
        return this;
    }

    public GetPublicKeyResult withCustomerMasterKeySpec(String str) {
        this.customerMasterKeySpec = str;
        return this;
    }

    public GetPublicKeyResult withEncryptionAlgorithms(Collection<String> collection) {
        setEncryptionAlgorithms(collection);
        return this;
    }

    public GetPublicKeyResult withEncryptionAlgorithms(String... strArr) {
        if (getEncryptionAlgorithms() == null) {
            this.encryptionAlgorithms = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.encryptionAlgorithms.add(str);
        }
        return this;
    }

    public GetPublicKeyResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GetPublicKeyResult withKeyUsage(KeyUsageType keyUsageType) {
        this.keyUsage = keyUsageType.toString();
        return this;
    }

    public GetPublicKeyResult withKeyUsage(String str) {
        this.keyUsage = str;
        return this;
    }

    public GetPublicKeyResult withPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
        return this;
    }

    public GetPublicKeyResult withSigningAlgorithms(Collection<String> collection) {
        setSigningAlgorithms(collection);
        return this;
    }

    public GetPublicKeyResult withSigningAlgorithms(String... strArr) {
        if (getSigningAlgorithms() == null) {
            this.signingAlgorithms = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.signingAlgorithms.add(str);
        }
        return this;
    }
}
