package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetAccessKeyInfoRequest.class */
public class GetAccessKeyInfoRequest extends AmazonWebServiceRequest implements Serializable {
    private String accessKeyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetAccessKeyInfoRequest)) {
            return false;
        }
        GetAccessKeyInfoRequest getAccessKeyInfoRequest = (GetAccessKeyInfoRequest) obj;
        if ((getAccessKeyInfoRequest.getAccessKeyId() == null) ^ (getAccessKeyId() == null)) {
            return false;
        }
        return getAccessKeyInfoRequest.getAccessKeyId() == null || getAccessKeyInfoRequest.getAccessKeyId().equals(getAccessKeyId());
    }

    public String getAccessKeyId() {
        return this.accessKeyId;
    }

    public int hashCode() {
        return (getAccessKeyId() == null ? 0 : getAccessKeyId().hashCode()) + 31;
    }

    public void setAccessKeyId(String str) {
        this.accessKeyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAccessKeyId() != null) {
            sb.append("AccessKeyId: " + getAccessKeyId());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetAccessKeyInfoRequest withAccessKeyId(String str) {
        this.accessKeyId = str;
        return this;
    }
}
