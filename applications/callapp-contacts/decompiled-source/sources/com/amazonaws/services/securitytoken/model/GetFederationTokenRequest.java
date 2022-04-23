package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/GetFederationTokenRequest.class */
public class GetFederationTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer durationSeconds;
    private String name;
    private String policy;
    private List<PolicyDescriptorType> policyArns;
    private List<Tag> tags;

    public GetFederationTokenRequest() {
    }

    public GetFederationTokenRequest(String str) {
        setName(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFederationTokenRequest)) {
            return false;
        }
        GetFederationTokenRequest getFederationTokenRequest = (GetFederationTokenRequest) obj;
        if ((getFederationTokenRequest.getName() == null) ^ (getName() == null)) {
            return false;
        }
        if (getFederationTokenRequest.getName() != null && !getFederationTokenRequest.getName().equals(getName())) {
            return false;
        }
        if ((getFederationTokenRequest.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        if (getFederationTokenRequest.getPolicy() != null && !getFederationTokenRequest.getPolicy().equals(getPolicy())) {
            return false;
        }
        if ((getFederationTokenRequest.getPolicyArns() == null) ^ (getPolicyArns() == null)) {
            return false;
        }
        if (getFederationTokenRequest.getPolicyArns() != null && !getFederationTokenRequest.getPolicyArns().equals(getPolicyArns())) {
            return false;
        }
        if ((getFederationTokenRequest.getDurationSeconds() == null) ^ (getDurationSeconds() == null)) {
            return false;
        }
        if (getFederationTokenRequest.getDurationSeconds() != null && !getFederationTokenRequest.getDurationSeconds().equals(getDurationSeconds())) {
            return false;
        }
        if ((getFederationTokenRequest.getTags() == null) ^ (getTags() == null)) {
            return false;
        }
        return getFederationTokenRequest.getTags() == null || getFederationTokenRequest.getTags().equals(getTags());
    }

    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getName() {
        return this.name;
    }

    public String getPolicy() {
        return this.policy;
    }

    public List<PolicyDescriptorType> getPolicyArns() {
        return this.policyArns;
    }

    public List<Tag> getTags() {
        return this.tags;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getName() == null ? 0 : getName().hashCode();
        int hashCode2 = getPolicy() == null ? 0 : getPolicy().hashCode();
        int hashCode3 = getPolicyArns() == null ? 0 : getPolicyArns().hashCode();
        int hashCode4 = getDurationSeconds() == null ? 0 : getDurationSeconds().hashCode();
        if (getTags() != null) {
            i = getTags().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public void setName(String str) {
        this.name = str;
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
        if (getName() != null) {
            sb.append("Name: " + getName() + ",");
        }
        if (getPolicy() != null) {
            sb.append("Policy: " + getPolicy() + ",");
        }
        if (getPolicyArns() != null) {
            sb.append("PolicyArns: " + getPolicyArns() + ",");
        }
        if (getDurationSeconds() != null) {
            sb.append("DurationSeconds: " + getDurationSeconds() + ",");
        }
        if (getTags() != null) {
            sb.append("Tags: " + getTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetFederationTokenRequest withDurationSeconds(Integer num) {
        this.durationSeconds = num;
        return this;
    }

    public GetFederationTokenRequest withName(String str) {
        this.name = str;
        return this;
    }

    public GetFederationTokenRequest withPolicy(String str) {
        this.policy = str;
        return this;
    }

    public GetFederationTokenRequest withPolicyArns(Collection<PolicyDescriptorType> collection) {
        setPolicyArns(collection);
        return this;
    }

    public GetFederationTokenRequest withPolicyArns(PolicyDescriptorType... policyDescriptorTypeArr) {
        if (getPolicyArns() == null) {
            this.policyArns = new ArrayList(policyDescriptorTypeArr.length);
        }
        for (PolicyDescriptorType policyDescriptorType : policyDescriptorTypeArr) {
            this.policyArns.add(policyDescriptorType);
        }
        return this;
    }

    public GetFederationTokenRequest withTags(Collection<Tag> collection) {
        setTags(collection);
        return this;
    }

    public GetFederationTokenRequest withTags(Tag... tagArr) {
        if (getTags() == null) {
            this.tags = new ArrayList(tagArr.length);
        }
        for (Tag tag : tagArr) {
            this.tags.add(tag);
        }
        return this;
    }
}
