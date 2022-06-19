package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetKeyRotationStatusRequest.class */
public class GetKeyRotationStatusRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyRotationStatusRequest)) {
            return false;
        }
        GetKeyRotationStatusRequest getKeyRotationStatusRequest = (GetKeyRotationStatusRequest) obj;
        if ((getKeyRotationStatusRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        return getKeyRotationStatusRequest.getKeyId() == null || getKeyRotationStatusRequest.getKeyId().equals(getKeyId());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        return (getKeyId() == null ? 0 : getKeyId().hashCode()) + 31;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetKeyRotationStatusRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
