package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/UnprocessedIdentityId.class */
public class UnprocessedIdentityId implements Serializable {
    private String errorCode;
    private String identityId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnprocessedIdentityId)) {
            return false;
        }
        UnprocessedIdentityId unprocessedIdentityId = (UnprocessedIdentityId) obj;
        if ((unprocessedIdentityId.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (unprocessedIdentityId.getIdentityId() != null && !unprocessedIdentityId.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((unprocessedIdentityId.getErrorCode() == null) ^ (getErrorCode() == null)) {
            return false;
        }
        return unprocessedIdentityId.getErrorCode() == null || unprocessedIdentityId.getErrorCode().equals(getErrorCode());
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        if (getErrorCode() != null) {
            i = getErrorCode().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode.toString();
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
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
        if (getErrorCode() != null) {
            sb.append("ErrorCode: " + getErrorCode());
        }
        sb.append("}");
        return sb.toString();
    }

    public UnprocessedIdentityId withErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode.toString();
        return this;
    }

    public UnprocessedIdentityId withErrorCode(String str) {
        this.errorCode = str;
        return this;
    }

    public UnprocessedIdentityId withIdentityId(String str) {
        this.identityId = str;
        return this;
    }
}
