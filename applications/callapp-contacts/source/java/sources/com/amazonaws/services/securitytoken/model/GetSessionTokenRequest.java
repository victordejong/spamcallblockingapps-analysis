package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetSessionTokenRequest.class */
public class GetSessionTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer durationSeconds;
    private String serialNumber;
    private String tokenCode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetSessionTokenRequest)) {
            return false;
        }
        GetSessionTokenRequest getSessionTokenRequest = (GetSessionTokenRequest) obj;
        if ((getSessionTokenRequest.getDurationSeconds() == null) ^ (getDurationSeconds() == null)) {
            return false;
        }
        if (getSessionTokenRequest.getDurationSeconds() != null && !getSessionTokenRequest.getDurationSeconds().equals(getDurationSeconds())) {
            return false;
        }
        if ((getSessionTokenRequest.getSerialNumber() == null) ^ (getSerialNumber() == null)) {
            return false;
        }
        if (getSessionTokenRequest.getSerialNumber() != null && !getSessionTokenRequest.getSerialNumber().equals(getSerialNumber())) {
            return false;
        }
        if ((getSessionTokenRequest.getTokenCode() == null) ^ (getTokenCode() == null)) {
            return false;
        }
        return getSessionTokenRequest.getTokenCode() == null || getSessionTokenRequest.getTokenCode().equals(getTokenCode());
    }

    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public String getTokenCode() {
        return this.tokenCode;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getDurationSeconds() == null ? 0 : getDurationSeconds().hashCode();
        int hashCode2 = getSerialNumber() == null ? 0 : getSerialNumber().hashCode();
        if (getTokenCode() != null) {
            i = getTokenCode().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    public void setTokenCode(String str) {
        this.tokenCode = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getDurationSeconds() != null) {
            sb.append("DurationSeconds: " + getDurationSeconds() + ",");
        }
        if (getSerialNumber() != null) {
            sb.append("SerialNumber: " + getSerialNumber() + ",");
        }
        if (getTokenCode() != null) {
            sb.append("TokenCode: " + getTokenCode());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetSessionTokenRequest withDurationSeconds(Integer num) {
        this.durationSeconds = num;
        return this;
    }

    public GetSessionTokenRequest withSerialNumber(String str) {
        this.serialNumber = str;
        return this;
    }

    public GetSessionTokenRequest withTokenCode(String str) {
        this.tokenCode = str;
        return this;
    }
}
