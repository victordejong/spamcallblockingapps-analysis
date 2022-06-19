package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.ReplicationRuleStatus */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ReplicationRuleStatus.class */
public enum ReplicationRuleStatus {
    Enabled("Enabled"),
    Disabled(BucketLifecycleConfiguration.DISABLED);
    
    private final String status;

    ReplicationRuleStatus(String str) {
        this.status = str;
    }

    public final String getStatus() {
        return this.status;
    }
}
