package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetKeyPolicyRequest.class */
public class GetKeyPolicyRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private String policyName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyPolicyRequest)) {
            return false;
        }
        GetKeyPolicyRequest getKeyPolicyRequest = (GetKeyPolicyRequest) obj;
        if ((getKeyPolicyRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (getKeyPolicyRequest.getKeyId() != null && !getKeyPolicyRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((getKeyPolicyRequest.getPolicyName() == null) ^ (getPolicyName() == null)) {
            return false;
        }
        return getKeyPolicyRequest.getPolicyName() == null || getKeyPolicyRequest.getPolicyName().equals(getPolicyName());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getPolicyName() {
        return this.policyName;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getPolicyName() != null) {
            i = getPolicyName().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setPolicyName(String str) {
        this.policyName = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getPolicyName() != null) {
            sb.append("PolicyName: " + getPolicyName());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetKeyPolicyRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GetKeyPolicyRequest withPolicyName(String str) {
        this.policyName = str;
        return this;
    }
}
