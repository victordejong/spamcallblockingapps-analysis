package com.amazonaws.services.kms.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetKeyPolicyResult.class */
public class GetKeyPolicyResult implements Serializable {
    private String policy;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyPolicyResult)) {
            return false;
        }
        GetKeyPolicyResult getKeyPolicyResult = (GetKeyPolicyResult) obj;
        if ((getKeyPolicyResult.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        return getKeyPolicyResult.getPolicy() == null || getKeyPolicyResult.getPolicy().equals(getPolicy());
    }

    public String getPolicy() {
        return this.policy;
    }

    public int hashCode() {
        return (getPolicy() == null ? 0 : getPolicy().hashCode()) + 31;
    }

    public void setPolicy(String str) {
        this.policy = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getPolicy() != null) {
            sb.append("Policy: " + getPolicy());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetKeyPolicyResult withPolicy(String str) {
        this.policy = str;
        return this;
    }
}
