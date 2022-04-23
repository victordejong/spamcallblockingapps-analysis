package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult.class */
public class GetCredentialsForIdentityResult implements Serializable {
    private Credentials credentials;
    private String identityId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityResult)) {
            return false;
        }
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) obj;
        if ((getCredentialsForIdentityResult.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (getCredentialsForIdentityResult.getIdentityId() != null && !getCredentialsForIdentityResult.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((getCredentialsForIdentityResult.getCredentials() == null) ^ (getCredentials() == null)) {
            return false;
        }
        return getCredentialsForIdentityResult.getCredentials() == null || getCredentialsForIdentityResult.getCredentials().equals(getCredentials());
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        if (getCredentials() != null) {
            i = getCredentials().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getCredentials() != null) {
            sb.append("Credentials: " + getCredentials());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetCredentialsForIdentityResult withCredentials(Credentials credentials) {
        this.credentials = credentials;
        return this;
    }

    public GetCredentialsForIdentityResult withIdentityId(String str) {
        this.identityId = str;
        return this;
    }
}
