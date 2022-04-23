package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/RetireGrantRequest.class */
public class RetireGrantRequest extends AmazonWebServiceRequest implements Serializable {
    private String grantId;
    private String grantToken;
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RetireGrantRequest)) {
            return false;
        }
        RetireGrantRequest retireGrantRequest = (RetireGrantRequest) obj;
        if ((retireGrantRequest.getGrantToken() == null) ^ (getGrantToken() == null)) {
            return false;
        }
        if (retireGrantRequest.getGrantToken() != null && !retireGrantRequest.getGrantToken().equals(getGrantToken())) {
            return false;
        }
        if ((retireGrantRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (retireGrantRequest.getKeyId() != null && !retireGrantRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((retireGrantRequest.getGrantId() == null) ^ (getGrantId() == null)) {
            return false;
        }
        return retireGrantRequest.getGrantId() == null || retireGrantRequest.getGrantId().equals(getGrantId());
    }

    public String getGrantId() {
        return this.grantId;
    }

    public String getGrantToken() {
        return this.grantToken;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getGrantToken() == null ? 0 : getGrantToken().hashCode();
        int hashCode2 = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getGrantId() != null) {
            i = getGrantId().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setGrantId(String str) {
        this.grantId = str;
    }

    public void setGrantToken(String str) {
        this.grantToken = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getGrantToken() != null) {
            sb.append("GrantToken: " + getGrantToken() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getGrantId() != null) {
            sb.append("GrantId: " + getGrantId());
        }
        sb.append("}");
        return sb.toString();
    }

    public RetireGrantRequest withGrantId(String str) {
        this.grantId = str;
        return this;
    }

    public RetireGrantRequest withGrantToken(String str) {
        this.grantToken = str;
        return this;
    }

    public RetireGrantRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
