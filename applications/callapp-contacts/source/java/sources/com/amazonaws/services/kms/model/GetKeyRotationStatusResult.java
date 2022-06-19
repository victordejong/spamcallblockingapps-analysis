package com.amazonaws.services.kms.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetKeyRotationStatusResult.class */
public class GetKeyRotationStatusResult implements Serializable {
    private Boolean keyRotationEnabled;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetKeyRotationStatusResult)) {
            return false;
        }
        GetKeyRotationStatusResult getKeyRotationStatusResult = (GetKeyRotationStatusResult) obj;
        if ((getKeyRotationStatusResult.getKeyRotationEnabled() == null) ^ (getKeyRotationEnabled() == null)) {
            return false;
        }
        return getKeyRotationStatusResult.getKeyRotationEnabled() == null || getKeyRotationStatusResult.getKeyRotationEnabled().equals(getKeyRotationEnabled());
    }

    public Boolean getKeyRotationEnabled() {
        return this.keyRotationEnabled;
    }

    public int hashCode() {
        return (getKeyRotationEnabled() == null ? 0 : getKeyRotationEnabled().hashCode()) + 31;
    }

    public Boolean isKeyRotationEnabled() {
        return this.keyRotationEnabled;
    }

    public void setKeyRotationEnabled(Boolean bool) {
        this.keyRotationEnabled = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyRotationEnabled() != null) {
            sb.append("KeyRotationEnabled: " + getKeyRotationEnabled());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetKeyRotationStatusResult withKeyRotationEnabled(Boolean bool) {
        this.keyRotationEnabled = bool;
        return this;
    }
}
