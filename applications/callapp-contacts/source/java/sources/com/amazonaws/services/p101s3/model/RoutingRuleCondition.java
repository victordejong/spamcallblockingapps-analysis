package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.RoutingRuleCondition */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/RoutingRuleCondition.class */
public class RoutingRuleCondition {
    String httpErrorCodeReturnedEquals;
    String keyPrefixEquals;

    public String getHttpErrorCodeReturnedEquals() {
        return this.httpErrorCodeReturnedEquals;
    }

    public String getKeyPrefixEquals() {
        return this.keyPrefixEquals;
    }

    public void setHttpErrorCodeReturnedEquals(String str) {
        this.httpErrorCodeReturnedEquals = str;
    }

    public void setKeyPrefixEquals(String str) {
        this.keyPrefixEquals = str;
    }

    public RoutingRuleCondition withHttpErrorCodeReturnedEquals(String str) {
        setHttpErrorCodeReturnedEquals(str);
        return this;
    }

    public RoutingRuleCondition withKeyPrefixEquals(String str) {
        setKeyPrefixEquals(str);
        return this;
    }
}
