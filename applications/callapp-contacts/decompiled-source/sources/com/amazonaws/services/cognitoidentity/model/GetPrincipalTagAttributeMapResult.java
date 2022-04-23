package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult.class */
public class GetPrincipalTagAttributeMapResult implements Serializable {
    private String identityPoolId;
    private String identityProviderName;
    private Map<String, String> principalTags;
    private Boolean useDefaults;

    public GetPrincipalTagAttributeMapResult addPrincipalTagsEntry(String str, String str2) {
        if (this.principalTags == null) {
            this.principalTags = new HashMap();
        }
        if (!this.principalTags.containsKey(str)) {
            this.principalTags.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public GetPrincipalTagAttributeMapResult clearPrincipalTagsEntries() {
        this.principalTags = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetPrincipalTagAttributeMapResult)) {
            return false;
        }
        GetPrincipalTagAttributeMapResult getPrincipalTagAttributeMapResult = (GetPrincipalTagAttributeMapResult) obj;
        if ((getPrincipalTagAttributeMapResult.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (getPrincipalTagAttributeMapResult.getIdentityPoolId() != null && !getPrincipalTagAttributeMapResult.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((getPrincipalTagAttributeMapResult.getIdentityProviderName() == null) ^ (getIdentityProviderName() == null)) {
            return false;
        }
        if (getPrincipalTagAttributeMapResult.getIdentityProviderName() != null && !getPrincipalTagAttributeMapResult.getIdentityProviderName().equals(getIdentityProviderName())) {
            return false;
        }
        if ((getPrincipalTagAttributeMapResult.getUseDefaults() == null) ^ (getUseDefaults() == null)) {
            return false;
        }
        if (getPrincipalTagAttributeMapResult.getUseDefaults() != null && !getPrincipalTagAttributeMapResult.getUseDefaults().equals(getUseDefaults())) {
            return false;
        }
        if ((getPrincipalTagAttributeMapResult.getPrincipalTags() == null) ^ (getPrincipalTags() == null)) {
            return false;
        }
        return getPrincipalTagAttributeMapResult.getPrincipalTags() == null || getPrincipalTagAttributeMapResult.getPrincipalTags().equals(getPrincipalTags());
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public String getIdentityProviderName() {
        return this.identityProviderName;
    }

    public Map<String, String> getPrincipalTags() {
        return this.principalTags;
    }

    public Boolean getUseDefaults() {
        return this.useDefaults;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        int hashCode2 = getIdentityProviderName() == null ? 0 : getIdentityProviderName().hashCode();
        int hashCode3 = getUseDefaults() == null ? 0 : getUseDefaults().hashCode();
        if (getPrincipalTags() != null) {
            i = getPrincipalTags().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public Boolean isUseDefaults() {
        return this.useDefaults;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public void setIdentityProviderName(String str) {
        this.identityProviderName = str;
    }

    public void setPrincipalTags(Map<String, String> map) {
        this.principalTags = map;
    }

    public void setUseDefaults(Boolean bool) {
        this.useDefaults = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getIdentityProviderName() != null) {
            sb.append("IdentityProviderName: " + getIdentityProviderName() + ",");
        }
        if (getUseDefaults() != null) {
            sb.append("UseDefaults: " + getUseDefaults() + ",");
        }
        if (getPrincipalTags() != null) {
            sb.append("PrincipalTags: " + getPrincipalTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetPrincipalTagAttributeMapResult withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public GetPrincipalTagAttributeMapResult withIdentityProviderName(String str) {
        this.identityProviderName = str;
        return this;
    }

    public GetPrincipalTagAttributeMapResult withPrincipalTags(Map<String, String> map) {
        this.principalTags = map;
        return this;
    }

    public GetPrincipalTagAttributeMapResult withUseDefaults(Boolean bool) {
        this.useDefaults = bool;
        return this;
    }
}
