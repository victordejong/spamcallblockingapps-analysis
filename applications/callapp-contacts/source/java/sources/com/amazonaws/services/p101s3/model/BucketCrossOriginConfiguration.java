package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.BucketCrossOriginConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketCrossOriginConfiguration.class */
public class BucketCrossOriginConfiguration implements Serializable {
    private List<CORSRule> rules;

    public BucketCrossOriginConfiguration() {
    }

    public BucketCrossOriginConfiguration(List<CORSRule> list) {
        this.rules = list;
    }

    public List<CORSRule> getRules() {
        return this.rules;
    }

    public void setRules(List<CORSRule> list) {
        this.rules = list;
    }

    public BucketCrossOriginConfiguration withRules(List<CORSRule> list) {
        setRules(list);
        return this;
    }

    public BucketCrossOriginConfiguration withRules(CORSRule... cORSRuleArr) {
        setRules(Arrays.asList(cORSRuleArr));
        return this;
    }
}
