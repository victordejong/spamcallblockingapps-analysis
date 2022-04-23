package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/FederatedUser.class */
public class FederatedUser implements Serializable {
    private String arn;
    private String federatedUserId;

    public FederatedUser() {
    }

    public FederatedUser(String str, String str2) {
        setFederatedUserId(str);
        setArn(str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof FederatedUser)) {
            return false;
        }
        FederatedUser federatedUser = (FederatedUser) obj;
        if ((federatedUser.getFederatedUserId() == null) ^ (getFederatedUserId() == null)) {
            return false;
        }
        if (federatedUser.getFederatedUserId() != null && !federatedUser.getFederatedUserId().equals(getFederatedUserId())) {
            return false;
        }
        if ((federatedUser.getArn() == null) ^ (getArn() == null)) {
            return false;
        }
        return federatedUser.getArn() == null || federatedUser.getArn().equals(getArn());
    }

    public String getArn() {
        return this.arn;
    }

    public String getFederatedUserId() {
        return this.federatedUserId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getFederatedUserId() == null ? 0 : getFederatedUserId().hashCode();
        if (getArn() != null) {
            i = getArn().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setArn(String str) {
        this.arn = str;
    }

    public void setFederatedUserId(String str) {
        this.federatedUserId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getFederatedUserId() != null) {
            sb.append("FederatedUserId: " + getFederatedUserId() + ",");
        }
        if (getArn() != null) {
            sb.append("Arn: " + getArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public FederatedUser withArn(String str) {
        this.arn = str;
        return this;
    }

    public FederatedUser withFederatedUserId(String str) {
        this.federatedUserId = str;
        return this;
    }
}
