package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest.class */
public class GetOpenIdTokenForDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String identityId;
    private String identityPoolId;
    private Map<String, String> logins;
    private Map<String, String> principalTags;
    private Long tokenDuration;

    public GetOpenIdTokenForDeveloperIdentityRequest addLoginsEntry(String str, String str2) {
        if (this.logins == null) {
            this.logins = new HashMap();
        }
        if (!this.logins.containsKey(str)) {
            this.logins.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GetOpenIdTokenForDeveloperIdentityRequest addPrincipalTagsEntry(String str, String str2) {
        if (this.principalTags == null) {
            this.principalTags = new HashMap();
        }
        if (!this.principalTags.containsKey(str)) {
            this.principalTags.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GetOpenIdTokenForDeveloperIdentityRequest clearLoginsEntries() {
        this.logins = null;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest clearPrincipalTagsEntries() {
        this.principalTags = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenForDeveloperIdentityRequest)) {
            return false;
        }
        GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest = (GetOpenIdTokenForDeveloperIdentityRequest) obj;
        if ((getOpenIdTokenForDeveloperIdentityRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.getIdentityPoolId() != null && !getOpenIdTokenForDeveloperIdentityRequest.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.getIdentityId() != null && !getOpenIdTokenForDeveloperIdentityRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.getLogins() == null) ^ (getLogins() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.getLogins() != null && !getOpenIdTokenForDeveloperIdentityRequest.getLogins().equals(getLogins())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.getPrincipalTags() == null) ^ (getPrincipalTags() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.getPrincipalTags() != null && !getOpenIdTokenForDeveloperIdentityRequest.getPrincipalTags().equals(getPrincipalTags())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.getTokenDuration() == null) ^ (getTokenDuration() == null)) {
            return false;
        }
        return getOpenIdTokenForDeveloperIdentityRequest.getTokenDuration() == null || getOpenIdTokenForDeveloperIdentityRequest.getTokenDuration().equals(getTokenDuration());
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public Map<String, String> getLogins() {
        return this.logins;
    }

    public Map<String, String> getPrincipalTags() {
        return this.principalTags;
    }

    public Long getTokenDuration() {
        return this.tokenDuration;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        int hashCode2 = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode3 = getLogins() == null ? 0 : getLogins().hashCode();
        int hashCode4 = getPrincipalTags() == null ? 0 : getPrincipalTags().hashCode();
        if (getTokenDuration() != null) {
            i = getTokenDuration().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public void setLogins(Map<String, String> map) {
        this.logins = map;
    }

    public void setPrincipalTags(Map<String, String> map) {
        this.principalTags = map;
    }

    public void setTokenDuration(Long l) {
        this.tokenDuration = l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getLogins() != null) {
            sb.append("Logins: " + getLogins() + ",");
        }
        if (getPrincipalTags() != null) {
            sb.append("PrincipalTags: " + getPrincipalTags() + ",");
        }
        if (getTokenDuration() != null) {
            sb.append("TokenDuration: " + getTokenDuration());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetOpenIdTokenForDeveloperIdentityRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest withLogins(Map<String, String> map) {
        this.logins = map;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest withPrincipalTags(Map<String, String> map) {
        this.principalTags = map;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest withTokenDuration(Long l) {
        this.tokenDuration = l;
        return this;
    }
}
