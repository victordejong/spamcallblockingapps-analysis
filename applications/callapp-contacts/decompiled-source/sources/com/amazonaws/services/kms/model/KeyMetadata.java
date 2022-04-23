package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/KeyMetadata.class */
public class KeyMetadata implements Serializable {
    private String aWSAccountId;
    private String arn;
    private String cloudHsmClusterId;
    private Date creationDate;
    private String customKeyStoreId;
    private String customerMasterKeySpec;
    private Date deletionDate;
    private String description;
    private Boolean enabled;
    private String expirationModel;
    private String keyId;
    private String keyManager;
    private String keyState;
    private String keyUsage;
    private String origin;
    private Date validTo;
    private List<String> encryptionAlgorithms = new ArrayList();
    private List<String> signingAlgorithms = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof KeyMetadata)) {
            return false;
        }
        KeyMetadata keyMetadata = (KeyMetadata) obj;
        if ((keyMetadata.getAWSAccountId() == null) ^ (getAWSAccountId() == null)) {
            return false;
        }
        if (keyMetadata.getAWSAccountId() != null && !keyMetadata.getAWSAccountId().equals(getAWSAccountId())) {
            return false;
        }
        if ((keyMetadata.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (keyMetadata.getKeyId() != null && !keyMetadata.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((keyMetadata.getArn() == null) ^ (getArn() == null)) {
            return false;
        }
        if (keyMetadata.getArn() != null && !keyMetadata.getArn().equals(getArn())) {
            return false;
        }
        if ((keyMetadata.getCreationDate() == null) ^ (getCreationDate() == null)) {
            return false;
        }
        if (keyMetadata.getCreationDate() != null && !keyMetadata.getCreationDate().equals(getCreationDate())) {
            return false;
        }
        if ((keyMetadata.getEnabled() == null) ^ (getEnabled() == null)) {
            return false;
        }
        if (keyMetadata.getEnabled() != null && !keyMetadata.getEnabled().equals(getEnabled())) {
            return false;
        }
        if ((keyMetadata.getDescription() == null) ^ (getDescription() == null)) {
            return false;
        }
        if (keyMetadata.getDescription() != null && !keyMetadata.getDescription().equals(getDescription())) {
            return false;
        }
        if ((keyMetadata.getKeyUsage() == null) ^ (getKeyUsage() == null)) {
            return false;
        }
        if (keyMetadata.getKeyUsage() != null && !keyMetadata.getKeyUsage().equals(getKeyUsage())) {
            return false;
        }
        if ((keyMetadata.getKeyState() == null) ^ (getKeyState() == null)) {
            return false;
        }
        if (keyMetadata.getKeyState() != null && !keyMetadata.getKeyState().equals(getKeyState())) {
            return false;
        }
        if ((keyMetadata.getDeletionDate() == null) ^ (getDeletionDate() == null)) {
            return false;
        }
        if (keyMetadata.getDeletionDate() != null && !keyMetadata.getDeletionDate().equals(getDeletionDate())) {
            return false;
        }
        if ((keyMetadata.getValidTo() == null) ^ (getValidTo() == null)) {
            return false;
        }
        if (keyMetadata.getValidTo() != null && !keyMetadata.getValidTo().equals(getValidTo())) {
            return false;
        }
        if ((keyMetadata.getOrigin() == null) ^ (getOrigin() == null)) {
            return false;
        }
        if (keyMetadata.getOrigin() != null && !keyMetadata.getOrigin().equals(getOrigin())) {
            return false;
        }
        if ((keyMetadata.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (keyMetadata.getCustomKeyStoreId() != null && !keyMetadata.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((keyMetadata.getCloudHsmClusterId() == null) ^ (getCloudHsmClusterId() == null)) {
            return false;
        }
        if (keyMetadata.getCloudHsmClusterId() != null && !keyMetadata.getCloudHsmClusterId().equals(getCloudHsmClusterId())) {
            return false;
        }
        if ((keyMetadata.getExpirationModel() == null) ^ (getExpirationModel() == null)) {
            return false;
        }
        if (keyMetadata.getExpirationModel() != null && !keyMetadata.getExpirationModel().equals(getExpirationModel())) {
            return false;
        }
        if ((keyMetadata.getKeyManager() == null) ^ (getKeyManager() == null)) {
            return false;
        }
        if (keyMetadata.getKeyManager() != null && !keyMetadata.getKeyManager().equals(getKeyManager())) {
            return false;
        }
        if ((keyMetadata.getCustomerMasterKeySpec() == null) ^ (getCustomerMasterKeySpec() == null)) {
            return false;
        }
        if (keyMetadata.getCustomerMasterKeySpec() != null && !keyMetadata.getCustomerMasterKeySpec().equals(getCustomerMasterKeySpec())) {
            return false;
        }
        if ((keyMetadata.getEncryptionAlgorithms() == null) ^ (getEncryptionAlgorithms() == null)) {
            return false;
        }
        if (keyMetadata.getEncryptionAlgorithms() != null && !keyMetadata.getEncryptionAlgorithms().equals(getEncryptionAlgorithms())) {
            return false;
        }
        if ((keyMetadata.getSigningAlgorithms() == null) ^ (getSigningAlgorithms() == null)) {
            return false;
        }
        return keyMetadata.getSigningAlgorithms() == null || keyMetadata.getSigningAlgorithms().equals(getSigningAlgorithms());
    }

    public String getAWSAccountId() {
        return this.aWSAccountId;
    }

    public String getArn() {
        return this.arn;
    }

    public String getCloudHsmClusterId() {
        return this.cloudHsmClusterId;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getCustomerMasterKeySpec() {
        return this.customerMasterKeySpec;
    }

    public Date getDeletionDate() {
        return this.deletionDate;
    }

    public String getDescription() {
        return this.description;
    }

    public Boolean getEnabled() {
        return this.enabled;
    }

    public List<String> getEncryptionAlgorithms() {
        return this.encryptionAlgorithms;
    }

    public String getExpirationModel() {
        return this.expirationModel;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getKeyManager() {
        return this.keyManager;
    }

    public String getKeyState() {
        return this.keyState;
    }

    public String getKeyUsage() {
        return this.keyUsage;
    }

    public String getOrigin() {
        return this.origin;
    }

    public List<String> getSigningAlgorithms() {
        return this.signingAlgorithms;
    }

    public Date getValidTo() {
        return this.validTo;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getAWSAccountId() == null ? 0 : getAWSAccountId().hashCode();
        int hashCode2 = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode3 = getArn() == null ? 0 : getArn().hashCode();
        int hashCode4 = getCreationDate() == null ? 0 : getCreationDate().hashCode();
        int hashCode5 = getEnabled() == null ? 0 : getEnabled().hashCode();
        int hashCode6 = getDescription() == null ? 0 : getDescription().hashCode();
        int hashCode7 = getKeyUsage() == null ? 0 : getKeyUsage().hashCode();
        int hashCode8 = getKeyState() == null ? 0 : getKeyState().hashCode();
        int hashCode9 = getDeletionDate() == null ? 0 : getDeletionDate().hashCode();
        int hashCode10 = getValidTo() == null ? 0 : getValidTo().hashCode();
        int hashCode11 = getOrigin() == null ? 0 : getOrigin().hashCode();
        int hashCode12 = getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode();
        int hashCode13 = getCloudHsmClusterId() == null ? 0 : getCloudHsmClusterId().hashCode();
        int hashCode14 = getExpirationModel() == null ? 0 : getExpirationModel().hashCode();
        int hashCode15 = getKeyManager() == null ? 0 : getKeyManager().hashCode();
        int hashCode16 = getCustomerMasterKeySpec() == null ? 0 : getCustomerMasterKeySpec().hashCode();
        int hashCode17 = getEncryptionAlgorithms() == null ? 0 : getEncryptionAlgorithms().hashCode();
        if (getSigningAlgorithms() != null) {
            i = getSigningAlgorithms().hashCode();
        }
        return ((((((((((((((((((((((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + i;
    }

    public Boolean isEnabled() {
        return this.enabled;
    }

    public void setAWSAccountId(String str) {
        this.aWSAccountId = str;
    }

    public void setArn(String str) {
        this.arn = str;
    }

    public void setCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public void setCustomerMasterKeySpec(CustomerMasterKeySpec customerMasterKeySpec) {
        this.customerMasterKeySpec = customerMasterKeySpec.toString();
    }

    public void setCustomerMasterKeySpec(String str) {
        this.customerMasterKeySpec = str;
    }

    public void setDeletionDate(Date date) {
        this.deletionDate = date;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEnabled(Boolean bool) {
        this.enabled = bool;
    }

    public void setEncryptionAlgorithms(Collection<String> collection) {
        if (collection == null) {
            this.encryptionAlgorithms = null;
        } else {
            this.encryptionAlgorithms = new ArrayList(collection);
        }
    }

    public void setExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
    }

    public void setExpirationModel(String str) {
        this.expirationModel = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setKeyManager(KeyManagerType keyManagerType) {
        this.keyManager = keyManagerType.toString();
    }

    public void setKeyManager(String str) {
        this.keyManager = str;
    }

    public void setKeyState(KeyState keyState) {
        this.keyState = keyState.toString();
    }

    public void setKeyState(String str) {
        this.keyState = str;
    }

    public void setKeyUsage(KeyUsageType keyUsageType) {
        this.keyUsage = keyUsageType.toString();
    }

    public void setKeyUsage(String str) {
        this.keyUsage = str;
    }

    public void setOrigin(OriginType originType) {
        this.origin = originType.toString();
    }

    public void setOrigin(String str) {
        this.origin = str;
    }

    public void setSigningAlgorithms(Collection<String> collection) {
        if (collection == null) {
            this.signingAlgorithms = null;
        } else {
            this.signingAlgorithms = new ArrayList(collection);
        }
    }

    public void setValidTo(Date date) {
        this.validTo = date;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAWSAccountId() != null) {
            sb.append("AWSAccountId: " + getAWSAccountId() + ",");
        }
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getArn() != null) {
            sb.append("Arn: " + getArn() + ",");
        }
        if (getCreationDate() != null) {
            sb.append("CreationDate: " + getCreationDate() + ",");
        }
        if (getEnabled() != null) {
            sb.append("Enabled: " + getEnabled() + ",");
        }
        if (getDescription() != null) {
            sb.append("Description: " + getDescription() + ",");
        }
        if (getKeyUsage() != null) {
            sb.append("KeyUsage: " + getKeyUsage() + ",");
        }
        if (getKeyState() != null) {
            sb.append("KeyState: " + getKeyState() + ",");
        }
        if (getDeletionDate() != null) {
            sb.append("DeletionDate: " + getDeletionDate() + ",");
        }
        if (getValidTo() != null) {
            sb.append("ValidTo: " + getValidTo() + ",");
        }
        if (getOrigin() != null) {
            sb.append("Origin: " + getOrigin() + ",");
        }
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getCloudHsmClusterId() != null) {
            sb.append("CloudHsmClusterId: " + getCloudHsmClusterId() + ",");
        }
        if (getExpirationModel() != null) {
            sb.append("ExpirationModel: " + getExpirationModel() + ",");
        }
        if (getKeyManager() != null) {
            sb.append("KeyManager: " + getKeyManager() + ",");
        }
        if (getCustomerMasterKeySpec() != null) {
            sb.append("CustomerMasterKeySpec: " + getCustomerMasterKeySpec() + ",");
        }
        if (getEncryptionAlgorithms() != null) {
            sb.append("EncryptionAlgorithms: " + getEncryptionAlgorithms() + ",");
        }
        if (getSigningAlgorithms() != null) {
            sb.append("SigningAlgorithms: " + getSigningAlgorithms());
        }
        sb.append("}");
        return sb.toString();
    }

    public KeyMetadata withAWSAccountId(String str) {
        this.aWSAccountId = str;
        return this;
    }

    public KeyMetadata withArn(String str) {
        this.arn = str;
        return this;
    }

    public KeyMetadata withCloudHsmClusterId(String str) {
        this.cloudHsmClusterId = str;
        return this;
    }

    public KeyMetadata withCreationDate(Date date) {
        this.creationDate = date;
        return this;
    }

    public KeyMetadata withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public KeyMetadata withCustomerMasterKeySpec(CustomerMasterKeySpec customerMasterKeySpec) {
        this.customerMasterKeySpec = customerMasterKeySpec.toString();
        return this;
    }

    public KeyMetadata withCustomerMasterKeySpec(String str) {
        this.customerMasterKeySpec = str;
        return this;
    }

    public KeyMetadata withDeletionDate(Date date) {
        this.deletionDate = date;
        return this;
    }

    public KeyMetadata withDescription(String str) {
        this.description = str;
        return this;
    }

    public KeyMetadata withEnabled(Boolean bool) {
        this.enabled = bool;
        return this;
    }

    public KeyMetadata withEncryptionAlgorithms(Collection<String> collection) {
        setEncryptionAlgorithms(collection);
        return this;
    }

    public KeyMetadata withEncryptionAlgorithms(String... strArr) {
        if (getEncryptionAlgorithms() == null) {
            this.encryptionAlgorithms = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.encryptionAlgorithms.add(str);
        }
        return this;
    }

    public KeyMetadata withExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
        return this;
    }

    public KeyMetadata withExpirationModel(String str) {
        this.expirationModel = str;
        return this;
    }

    public KeyMetadata withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public KeyMetadata withKeyManager(KeyManagerType keyManagerType) {
        this.keyManager = keyManagerType.toString();
        return this;
    }

    public KeyMetadata withKeyManager(String str) {
        this.keyManager = str;
        return this;
    }

    public KeyMetadata withKeyState(KeyState keyState) {
        this.keyState = keyState.toString();
        return this;
    }

    public KeyMetadata withKeyState(String str) {
        this.keyState = str;
        return this;
    }

    public KeyMetadata withKeyUsage(KeyUsageType keyUsageType) {
        this.keyUsage = keyUsageType.toString();
        return this;
    }

    public KeyMetadata withKeyUsage(String str) {
        this.keyUsage = str;
        return this;
    }

    public KeyMetadata withOrigin(OriginType originType) {
        this.origin = originType.toString();
        return this;
    }

    public KeyMetadata withOrigin(String str) {
        this.origin = str;
        return this;
    }

    public KeyMetadata withSigningAlgorithms(Collection<String> collection) {
        setSigningAlgorithms(collection);
        return this;
    }

    public KeyMetadata withSigningAlgorithms(String... strArr) {
        if (getSigningAlgorithms() == null) {
            this.signingAlgorithms = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.signingAlgorithms.add(str);
        }
        return this;
    }

    public KeyMetadata withValidTo(Date date) {
        this.validTo = date;
        return this;
    }
}
