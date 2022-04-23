package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult.class */
public class AssumeRoleWithSAMLResult implements Serializable {
    private AssumedRoleUser assumedRoleUser;
    private String audience;
    private Credentials credentials;
    private String issuer;
    private String nameQualifier;
    private Integer packedPolicySize;
    private String subject;
    private String subjectType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleWithSAMLResult)) {
            return false;
        }
        AssumeRoleWithSAMLResult assumeRoleWithSAMLResult = (AssumeRoleWithSAMLResult) obj;
        if ((assumeRoleWithSAMLResult.getCredentials() == null) ^ (getCredentials() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getCredentials() != null && !assumeRoleWithSAMLResult.getCredentials().equals(getCredentials())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getAssumedRoleUser() == null) ^ (getAssumedRoleUser() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getAssumedRoleUser() != null && !assumeRoleWithSAMLResult.getAssumedRoleUser().equals(getAssumedRoleUser())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getPackedPolicySize() == null) ^ (getPackedPolicySize() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getPackedPolicySize() != null && !assumeRoleWithSAMLResult.getPackedPolicySize().equals(getPackedPolicySize())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getSubject() == null) ^ (getSubject() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getSubject() != null && !assumeRoleWithSAMLResult.getSubject().equals(getSubject())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getSubjectType() == null) ^ (getSubjectType() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getSubjectType() != null && !assumeRoleWithSAMLResult.getSubjectType().equals(getSubjectType())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getIssuer() == null) ^ (getIssuer() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getIssuer() != null && !assumeRoleWithSAMLResult.getIssuer().equals(getIssuer())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getAudience() == null) ^ (getAudience() == null)) {
            return false;
        }
        if (assumeRoleWithSAMLResult.getAudience() != null && !assumeRoleWithSAMLResult.getAudience().equals(getAudience())) {
            return false;
        }
        if ((assumeRoleWithSAMLResult.getNameQualifier() == null) ^ (getNameQualifier() == null)) {
            return false;
        }
        return assumeRoleWithSAMLResult.getNameQualifier() == null || assumeRoleWithSAMLResult.getNameQualifier().equals(getNameQualifier());
    }

    public AssumedRoleUser getAssumedRoleUser() {
        return this.assumedRoleUser;
    }

    public String getAudience() {
        return this.audience;
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public String getIssuer() {
        return this.issuer;
    }

    public String getNameQualifier() {
        return this.nameQualifier;
    }

    public Integer getPackedPolicySize() {
        return this.packedPolicySize;
    }

    public String getSubject() {
        return this.subject;
    }

    public String getSubjectType() {
        return this.subjectType;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCredentials() == null ? 0 : getCredentials().hashCode();
        int hashCode2 = getAssumedRoleUser() == null ? 0 : getAssumedRoleUser().hashCode();
        int hashCode3 = getPackedPolicySize() == null ? 0 : getPackedPolicySize().hashCode();
        int hashCode4 = getSubject() == null ? 0 : getSubject().hashCode();
        int hashCode5 = getSubjectType() == null ? 0 : getSubjectType().hashCode();
        int hashCode6 = getIssuer() == null ? 0 : getIssuer().hashCode();
        int hashCode7 = getAudience() == null ? 0 : getAudience().hashCode();
        if (getNameQualifier() != null) {
            i = getNameQualifier().hashCode();
        }
        return ((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public void setAssumedRoleUser(AssumedRoleUser assumedRoleUser) {
        this.assumedRoleUser = assumedRoleUser;
    }

    public void setAudience(String str) {
        this.audience = str;
    }

    public void setCredentials(Credentials credentials) {
        this.credentials = credentials;
    }

    public void setIssuer(String str) {
        this.issuer = str;
    }

    public void setNameQualifier(String str) {
        this.nameQualifier = str;
    }

    public void setPackedPolicySize(Integer num) {
        this.packedPolicySize = num;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setSubjectType(String str) {
        this.subjectType = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCredentials() != null) {
            sb.append("Credentials: " + getCredentials() + ",");
        }
        if (getAssumedRoleUser() != null) {
            sb.append("AssumedRoleUser: " + getAssumedRoleUser() + ",");
        }
        if (getPackedPolicySize() != null) {
            sb.append("PackedPolicySize: " + getPackedPolicySize() + ",");
        }
        if (getSubject() != null) {
            sb.append("Subject: " + getSubject() + ",");
        }
        if (getSubjectType() != null) {
            sb.append("SubjectType: " + getSubjectType() + ",");
        }
        if (getIssuer() != null) {
            sb.append("Issuer: " + getIssuer() + ",");
        }
        if (getAudience() != null) {
            sb.append("Audience: " + getAudience() + ",");
        }
        if (getNameQualifier() != null) {
            sb.append("NameQualifier: " + getNameQualifier());
        }
        sb.append("}");
        return sb.toString();
    }

    public AssumeRoleWithSAMLResult withAssumedRoleUser(AssumedRoleUser assumedRoleUser) {
        this.assumedRoleUser = assumedRoleUser;
        return this;
    }

    public AssumeRoleWithSAMLResult withAudience(String str) {
        this.audience = str;
        return this;
    }

    public AssumeRoleWithSAMLResult withCredentials(Credentials credentials) {
        this.credentials = credentials;
        return this;
    }

    public AssumeRoleWithSAMLResult withIssuer(String str) {
        this.issuer = str;
        return this;
    }

    public AssumeRoleWithSAMLResult withNameQualifier(String str) {
        this.nameQualifier = str;
        return this;
    }

    public AssumeRoleWithSAMLResult withPackedPolicySize(Integer num) {
        this.packedPolicySize = num;
        return this;
    }

    public AssumeRoleWithSAMLResult withSubject(String str) {
        this.subject = str;
        return this;
    }

    public AssumeRoleWithSAMLResult withSubjectType(String str) {
        this.subjectType = str;
        return this;
    }
}
