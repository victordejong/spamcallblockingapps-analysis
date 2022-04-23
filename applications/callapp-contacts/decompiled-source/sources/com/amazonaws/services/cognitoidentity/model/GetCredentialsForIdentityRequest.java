package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest.class */
public class GetCredentialsForIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String customRoleArn;
    private String identityId;
    private Map<String, String> logins;

    public GetCredentialsForIdentityRequest addLoginsEntry(String str, String str2) {
        if (this.logins == null) {
            this.logins = new HashMap();
        }
        if (!this.logins.containsKey(str)) {
            this.logins.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GetCredentialsForIdentityRequest clearLoginsEntries() {
        this.logins = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityRequest)) {
            return false;
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = (GetCredentialsForIdentityRequest) obj;
        if ((getCredentialsForIdentityRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getCredentialsForIdentityRequest.getIdentityId() != null && !getCredentialsForIdentityRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getCredentialsForIdentityRequest.getLogins() == null) ^ (getLogins() == null)) {
            return false;
        }
        if (getCredentialsForIdentityRequest.getLogins() != null && !getCredentialsForIdentityRequest.getLogins().equals(getLogins())) {
            return false;
        }
        if ((getCredentialsForIdentityRequest.getCustomRoleArn() == null) ^ (getCustomRoleArn() == null)) {
            return false;
        }
        return getCredentialsForIdentityRequest.getCustomRoleArn() == null || getCredentialsForIdentityRequest.getCustomRoleArn().equals(getCustomRoleArn());
    }

    public String getCustomRoleArn() {
        return this.customRoleArn;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public Map<String, String> getLogins() {
        return this.logins;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode2 = getLogins() == null ? 0 : getLogins().hashCode();
        if (getCustomRoleArn() != null) {
            i = getCustomRoleArn().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setCustomRoleArn(String str) {
        this.customRoleArn = str;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setLogins(Map<String, String> map) {
        this.logins = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getLogins() != null) {
            sb.append("Logins: " + getLogins() + ",");
        }
        if (getCustomRoleArn() != null) {
            sb.append("CustomRoleArn: " + getCustomRoleArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetCredentialsForIdentityRequest withCustomRoleArn(String str) {
        this.customRoleArn = str;
        return this;
    }

    public GetCredentialsForIdentityRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public GetCredentialsForIdentityRequest withLogins(Map<String, String> map) {
        this.logins = map;
        return this;
    }
}
