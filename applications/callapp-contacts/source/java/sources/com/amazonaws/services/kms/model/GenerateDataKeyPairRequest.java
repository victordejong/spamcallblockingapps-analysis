package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GenerateDataKeyPairRequest.class */
public class GenerateDataKeyPairRequest extends AmazonWebServiceRequest implements Serializable {
    private Map<String, String> encryptionContext = new HashMap();
    private List<String> grantTokens = new ArrayList();
    private String keyId;
    private String keyPairSpec;

    public GenerateDataKeyPairRequest addEncryptionContextEntry(String str, String str2) {
        if (this.encryptionContext == null) {
            this.encryptionContext = new HashMap();
        }
        if (!this.encryptionContext.containsKey(str)) {
            this.encryptionContext.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GenerateDataKeyPairRequest clearEncryptionContextEntries() {
        this.encryptionContext = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GenerateDataKeyPairRequest)) {
            return false;
        }
        GenerateDataKeyPairRequest generateDataKeyPairRequest = (GenerateDataKeyPairRequest) obj;
        if ((generateDataKeyPairRequest.getEncryptionContext() == null) ^ (getEncryptionContext() == null)) {
            return false;
        }
        if (generateDataKeyPairRequest.getEncryptionContext() != null && !generateDataKeyPairRequest.getEncryptionContext().equals(getEncryptionContext())) {
            return false;
        }
        if ((generateDataKeyPairRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (generateDataKeyPairRequest.getKeyId() != null && !generateDataKeyPairRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((generateDataKeyPairRequest.getKeyPairSpec() == null) ^ (getKeyPairSpec() == null)) {
            return false;
        }
        if (generateDataKeyPairRequest.getKeyPairSpec() != null && !generateDataKeyPairRequest.getKeyPairSpec().equals(getKeyPairSpec())) {
            return false;
        }
        if ((generateDataKeyPairRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return generateDataKeyPairRequest.getGrantTokens() == null || generateDataKeyPairRequest.getGrantTokens().equals(getGrantTokens());
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

    public String getKeyPairSpec() {
        return this.keyPairSpec;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getEncryptionContext() == null ? 0 : getEncryptionContext().hashCode();
        int hashCode2 = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode3 = getKeyPairSpec() == null ? 0 : getKeyPairSpec().hashCode();
        if (getGrantTokens() != null) {
            i = getGrantTokens().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
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

    public void setKeyPairSpec(DataKeyPairSpec dataKeyPairSpec) {
        this.keyPairSpec = dataKeyPairSpec.toString();
    }

    public void setKeyPairSpec(String str) {
        this.keyPairSpec = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getEncryptionContext() != null) {
            sb.append("EncryptionContext: " + getEncryptionContext() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getKeyPairSpec() != null) {
            sb.append("KeyPairSpec: " + getKeyPairSpec() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens());
        }
        sb.append("}");
        return sb.toString();
    }

    public GenerateDataKeyPairRequest withEncryptionContext(Map<String, String> map) {
        this.encryptionContext = map;
        return this;
    }

    public GenerateDataKeyPairRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public GenerateDataKeyPairRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public GenerateDataKeyPairRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GenerateDataKeyPairRequest withKeyPairSpec(DataKeyPairSpec dataKeyPairSpec) {
        this.keyPairSpec = dataKeyPairSpec.toString();
        return this;
    }

    public GenerateDataKeyPairRequest withKeyPairSpec(String str) {
        this.keyPairSpec = str;
        return this;
    }
}
