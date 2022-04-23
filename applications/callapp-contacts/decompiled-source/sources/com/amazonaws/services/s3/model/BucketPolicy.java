package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketPolicy.class */
public class BucketPolicy implements Serializable {
    private String policyText;

    public String getPolicyText() {
        return this.policyText;
    }

    public void setPolicyText(String str) {
        this.policyText = str;
    }
}
