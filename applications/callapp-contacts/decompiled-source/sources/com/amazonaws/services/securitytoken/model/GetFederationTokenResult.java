package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetFederationTokenResult.class */
public class GetFederationTokenResult implements Serializable {
    private Credentials credentials;
    private FederatedUser federatedUser;
    private Integer packedPolicySize;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFederationTokenResult)) {
            return false;
        }
        GetFederationTokenResult getFederationTokenResult = (GetFederationTokenResult) obj;
        if ((getFederationTokenResult.getCredentials() == null) ^ (getCredentials() == null)) {
            return false;
        }
        if (getFederationTokenResult.getCredentials() != null && !getFederationTokenResult.getCredentials().equals(getCredentials())) {
            return false;
        }
        if ((getFederationTokenResult.getFederatedUser() == null) ^ (getFederatedUser() == null)) {
            return false;
        }
        if (getFederationTokenResult.getFederatedUser() != null && !getFederationTokenResult.getFederatedUser().equals(getFederatedUser())) {
            return false;
        }
        if ((getFederationTokenResult.getPackedPolicySize() == null) ^ (getPackedPolicySize() == null)) {
            return false;
        }
        return getFederationTokenResult.getPackedPolicySize() == null || getFederationTokenResult.getPackedPolicySize().equals(getPackedPolicySize());
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public FederatedUser getFederatedUser() {
        return this.federatedUser;
    }

    public Integer getPackedPolicySize() {
        return this.packedPolicySize;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCredentials() == null ? 0 : getCredentials().hashCode();
        int hashCode2 = getFederatedUser() == null ? 0 : getFederatedUser().hashCode();
        if (getPackedPolicySize() != null) {
            i = getPackedPolicySize().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public void setFederatedUser(FederatedUser federatedUser) {
        this.federatedUser = federatedUser;
    }

    public void setPackedPolicySize(Integer num) {
        this.packedPolicySize = num;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCredentials() != null) {
            sb.append("Credentials: " + getCredentials() + ",");
        }
        if (getFederatedUser() != null) {
            sb.append("FederatedUser: " + getFederatedUser() + ",");
        }
        if (getPackedPolicySize() != null) {
            sb.append("PackedPolicySize: " + getPackedPolicySize());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetFederationTokenResult withCredentials(Credentials credentials) {
        this.credentials = credentials;
        return this;
    }

    public GetFederationTokenResult withFederatedUser(FederatedUser federatedUser) {
        this.federatedUser = federatedUser;
        return this;
    }

    public GetFederationTokenResult withPackedPolicySize(Integer num) {
        this.packedPolicySize = num;
        return this;
    }
}
