package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/AssumeRoleRequest.class */
public class AssumeRoleRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer durationSeconds;
    private String externalId;
    private String policy;
    private List<PolicyDescriptorType> policyArns;
    private String roleArn;
    private String roleSessionName;
    private String serialNumber;
    private List<Tag> tags;
    private String tokenCode;
    private List<String> transitiveTagKeys;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleRequest)) {
            return false;
        }
        AssumeRoleRequest assumeRoleRequest = (AssumeRoleRequest) obj;
        if ((assumeRoleRequest.getRoleArn() == null) ^ (getRoleArn() == null)) {
            return false;
        }
        if (assumeRoleRequest.getRoleArn() != null && !assumeRoleRequest.getRoleArn().equals(getRoleArn())) {
            return false;
        }
        if ((assumeRoleRequest.getRoleSessionName() == null) ^ (getRoleSessionName() == null)) {
            return false;
        }
        if (assumeRoleRequest.getRoleSessionName() != null && !assumeRoleRequest.getRoleSessionName().equals(getRoleSessionName())) {
            return false;
        }
        if ((assumeRoleRequest.getPolicyArns() == null) ^ (getPolicyArns() == null)) {
            return false;
        }
        if (assumeRoleRequest.getPolicyArns() != null && !assumeRoleRequest.getPolicyArns().equals(getPolicyArns())) {
            return false;
        }
        if ((assumeRoleRequest.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        if (assumeRoleRequest.getPolicy() != null && !assumeRoleRequest.getPolicy().equals(getPolicy())) {
            return false;
        }
        if ((assumeRoleRequest.getDurationSeconds() == null) ^ (getDurationSeconds() == null)) {
            return false;
        }
        if (assumeRoleRequest.getDurationSeconds() != null && !assumeRoleRequest.getDurationSeconds().equals(getDurationSeconds())) {
            return false;
        }
        if ((assumeRoleRequest.getTags() == null) ^ (getTags() == null)) {
            return false;
        }
        if (assumeRoleRequest.getTags() != null && !assumeRoleRequest.getTags().equals(getTags())) {
            return false;
        }
        if ((assumeRoleRequest.getTransitiveTagKeys() == null) ^ (getTransitiveTagKeys() == null)) {
            return false;
        }
        if (assumeRoleRequest.getTransitiveTagKeys() != null && !assumeRoleRequest.getTransitiveTagKeys().equals(getTransitiveTagKeys())) {
            return false;
        }
        if ((assumeRoleRequest.getExternalId() == null) ^ (getExternalId() == null)) {
            return false;
        }
        if (assumeRoleRequest.getExternalId() != null && !assumeRoleRequest.getExternalId().equals(getExternalId())) {
            return false;
        }
        if ((assumeRoleRequest.getSerialNumber() == null) ^ (getSerialNumber() == null)) {
            return false;
        }
        if (assumeRoleRequest.getSerialNumber() != null && !assumeRoleRequest.getSerialNumber().equals(getSerialNumber())) {
            return false;
        }
        if ((assumeRoleRequest.getTokenCode() == null) ^ (getTokenCode() == null)) {
            return false;
        }
        return assumeRoleRequest.getTokenCode() == null || assumeRoleRequest.getTokenCode().equals(getTokenCode());
    }

    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public String getPolicy() {
        return this.policy;
    }

    public List<PolicyDescriptorType> getPolicyArns() {
        return this.policyArns;
    }

    public String getRoleArn() {
        return this.roleArn;
    }

    public String getRoleSessionName() {
        return this.roleSessionName;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public List<Tag> getTags() {
        return this.tags;
    }

    public String getTokenCode() {
        return this.tokenCode;
    }

    public List<String> getTransitiveTagKeys() {
        return this.transitiveTagKeys;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getRoleArn() == null ? 0 : getRoleArn().hashCode();
        int hashCode2 = getRoleSessionName() == null ? 0 : getRoleSessionName().hashCode();
        int hashCode3 = getPolicyArns() == null ? 0 : getPolicyArns().hashCode();
        int hashCode4 = getPolicy() == null ? 0 : getPolicy().hashCode();
        int hashCode5 = getDurationSeconds() == null ? 0 : getDurationSeconds().hashCode();
        int hashCode6 = getTags() == null ? 0 : getTags().hashCode();
        int hashCode7 = getTransitiveTagKeys() == null ? 0 : getTransitiveTagKeys().hashCode();
        int hashCode8 = getExternalId() == null ? 0 : getExternalId().hashCode();
        int hashCode9 = getSerialNumber() == null ? 0 : getSerialNumber().hashCode();
        if (getTokenCode() != null) {
            i = getTokenCode().hashCode();
        }
        return ((((((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public void setExternalId(String str) {
        this.externalId = str;
    }

    public void setPolicy(String str) {
        this.policy = str;
    }

    public void setPolicyArns(Collection<PolicyDescriptorType> collection) {
        if (collection == null) {
            this.policyArns = null;
        } else {
            this.policyArns = new ArrayList(collection);
        }
    }

    public void setRoleArn(String str) {
        this.roleArn = str;
    }

    public void setRoleSessionName(String str) {
        this.roleSessionName = str;
    }

    public void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    public void setTags(Collection<Tag> collection) {
        if (collection == null) {
            this.tags = null;
        } else {
            this.tags = new ArrayList(collection);
        }
    }

    public void setTokenCode(String str) {
        this.tokenCode = str;
    }

    public void setTransitiveTagKeys(Collection<String> collection) {
        if (collection == null) {
            this.transitiveTagKeys = null;
        } else {
            this.transitiveTagKeys = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getRoleArn() != null) {
            sb.append("RoleArn: " + getRoleArn() + ",");
        }
        if (getRoleSessionName() != null) {
            sb.append("RoleSessionName: " + getRoleSessionName() + ",");
        }
        if (getPolicyArns() != null) {
            sb.append("PolicyArns: " + getPolicyArns() + ",");
        }
        if (getPolicy() != null) {
            sb.append("Policy: " + getPolicy() + ",");
        }
        if (getDurationSeconds() != null) {
            sb.append("DurationSeconds: " + getDurationSeconds() + ",");
        }
        if (getTags() != null) {
            sb.append("Tags: " + getTags() + ",");
        }
        if (getTransitiveTagKeys() != null) {
            sb.append("TransitiveTagKeys: " + getTransitiveTagKeys() + ",");
        }
        if (getExternalId() != null) {
            sb.append("ExternalId: " + getExternalId() + ",");
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

    public AssumeRoleRequest withDurationSeconds(Integer num) {
        this.durationSeconds = num;
        return this;
    }

    public AssumeRoleRequest withExternalId(String str) {
        this.externalId = str;
        return this;
    }

    public AssumeRoleRequest withPolicy(String str) {
        this.policy = str;
        return this;
    }

    public AssumeRoleRequest withPolicyArns(Collection<PolicyDescriptorType> collection) {
        setPolicyArns(collection);
        return this;
    }

    public AssumeRoleRequest withPolicyArns(PolicyDescriptorType... policyDescriptorTypeArr) {
        if (getPolicyArns() == null) {
            this.policyArns = new ArrayList(policyDescriptorTypeArr.length);
        }
        for (PolicyDescriptorType policyDescriptorType : policyDescriptorTypeArr) {
            this.policyArns.add(policyDescriptorType);
        }
        return this;
    }

    public AssumeRoleRequest withRoleArn(String str) {
        this.roleArn = str;
        return this;
    }

    public AssumeRoleRequest withRoleSessionName(String str) {
        this.roleSessionName = str;
        return this;
    }

    public AssumeRoleRequest withSerialNumber(String str) {
        this.serialNumber = str;
        return this;
    }

    public AssumeRoleRequest withTags(Collection<Tag> collection) {
        setTags(collection);
        return this;
    }

    public AssumeRoleRequest withTags(Tag... tagArr) {
        if (getTags() == null) {
            this.tags = new ArrayList(tagArr.length);
        }
        for (Tag tag : tagArr) {
            this.tags.add(tag);
        }
        return this;
    }

    public AssumeRoleRequest withTokenCode(String str) {
        this.tokenCode = str;
        return this;
    }

    public AssumeRoleRequest withTransitiveTagKeys(Collection<String> collection) {
        setTransitiveTagKeys(collection);
        return this;
    }

    public AssumeRoleRequest withTransitiveTagKeys(String... strArr) {
        if (getTransitiveTagKeys() == null) {
            this.transitiveTagKeys = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.transitiveTagKeys.add(str);
        }
        return this;
    }
}
