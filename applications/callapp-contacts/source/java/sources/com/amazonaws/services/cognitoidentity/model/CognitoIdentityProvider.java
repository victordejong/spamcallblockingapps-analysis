package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider.class */
public class CognitoIdentityProvider implements Serializable {
    private String clientId;
    private String providerName;
    private Boolean serverSideTokenCheck;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CognitoIdentityProvider)) {
            return false;
        }
        CognitoIdentityProvider cognitoIdentityProvider = (CognitoIdentityProvider) obj;
        if ((cognitoIdentityProvider.getProviderName() == null) ^ (getProviderName() == null)) {
            return false;
        }
        if (cognitoIdentityProvider.getProviderName() != null && !cognitoIdentityProvider.getProviderName().equals(getProviderName())) {
            return false;
        }
        if ((cognitoIdentityProvider.getClientId() == null) ^ (getClientId() == null)) {
            return false;
        }
        if (cognitoIdentityProvider.getClientId() != null && !cognitoIdentityProvider.getClientId().equals(getClientId())) {
            return false;
        }
        if ((cognitoIdentityProvider.getServerSideTokenCheck() == null) ^ (getServerSideTokenCheck() == null)) {
            return false;
        }
        return cognitoIdentityProvider.getServerSideTokenCheck() == null || cognitoIdentityProvider.getServerSideTokenCheck().equals(getServerSideTokenCheck());
    }

    public String getClientId() {
        return this.clientId;
    }

    public String getProviderName() {
        return this.providerName;
    }

    public Boolean getServerSideTokenCheck() {
        return this.serverSideTokenCheck;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getProviderName() == null ? 0 : getProviderName().hashCode();
        int hashCode2 = getClientId() == null ? 0 : getClientId().hashCode();
        if (getServerSideTokenCheck() != null) {
            i = getServerSideTokenCheck().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public Boolean isServerSideTokenCheck() {
        return this.serverSideTokenCheck;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setProviderName(String str) {
        this.providerName = str;
    }

    public void setServerSideTokenCheck(Boolean bool) {
        this.serverSideTokenCheck = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getProviderName() != null) {
            sb.append("ProviderName: " + getProviderName() + ",");
        }
        if (getClientId() != null) {
            sb.append("ClientId: " + getClientId() + ",");
        }
        if (getServerSideTokenCheck() != null) {
            sb.append("ServerSideTokenCheck: " + getServerSideTokenCheck());
        }
        sb.append("}");
        return sb.toString();
    }

    public CognitoIdentityProvider withClientId(String str) {
        this.clientId = str;
        return this;
    }

    public CognitoIdentityProvider withProviderName(String str) {
        this.providerName = str;
        return this;
    }

    public CognitoIdentityProvider withServerSideTokenCheck(Boolean bool) {
        this.serverSideTokenCheck = bool;
        return this;
    }
}
