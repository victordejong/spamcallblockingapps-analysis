package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetCallerIdentityResult.class */
public class GetCallerIdentityResult implements Serializable {
    private String account;
    private String arn;
    private String userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCallerIdentityResult)) {
            return false;
        }
        GetCallerIdentityResult getCallerIdentityResult = (GetCallerIdentityResult) obj;
        if ((getCallerIdentityResult.getUserId() == null) ^ (getUserId() == null)) {
            return false;
        }
        if (getCallerIdentityResult.getUserId() != null && !getCallerIdentityResult.getUserId().equals(getUserId())) {
            return false;
        }
        if ((getCallerIdentityResult.getAccount() == null) ^ (getAccount() == null)) {
            return false;
        }
        if (getCallerIdentityResult.getAccount() != null && !getCallerIdentityResult.getAccount().equals(getAccount())) {
            return false;
        }
        if ((getCallerIdentityResult.getArn() == null) ^ (getArn() == null)) {
            return false;
        }
        return getCallerIdentityResult.getArn() == null || getCallerIdentityResult.getArn().equals(getArn());
    }

    public String getAccount() {
        return this.account;
    }

    public String getArn() {
        return this.arn;
    }

    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getUserId() == null ? 0 : getUserId().hashCode();
        int hashCode2 = getAccount() == null ? 0 : getAccount().hashCode();
        if (getArn() != null) {
            i = getArn().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setArn(String str) {
        this.arn = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getUserId() != null) {
            sb.append("UserId: " + getUserId() + ",");
        }
        if (getAccount() != null) {
            sb.append("Account: " + getAccount() + ",");
        }
        if (getArn() != null) {
            sb.append("Arn: " + getArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetCallerIdentityResult withAccount(String str) {
        this.account = str;
        return this;
    }

    public GetCallerIdentityResult withArn(String str) {
        this.arn = str;
        return this;
    }

    public GetCallerIdentityResult withUserId(String str) {
        this.userId = str;
        return this;
    }
}
