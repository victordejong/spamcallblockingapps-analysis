package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/DisableKeyRotationRequest.class */
public class DisableKeyRotationRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DisableKeyRotationRequest)) {
            return false;
        }
        DisableKeyRotationRequest disableKeyRotationRequest = (DisableKeyRotationRequest) obj;
        if ((disableKeyRotationRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        return disableKeyRotationRequest.getKeyId() == null || disableKeyRotationRequest.getKeyId().equals(getKeyId());
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

    public DisableKeyRotationRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
