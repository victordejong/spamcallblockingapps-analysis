package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest.class */
public class UpdateCustomKeyStoreRequest extends AmazonWebServiceRequest implements Serializable {
    private String cloudHsmClusterId;
    private String customKeyStoreId;
    private String keyStorePassword;
    private String newCustomKeyStoreName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateCustomKeyStoreRequest)) {
            return false;
        }
        UpdateCustomKeyStoreRequest updateCustomKeyStoreRequest = (UpdateCustomKeyStoreRequest) obj;
        if ((updateCustomKeyStoreRequest.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getCustomKeyStoreId() != null && !updateCustomKeyStoreRequest.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getNewCustomKeyStoreName() == null) ^ (getNewCustomKeyStoreName() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getNewCustomKeyStoreName() != null && !updateCustomKeyStoreRequest.getNewCustomKeyStoreName().equals(getNewCustomKeyStoreName())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getKeyStorePassword() == null) ^ (getKeyStorePassword() == null)) {
            return false;
        }
        if (updateCustomKeyStoreRequest.getKeyStorePassword() != null && !updateCustomKeyStoreRequest.getKeyStorePassword().equals(getKeyStorePassword())) {
            return false;
        }
        if ((updateCustomKeyStoreRequest.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        return updateCustomKeyStoreRequest.getCloudHsmClusterId() == null || updateCustomKeyStoreRequest.getCloudHsmClusterId().equals(getCloudHsmClusterId());
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getKeyStorePassword() {
        return this.keyStorePassword;
    }

    public String getNewCustomKeyStoreName() {
        return this.newCustomKeyStoreName;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode();
        int hashCode2 = getNewCustomKeyStoreName() == null ? 0 : getNewCustomKeyStoreName().hashCode();
        int hashCode3 = getKeyStorePassword() == null ? 0 : getKeyStorePassword().hashCode();
        if (getCloudHsmClusterId() != null) {
            i = getCloudHsmClusterId().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public void setKeyStorePassword(String str) {
        this.keyStorePassword = str;
    }

    public void setNewCustomKeyStoreName(String str) {
        this.newCustomKeyStoreName = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getNewCustomKeyStoreName() != null) {
            sb.append("NewCustomKeyStoreName: " + getNewCustomKeyStoreName() + ",");
        }
        if (getKeyStorePassword() != null) {
            sb.append("KeyStorePassword: " + getKeyStorePassword() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb.append("CloudHsmClusterId: " + getCloudHsmClusterId());
        }
        sb.append("}");
        return sb.toString();
    }

    public UpdateCustomKeyStoreRequest withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withKeyStorePassword(String str) {
        this.keyStorePassword = str;
        return this;
    }

    public UpdateCustomKeyStoreRequest withNewCustomKeyStoreName(String str) {
        this.newCustomKeyStoreName = str;
        return this;
    }
}
