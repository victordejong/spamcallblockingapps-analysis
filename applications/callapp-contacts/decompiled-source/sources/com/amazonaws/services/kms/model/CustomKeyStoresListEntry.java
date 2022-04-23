package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CustomKeyStoresListEntry.class */
public class CustomKeyStoresListEntry implements Serializable {
    private String cloudHsmClusterId;
    private String connectionErrorCode;
    private String connectionState;
    private Date creationDate;
    private String customKeyStoreId;
    private String customKeyStoreName;
    private String trustAnchorCertificate;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CustomKeyStoresListEntry)) {
            return false;
        }
        CustomKeyStoresListEntry customKeyStoresListEntry = (CustomKeyStoresListEntry) obj;
        if ((customKeyStoresListEntry.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getCustomKeyStoreId() != null && !customKeyStoresListEntry.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((customKeyStoresListEntry.getCustomKeyStoreName() == null) ^ (getCustomKeyStoreName() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getCustomKeyStoreName() != null && !customKeyStoresListEntry.getCustomKeyStoreName().equals(getCustomKeyStoreName())) {
            return false;
        }
        if ((customKeyStoresListEntry.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getCloudHsmClusterId() != null && !customKeyStoresListEntry.getCloudHsmClusterId().equals(getCloudHsmClusterId())) {
            return false;
        }
        if ((customKeyStoresListEntry.getTrustAnchorCertificate() == null) ^ (getTrustAnchorCertificate() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getTrustAnchorCertificate() != null && !customKeyStoresListEntry.getTrustAnchorCertificate().equals(getTrustAnchorCertificate())) {
            return false;
        }
        if ((customKeyStoresListEntry.getConnectionState() == null) ^ (getConnectionState() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getConnectionState() != null && !customKeyStoresListEntry.getConnectionState().equals(getConnectionState())) {
            return false;
        }
        if ((customKeyStoresListEntry.getConnectionErrorCode() == null) ^ (getConnectionErrorCode() == null)) {
            return false;
        }
        if (customKeyStoresListEntry.getConnectionErrorCode() != null && !customKeyStoresListEntry.getConnectionErrorCode().equals(getConnectionErrorCode())) {
            return false;
        }
        if ((customKeyStoresListEntry.getCreationDate() == null) ^ (getCreationDate() == null)) {
            return false;
        }
        return customKeyStoresListEntry.getCreationDate() == null || customKeyStoresListEntry.getCreationDate().equals(getCreationDate());
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public String getConnectionErrorCode() {
        return this.connectionErrorCode;
    }

    public String getConnectionState() {
        return this.connectionState;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getCustomKeyStoreName() {
        return this.customKeyStoreName;
    }

    public String getTrustAnchorCertificate() {
        return this.trustAnchorCertificate;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode();
        int hashCode2 = getCustomKeyStoreName() == null ? 0 : getCustomKeyStoreName().hashCode();
        int hashCode3 = getCloudHsmClusterId() == null ? 0 : getCloudHsmClusterId().hashCode();
        int hashCode4 = getTrustAnchorCertificate() == null ? 0 : getTrustAnchorCertificate().hashCode();
        int hashCode5 = getConnectionState() == null ? 0 : getConnectionState().hashCode();
        int hashCode6 = getConnectionErrorCode() == null ? 0 : getConnectionErrorCode().hashCode();
        if (getCreationDate() != null) {
            i = getCreationDate().hashCode();
        }
        return ((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setConnectionErrorCode(ConnectionErrorCodeType connectionErrorCodeType) {
        this.connectionErrorCode = connectionErrorCodeType.toString();
    }

    public void setConnectionErrorCode(String str) {
        this.connectionErrorCode = str;
    }

    public void setConnectionState(ConnectionStateType connectionStateType) {
        this.connectionState = connectionStateType.toString();
    }

    public void setConnectionState(String str) {
        this.connectionState = str;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public void setCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
    }

    public void setTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getCustomKeyStoreName() != null) {
            sb.append("CustomKeyStoreName: " + getCustomKeyStoreName() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb.append("CloudHsmClusterId: " + getCloudHsmClusterId() + ",");
        }
        if (getTrustAnchorCertificate() != null) {
            sb.append("TrustAnchorCertificate: " + getTrustAnchorCertificate() + ",");
        }
        if (getConnectionState() != null) {
            sb.append("ConnectionState: " + getConnectionState() + ",");
        }
        if (getConnectionErrorCode() != null) {
            sb.append("ConnectionErrorCode: " + getConnectionErrorCode() + ",");
        }
        if (getCreationDate() != null) {
            sb.append("CreationDate: " + getCreationDate());
        }
        sb.append("}");
        return sb.toString();
    }

    public CustomKeyStoresListEntry withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public CustomKeyStoresListEntry withConnectionErrorCode(ConnectionErrorCodeType connectionErrorCodeType) {
        this.connectionErrorCode = connectionErrorCodeType.toString();
        return this;
    }

    public CustomKeyStoresListEntry withConnectionErrorCode(String str) {
        this.connectionErrorCode = str;
        return this;
    }

    public CustomKeyStoresListEntry withConnectionState(ConnectionStateType connectionStateType) {
        this.connectionState = connectionStateType.toString();
        return this;
    }

    public CustomKeyStoresListEntry withConnectionState(String str) {
        this.connectionState = str;
        return this;
    }

    public CustomKeyStoresListEntry withCreationDate(Date date) {
        this.creationDate = date;
        return this;
    }

    public CustomKeyStoresListEntry withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public CustomKeyStoresListEntry withCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
        return this;
    }

    public CustomKeyStoresListEntry withTrustAnchorCertificate(String str) {
        this.trustAnchorCertificate = str;
        return this;
    }
}
