package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/IdentityPoolShortDescription.class */
public class IdentityPoolShortDescription implements Serializable {
    private String identityPoolId;
    private String identityPoolName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IdentityPoolShortDescription)) {
            return false;
        }
        IdentityPoolShortDescription identityPoolShortDescription = (IdentityPoolShortDescription) obj;
        if ((identityPoolShortDescription.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (identityPoolShortDescription.getIdentityPoolId() != null && !identityPoolShortDescription.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((identityPoolShortDescription.getIdentityPoolName() == null) ^ (getIdentityPoolName() == null)) {
            return false;
        }
        return identityPoolShortDescription.getIdentityPoolName() == null || identityPoolShortDescription.getIdentityPoolName().equals(getIdentityPoolName());
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public String getIdentityPoolName() {
        return this.identityPoolName;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        if (getIdentityPoolName() != null) {
            i = getIdentityPoolName().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public void setIdentityPoolName(String str) {
        this.identityPoolName = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getIdentityPoolName() != null) {
            sb.append("IdentityPoolName: " + getIdentityPoolName());
        }
        sb.append("}");
        return sb.toString();
    }

    public IdentityPoolShortDescription withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public IdentityPoolShortDescription withIdentityPoolName(String str) {
        this.identityPoolName = str;
        return this;
    }
}
