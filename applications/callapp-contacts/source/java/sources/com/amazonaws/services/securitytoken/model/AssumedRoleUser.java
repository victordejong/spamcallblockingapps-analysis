package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/AssumedRoleUser.class */
public class AssumedRoleUser implements Serializable {
    private String arn;
    private String assumedRoleId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumedRoleUser)) {
            return false;
        }
        AssumedRoleUser assumedRoleUser = (AssumedRoleUser) obj;
        if ((assumedRoleUser.getAssumedRoleId() == null) ^ (getAssumedRoleId() == null)) {
            return false;
        }
        if (assumedRoleUser.getAssumedRoleId() != null && !assumedRoleUser.getAssumedRoleId().equals(getAssumedRoleId())) {
            return false;
        }
        if ((assumedRoleUser.getArn() == null) ^ (getArn() == null)) {
            return false;
        }
        return assumedRoleUser.getArn() == null || assumedRoleUser.getArn().equals(getArn());
    }

    public String getArn() {
        return this.arn;
    }

    public String getAssumedRoleId() {
        return this.assumedRoleId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getAssumedRoleId() == null ? 0 : getAssumedRoleId().hashCode();
        if (getArn() != null) {
            i = getArn().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setArn(String str) {
        this.arn = str;
    }

    public void setAssumedRoleId(String str) {
        this.assumedRoleId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAssumedRoleId() != null) {
            sb.append("AssumedRoleId: " + getAssumedRoleId() + ",");
        }
        if (getArn() != null) {
            sb.append("Arn: " + getArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public AssumedRoleUser withArn(String str) {
        this.arn = str;
        return this;
    }

    public AssumedRoleUser withAssumedRoleId(String str) {
        this.assumedRoleId = str;
        return this;
    }
}
