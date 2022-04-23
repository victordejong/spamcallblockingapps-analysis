package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateKeyRequest.class */
public class CreateKeyRequest extends AmazonWebServiceRequest implements Serializable {
    private Boolean bypassPolicyLockoutSafetyCheck;
    private String customKeyStoreId;
    private String customerMasterKeySpec;
    private String description;
    private String keyUsage;
    private String origin;
    private String policy;
    private List<Tag> tags = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateKeyRequest)) {
            return false;
        }
        CreateKeyRequest createKeyRequest = (CreateKeyRequest) obj;
        if ((createKeyRequest.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        if (createKeyRequest.getPolicy() != null && !createKeyRequest.getPolicy().equals(getPolicy())) {
            return false;
        }
        if ((createKeyRequest.getDescription() == null) ^ (getDescription() == null)) {
            return false;
        }
        if (createKeyRequest.getDescription() != null && !createKeyRequest.getDescription().equals(getDescription())) {
            return false;
        }
        if ((createKeyRequest.getKeyUsage() == null) ^ (getKeyUsage() == null)) {
            return false;
        }
        if (createKeyRequest.getKeyUsage() != null && !createKeyRequest.getKeyUsage().equals(getKeyUsage())) {
            return false;
        }
        if ((createKeyRequest.getCustomerMasterKeySpec() == null) ^ (getCustomerMasterKeySpec() == null)) {
            return false;
        }
        if (createKeyRequest.getCustomerMasterKeySpec() != null && !createKeyRequest.getCustomerMasterKeySpec().equals(getCustomerMasterKeySpec())) {
            return false;
        }
        if ((createKeyRequest.getOrigin() == null) ^ (getOrigin() == null)) {
            return false;
        }
        if (createKeyRequest.getOrigin() != null && !createKeyRequest.getOrigin().equals(getOrigin())) {
            return false;
        }
        if ((createKeyRequest.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (createKeyRequest.getCustomKeyStoreId() != null && !createKeyRequest.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((createKeyRequest.getBypassPolicyLockoutSafetyCheck() == null) ^ (getBypassPolicyLockoutSafetyCheck() == null)) {
            return false;
        }
        if (createKeyRequest.getBypassPolicyLockoutSafetyCheck() != null && !createKeyRequest.getBypassPolicyLockoutSafetyCheck().equals(getBypassPolicyLockoutSafetyCheck())) {
            return false;
        }
        if ((createKeyRequest.getTags() == null) ^ (getTags() == null)) {
            return false;
        }
        return createKeyRequest.getTags() == null || createKeyRequest.getTags().equals(getTags());
    }

    public Boolean getBypassPolicyLockoutSafetyCheck() {
        return this.bypassPolicyLockoutSafetyCheck;
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getCustomerMasterKeySpec() {
        return this.customerMasterKeySpec;
    }

    public String getDescription() {
        return this.description;
    }

    public String getKeyUsage() {
        return this.keyUsage;
    }

    public String getOrigin() {
        return this.origin;
    }

    public String getPolicy() {
        return this.policy;
    }

    public List<Tag> getTags() {
        return this.tags;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getPolicy() == null ? 0 : getPolicy().hashCode();
        int hashCode2 = getDescription() == null ? 0 : getDescription().hashCode();
        int hashCode3 = getKeyUsage() == null ? 0 : getKeyUsage().hashCode();
        int hashCode4 = getCustomerMasterKeySpec() == null ? 0 : getCustomerMasterKeySpec().hashCode();
        int hashCode5 = getOrigin() == null ? 0 : getOrigin().hashCode();
        int hashCode6 = getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode();
        int hashCode7 = getBypassPolicyLockoutSafetyCheck() == null ? 0 : getBypassPolicyLockoutSafetyCheck().hashCode();
        if (getTags() != null) {
            i = getTags().hashCode();
        }
        return ((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public Boolean isBypassPolicyLockoutSafetyCheck() {
        return this.bypassPolicyLockoutSafetyCheck;
    }

    public void setBypassPolicyLockoutSafetyCheck(Boolean bool) {
        this.bypassPolicyLockoutSafetyCheck = bool;
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

    public void setDescription(String str) {
        this.description = str;
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

    public void setPolicy(String str) {
        this.policy = str;
    }

    public void setTags(Collection<Tag> collection) {
        if (collection == null) {
            this.tags = null;
        } else {
            this.tags = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getPolicy() != null) {
            sb.append("Policy: " + getPolicy() + ",");
        }
        if (getDescription() != null) {
            sb.append("Description: " + getDescription() + ",");
        }
        if (getKeyUsage() != null) {
            sb.append("KeyUsage: " + getKeyUsage() + ",");
        }
        if (getCustomerMasterKeySpec() != null) {
            sb.append("CustomerMasterKeySpec: " + getCustomerMasterKeySpec() + ",");
        }
        if (getOrigin() != null) {
            sb.append("Origin: " + getOrigin() + ",");
        }
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getBypassPolicyLockoutSafetyCheck() != null) {
            sb.append("BypassPolicyLockoutSafetyCheck: " + getBypassPolicyLockoutSafetyCheck() + ",");
        }
        if (getTags() != null) {
            sb.append("Tags: " + getTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateKeyRequest withBypassPolicyLockoutSafetyCheck(Boolean bool) {
        this.bypassPolicyLockoutSafetyCheck = bool;
        return this;
    }

    public CreateKeyRequest withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public CreateKeyRequest withCustomerMasterKeySpec(CustomerMasterKeySpec customerMasterKeySpec) {
        this.customerMasterKeySpec = customerMasterKeySpec.toString();
        return this;
    }

    public CreateKeyRequest withCustomerMasterKeySpec(String str) {
        this.customerMasterKeySpec = str;
        return this;
    }

    public CreateKeyRequest withDescription(String str) {
        this.description = str;
        return this;
    }

    public CreateKeyRequest withKeyUsage(KeyUsageType keyUsageType) {
        this.keyUsage = keyUsageType.toString();
        return this;
    }

    public CreateKeyRequest withKeyUsage(String str) {
        this.keyUsage = str;
        return this;
    }

    public CreateKeyRequest withOrigin(OriginType originType) {
        this.origin = originType.toString();
        return this;
    }

    public CreateKeyRequest withOrigin(String str) {
        this.origin = str;
        return this;
    }

    public CreateKeyRequest withPolicy(String str) {
        this.policy = str;
        return this;
    }

    public CreateKeyRequest withTags(Collection<Tag> collection) {
        setTags(collection);
        return this;
    }

    public CreateKeyRequest withTags(Tag... tagArr) {
        if (getTags() == null) {
            this.tags = new ArrayList(tagArr.length);
        }
        for (Tag tag : tagArr) {
            this.tags.add(tag);
        }
        return this;
    }
}
