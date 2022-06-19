package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateCustomKeyStoreRequest.class */
public class CreateCustomKeyStoreRequest extends AmazonWebServiceRequest implements Serializable {
    private String cloudHsmClusterId;
    private String customKeyStoreName;
    private String keyStorePassword;
    private String trustAnchorCertificate;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateCustomKeyStoreRequest)) {
            return false;
        }
        CreateCustomKeyStoreRequest createCustomKeyStoreRequest = (CreateCustomKeyStoreRequest) obj;
        if ((createCustomKeyStoreRequest.getCustomKeyStoreName() == null) ^ (getCustomKeyStoreName() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getCustomKeyStoreName() != null && !createCustomKeyStoreRequest.getCustomKeyStoreName().equals(getCustomKeyStoreName())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getCloudHsmClusterId() != null && !createCustomKeyStoreRequest.getCloudHsmClusterId().equals(getCloudHsmClusterId())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getTrustAnchorCertificate() == null) ^ (getTrustAnchorCertificate() == null)) {
            return false;
        }
        if (createCustomKeyStoreRequest.getTrustAnchorCertificate() != null && !createCustomKeyStoreRequest.getTrustAnchorCertificate().equals(getTrustAnchorCertificate())) {
            return false;
        }
        if ((createCustomKeyStoreRequest.getKeyStorePassword() == null) ^ (getKeyStorePassword() == null)) {
            return false;
        }
        return createCustomKeyStoreRequest.getKeyStorePassword() == null || createCustomKeyStoreRequest.getKeyStorePassword().equals(getKeyStorePassword());
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public String getCustomKeyStoreName() {
        return this.customKeyStoreName;
    }

    public String getKeyStorePassword() {
        return this.keyStorePassword;
    }

    public String getTrustAnchorCertificate() {
        return this.trustAnchorCertificate;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCustomKeyStoreName() == null ? 0 : getCustomKeyStoreName().hashCode();
        int hashCode2 = getCloudHsmClusterId() == null ? 0 : getCloudHsmClusterId().hashCode();
        int hashCode3 = getTrustAnchorCertificate() == null ? 0 : getTrustAnchorCertificate().hashCode();
        if (getKeyStorePassword() != null) {
            i = getKeyStorePassword().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
    }

    public void setKeyStorePassword(String str) {
        this.keyStorePassword = str;
    }

    public void setTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCustomKeyStoreName() != null) {
            sb.append("CustomKeyStoreName: " + getCustomKeyStoreName() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb.append("CloudHsmClusterId: " + getCloudHsmClusterId() + ",");
        }
        if (getTrustAnchorCertificate() != null) {
            sb.append("TrustAnchorCertificate: " + getTrustAnchorCertificate() + ",");
        }
        if (getKeyStorePassword() != null) {
            sb.append("KeyStorePassword: " + getKeyStorePassword());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateCustomKeyStoreRequest withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withKeyStorePassword(String str) {
        this.keyStorePassword = str;
        return this;
    }

    public CreateCustomKeyStoreRequest withTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
        return this;
    }
}
