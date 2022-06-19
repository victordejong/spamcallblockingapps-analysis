package com.freshchat.consumer.sdk.beans;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/TriggeredRuleId.class */
public class TriggeredRuleId {
    private String flowId;
    private String flowVersionId;
    private long serviceAccountId;
    private long timeDiffInMillis;

    public String getFlowId() {
        return this.flowId;
    }

    public String getFlowVersionId() {
        return this.flowVersionId;
    }

    public long getServiceAccountId() {
        return this.serviceAccountId;
    }

    public long getTimeDiffInMillis() {
        return this.timeDiffInMillis;
    }

    public void setFlowId(String str) {
        this.flowId = str;
    }

    public void setFlowVersionId(String str) {
        this.flowVersionId = str;
    }

    public void setServiceAccountId(long j) {
        this.serviceAccountId = j;
    }

    public void setTimeDiffInMillis(long j) {
        this.timeDiffInMillis = j;
    }
}
