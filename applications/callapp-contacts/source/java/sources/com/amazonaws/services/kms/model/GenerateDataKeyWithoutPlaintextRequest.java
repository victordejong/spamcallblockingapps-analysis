package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest.class */
public class GenerateDataKeyWithoutPlaintextRequest extends AmazonWebServiceRequest implements Serializable {
    private Map<String, String> encryptionContext = new HashMap();
    private List<String> grantTokens = new ArrayList();
    private String keyId;
    private String keySpec;
    private Integer numberOfBytes;

    public GenerateDataKeyWithoutPlaintextRequest addEncryptionContextEntry(String str, String str2) {
        if (this.encryptionContext == null) {
            this.encryptionContext = new HashMap();
        }
        if (!this.encryptionContext.containsKey(str)) {
            this.encryptionContext.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GenerateDataKeyWithoutPlaintextRequest clearEncryptionContextEntries() {
        this.encryptionContext = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GenerateDataKeyWithoutPlaintextRequest)) {
            return false;
        }
        GenerateDataKeyWithoutPlaintextRequest generateDataKeyWithoutPlaintextRequest = (GenerateDataKeyWithoutPlaintextRequest) obj;
        if ((generateDataKeyWithoutPlaintextRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (generateDataKeyWithoutPlaintextRequest.getKeyId() != null && !generateDataKeyWithoutPlaintextRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((generateDataKeyWithoutPlaintextRequest.getEncryptionContext() == null) ^ (getEncryptionContext() == null)) {
            return false;
        }
        if (generateDataKeyWithoutPlaintextRequest.getEncryptionContext() != null && !generateDataKeyWithoutPlaintextRequest.getEncryptionContext().equals(getEncryptionContext())) {
            return false;
        }
        if ((generateDataKeyWithoutPlaintextRequest.getKeySpec() == null) ^ (getKeySpec() == null)) {
            return false;
        }
        if (generateDataKeyWithoutPlaintextRequest.getKeySpec() != null && !generateDataKeyWithoutPlaintextRequest.getKeySpec().equals(getKeySpec())) {
            return false;
        }
        if ((generateDataKeyWithoutPlaintextRequest.getNumberOfBytes() == null) ^ (getNumberOfBytes() == null)) {
            return false;
        }
        if (generateDataKeyWithoutPlaintextRequest.getNumberOfBytes() != null && !generateDataKeyWithoutPlaintextRequest.getNumberOfBytes().equals(getNumberOfBytes())) {
            return false;
        }
        if ((generateDataKeyWithoutPlaintextRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return generateDataKeyWithoutPlaintextRequest.getGrantTokens() == null || generateDataKeyWithoutPlaintextRequest.getGrantTokens().equals(getGrantTokens());
    }

    public Map<String, String> getEncryptionContext() {
        return this.encryptionContext;
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getKeySpec() {
        return this.keySpec;
    }

    public Integer getNumberOfBytes() {
        return this.numberOfBytes;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getEncryptionContext() == null ? 0 : getEncryptionContext().hashCode();
        int hashCode3 = getKeySpec() == null ? 0 : getKeySpec().hashCode();
        int hashCode4 = getNumberOfBytes() == null ? 0 : getNumberOfBytes().hashCode();
        if (getGrantTokens() != null) {
            i = getGrantTokens().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setEncryptionContext(Map<String, String> map) {
        this.encryptionContext = map;
    }

    public void setGrantTokens(Collection<String> collection) {
        if (collection == null) {
            this.grantTokens = null;
        } else {
            this.grantTokens = new ArrayList(collection);
        }
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setKeySpec(DataKeySpec dataKeySpec) {
        this.keySpec = dataKeySpec.toString();
    }

    public void setKeySpec(String str) {
        this.keySpec = str;
    }

    public void setNumberOfBytes(Integer num) {
        this.numberOfBytes = num;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getEncryptionContext() != null) {
            sb.append("EncryptionContext: " + getEncryptionContext() + ",");
        }
        if (getKeySpec() != null) {
            sb.append("KeySpec: " + getKeySpec() + ",");
        }
        if (getNumberOfBytes() != null) {
            sb.append("NumberOfBytes: " + getNumberOfBytes() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens());
        }
        sb.append("}");
        return sb.toString();
    }

    public GenerateDataKeyWithoutPlaintextRequest withEncryptionContext(Map<String, String> map) {
        this.encryptionContext = map;
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withKeySpec(DataKeySpec dataKeySpec) {
        this.keySpec = dataKeySpec.toString();
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withKeySpec(String str) {
        this.keySpec = str;
        return this;
    }

    public GenerateDataKeyWithoutPlaintextRequest withNumberOfBytes(Integer num) {
        this.numberOfBytes = num;
        return this;
    }
}
