package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetSessionTokenResult.class */
public class GetSessionTokenResult implements Serializable {
    private Credentials credentials;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetSessionTokenResult)) {
            return false;
        }
        GetSessionTokenResult getSessionTokenResult = (GetSessionTokenResult) obj;
        if ((getSessionTokenResult.getCredentials() == null) ^ (getCredentials() == null)) {
            return false;
        }
        return getSessionTokenResult.getCredentials() == null || getSessionTokenResult.getCredentials().equals(getCredentials());
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public int hashCode() {
        return (getCredentials() == null ? 0 : getCredentials().hashCode()) + 31;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCredentials() != null) {
            sb.append("Credentials: " + getCredentials());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetSessionTokenResult withCredentials(Credentials credentials) {
        this.credentials = credentials;
        return this;
    }
}
