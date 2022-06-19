package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetAccessKeyInfoResult.class */
public class GetAccessKeyInfoResult implements Serializable {
    private String account;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetAccessKeyInfoResult)) {
            return false;
        }
        GetAccessKeyInfoResult getAccessKeyInfoResult = (GetAccessKeyInfoResult) obj;
        if ((getAccessKeyInfoResult.getAccount() == null) ^ (getAccount() == null)) {
            return false;
        }
        return getAccessKeyInfoResult.getAccount() == null || getAccessKeyInfoResult.getAccount().equals(getAccount());
    }

    public String getAccount() {
        return this.account;
    }

    public int hashCode() {
        return (getAccount() == null ? 0 : getAccount().hashCode()) + 31;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAccount() != null) {
            sb.append("Account: " + getAccount());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetAccessKeyInfoResult withAccount(String str) {
        this.account = str;
        return this;
    }
}
