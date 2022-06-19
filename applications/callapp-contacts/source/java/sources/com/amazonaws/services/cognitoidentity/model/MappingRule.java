package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/MappingRule.class */
public class MappingRule implements Serializable {
    private String claim;
    private String matchType;
    private String roleARN;
    private String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MappingRule)) {
            return false;
        }
        MappingRule mappingRule = (MappingRule) obj;
        if ((mappingRule.getClaim() == null) ^ (getClaim() == null)) {
            return false;
        }
        if (mappingRule.getClaim() != null && !mappingRule.getClaim().equals(getClaim())) {
            return false;
        }
        if ((mappingRule.getMatchType() == null) ^ (getMatchType() == null)) {
            return false;
        }
        if (mappingRule.getMatchType() != null && !mappingRule.getMatchType().equals(getMatchType())) {
            return false;
        }
        if ((mappingRule.getValue() == null) ^ (getValue() == null)) {
            return false;
        }
        if (mappingRule.getValue() != null && !mappingRule.getValue().equals(getValue())) {
            return false;
        }
        if ((mappingRule.getRoleARN() == null) ^ (getRoleARN() == null)) {
            return false;
        }
        return mappingRule.getRoleARN() == null || mappingRule.getRoleARN().equals(getRoleARN());
    }

    public String getClaim() {
        return this.claim;
    }

    public String getMatchType() {
        return this.matchType;
    }

    public String getRoleARN() {
        return this.roleARN;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getClaim() == null ? 0 : getClaim().hashCode();
        int hashCode2 = getMatchType() == null ? 0 : getMatchType().hashCode();
        int hashCode3 = getValue() == null ? 0 : getValue().hashCode();
        if (getRoleARN() != null) {
            i = getRoleARN().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setClaim(String str) {
        this.claim = str;
    }

    public void setMatchType(MappingRuleMatchType mappingRuleMatchType) {
        this.matchType = mappingRuleMatchType.toString();
    }

    public void setMatchType(String str) {
        this.matchType = str;
    }

    public void setRoleARN(String str) {
        this.roleARN = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getClaim() != null) {
            sb.append("Claim: " + getClaim() + ",");
        }
        if (getMatchType() != null) {
            sb.append("MatchType: " + getMatchType() + ",");
        }
        if (getValue() != null) {
            sb.append("Value: " + getValue() + ",");
        }
        if (getRoleARN() != null) {
            sb.append("RoleARN: " + getRoleARN());
        }
        sb.append("}");
        return sb.toString();
    }

    public MappingRule withClaim(String str) {
        this.claim = str;
        return this;
    }

    public MappingRule withMatchType(MappingRuleMatchType mappingRuleMatchType) {
        this.matchType = mappingRuleMatchType.toString();
        return this;
    }

    public MappingRule withMatchType(String str) {
        this.matchType = str;
        return this;
    }

    public MappingRule withRoleARN(String str) {
        this.roleARN = str;
        return this;
    }

    public MappingRule withValue(String str) {
        this.value = str;
        return this;
    }
}
