package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/PolicyDescriptorType.class */
public class PolicyDescriptorType implements Serializable {
    private String arn;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PolicyDescriptorType)) {
            return false;
        }
        PolicyDescriptorType policyDescriptorType = (PolicyDescriptorType) obj;
        if ((policyDescriptorType.getArn() == null) ^ (getArn() == null)) {
            return false;
        }
        return policyDescriptorType.getArn() == null || policyDescriptorType.getArn().equals(getArn());
    }

    public String getArn() {
        return this.arn;
    }

    public int hashCode() {
        return (getArn() == null ? 0 : getArn().hashCode()) + 31;
    }

    public void setArn(String str) {
        this.arn = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getArn() != null) {
            sb.append("arn: " + getArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public PolicyDescriptorType withArn(String str) {
        this.arn = str;
        return this;
    }
}
