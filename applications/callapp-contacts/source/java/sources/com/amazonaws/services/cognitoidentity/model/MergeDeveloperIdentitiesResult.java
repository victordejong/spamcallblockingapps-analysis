package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult.class */
public class MergeDeveloperIdentitiesResult implements Serializable {
    private String identityId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MergeDeveloperIdentitiesResult)) {
            return false;
        }
        MergeDeveloperIdentitiesResult mergeDeveloperIdentitiesResult = (MergeDeveloperIdentitiesResult) obj;
        if ((mergeDeveloperIdentitiesResult.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        return mergeDeveloperIdentitiesResult.getIdentityId() == null || mergeDeveloperIdentitiesResult.getIdentityId().equals(getIdentityId());
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public int hashCode() {
        return (getIdentityId() == null ? 0 : getIdentityId().hashCode()) + 31;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId());
        }
        sb.append("}");
        return sb.toString();
    }

    public MergeDeveloperIdentitiesResult withIdentityId(String str) {
        this.identityId = str;
        return this;
    }
}
