package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/DescribeKeyRequest.class */
public class DescribeKeyRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> grantTokens = new ArrayList();
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeKeyRequest)) {
            return false;
        }
        DescribeKeyRequest describeKeyRequest = (DescribeKeyRequest) obj;
        if ((describeKeyRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (describeKeyRequest.getKeyId() != null && !describeKeyRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((describeKeyRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return describeKeyRequest.getGrantTokens() == null || describeKeyRequest.getGrantTokens().equals(getGrantTokens());
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getGrantTokens() != null) {
            i = getGrantTokens().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens());
        }
        sb.append("}");
        return sb.toString();
    }

    public DescribeKeyRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public DescribeKeyRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public DescribeKeyRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
