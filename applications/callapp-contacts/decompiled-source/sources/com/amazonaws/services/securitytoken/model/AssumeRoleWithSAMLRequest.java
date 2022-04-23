package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLRequest.class */
public class AssumeRoleWithSAMLRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer durationSeconds;
    private String policy;
    private List<PolicyDescriptorType> policyArns;
    private String principalArn;
    private String roleArn;
    private String sAMLAssertion;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleWithSAMLRequest)) {
            return false;
        }
        AssumeRoleWithSAMLRequest assumeRoleWithSAMLRequest = (AssumeRoleWithSAMLRequest) obj;
        if ((assumeRoleWithSAMLRequest.getRoleArn() == null) ^ (getRoleArn() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLRequest.getRoleArn() != null && !assumeRoleWithSAMLRequest.getRoleArn().equals(getRoleArn())) {
            return false;
        }
        if ((assumeRoleWithSAMLRequest.getPrincipalArn() == null) ^ (getPrincipalArn() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLRequest.getPrincipalArn() != null && !assumeRoleWithSAMLRequest.getPrincipalArn().equals(getPrincipalArn())) {
            return false;
        }
        if ((assumeRoleWithSAMLRequest.getSAMLAssertion() == null) ^ (getSAMLAssertion() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLRequest.getSAMLAssertion() != null && !assumeRoleWithSAMLRequest.getSAMLAssertion().equals(getSAMLAssertion())) {
            return false;
        }
        if ((assumeRoleWithSAMLRequest.getPolicyArns() == null) ^ (getPolicyArns() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLRequest.getPolicyArns() != null && !assumeRoleWithSAMLRequest.getPolicyArns().equals(getPolicyArns())) {
            return false;
        }
        if ((assumeRoleWithSAMLRequest.getPolicy() == null) ^ (getPolicy() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLRequest.getPolicy() != null && !assumeRoleWithSAMLRequest.getPolicy().equals(getPolicy())) {
            return false;
        }
        if ((assumeRoleWithSAMLRequest.getDurationSeconds() == null) ^ (getDurationSeconds() == null)) {
            return false;
        }
        return assumeRoleWithSAMLRequest.getDurationSeconds() == null || assumeRoleWithSAMLRequest.getDurationSeconds().equals(getDurationSeconds());
    }

    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public String getPolicy() {
        return this.policy;
    }

    public List<PolicyDescriptorType> getPolicyArns() {
        return this.policyArns;
    }

    public String getPrincipalArn() {
        return this.principalArn;
    }

    public String getRoleArn() {
        return this.roleArn;
    }

    public String getSAMLAssertion() {
        return this.sAMLAssertion;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getRoleArn() == null ? 0 : getRoleArn().hashCode();
        int hashCode2 = getPrincipalArn() == null ? 0 : getPrincipalArn().hashCode();
        int hashCode3 = getSAMLAssertion() == null ? 0 : getSAMLAssertion().hashCode();
        int hashCode4 = getPolicyArns() == null ? 0 : getPolicyArns().hashCode();
        int hashCode5 = getPolicy() == null ? 0 : getPolicy().hashCode();
        if (getDurationSeconds() != null) {
            i = getDurationSeconds().hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
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

    public void setPrincipalArn(String str) {
        this.principalArn = str;
    }

    public void setRoleArn(String str) {
        this.roleArn = str;
    }

    public void setSAMLAssertion(String str) {
        this.sAMLAssertion = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getRoleArn() != null) {
            sb.append("RoleArn: " + getRoleArn() + ",");
        }
        if (getPrincipalArn() != null) {
            sb.append("PrincipalArn: " + getPrincipalArn() + ",");
        }
        if (getSAMLAssertion() != null) {
            sb.append("SAMLAssertion: " + getSAMLAssertion() + ",");
        }
        if (getPolicyArns() != null) {
            sb.append("PolicyArns: " + getPolicyArns() + ",");
        }
        if (getPolicy() != null) {
            sb.append("Policy: " + getPolicy() + ",");
        }
        if (getDurationSeconds() != null) {
            sb.append("DurationSeconds: " + getDurationSeconds());
        }
        sb.append("}");
        return sb.toString();
    }

    public AssumeRoleWithSAMLRequest withDurationSeconds(Integer num) {
        this.durationSeconds = num;
        return this;
    }

    public AssumeRoleWithSAMLRequest withPolicy(String str) {
        this.policy = str;
        return this;
    }

    public AssumeRoleWithSAMLRequest withPolicyArns(Collection<PolicyDescriptorType> collection) {
        setPolicyArns(collection);
        return this;
    }

    public AssumeRoleWithSAMLRequest withPolicyArns(PolicyDescriptorType... policyDescriptorTypeArr) {
        if (getPolicyArns() == null) {
            this.policyArns = new ArrayList(policyDescriptorTypeArr.length);
        }
        for (PolicyDescriptorType policyDescriptorType : policyDescriptorTypeArr) {
            this.policyArns.add(policyDescriptorType);
        }
        return this;
    }

    public AssumeRoleWithSAMLRequest withPrincipalArn(String str) {
        this.principalArn = str;
        return this;
    }

    public AssumeRoleWithSAMLRequest withRoleArn(String str) {
        this.roleArn = str;
        return this;
    }

    public AssumeRoleWithSAMLRequest withSAMLAssertion(String str) {
        this.sAMLAssertion = str;
        return this;
    }
}
