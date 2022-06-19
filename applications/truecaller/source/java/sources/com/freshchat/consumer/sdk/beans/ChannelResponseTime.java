package com.freshchat.consumer.sdk.beans;

import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/ChannelResponseTime.class */
public class ChannelResponseTime {
    private long channelId;
    @b("customRespMsg")
    private String customResponseTimeMessage;
    private long responseTime;
    private ResponseTimeType responseTimeType;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType.class */
    public enum ResponseTimeType {
        CURRENT_AVG,
        LAST_WEEK_AVG,
        CUSTOM_RESPONSE,
        ALL_MEMBERS_AWAY_RESPONSE
    }

    public ChannelResponseTime(long j, long j2) {
        this.channelId = j;
        this.responseTime = j2;
    }

    public long getChannelId() {
        return this.channelId;
    }

    public String getCustomResponseTimeMessage() {
        return this.customResponseTimeMessage;
    }

    public long getResponseTime() {
        return this.responseTime;
    }

    public ResponseTimeType getResponseTimeType() {
        return this.responseTimeType;
    }

    public void setChannelId(long j) {
        this.channelId = j;
    }

    public void setCustomResponseTimeMessage(String str) {
        this.customResponseTimeMessage = str;
    }

    public void setResponseTime(long j) {
        this.responseTime = j;
    }

    public void setResponseTimeType(ResponseTimeType responseTimeType) {
        this.responseTimeType = responseTimeType;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ChannelResponseTime{channelId=");
        m8728C.append(this.channelId);
        m8728C.append(", responseTime=");
        m8728C.append(this.responseTime);
        m8728C.append(", customResponseTimeMessage=");
        return C22128a.m8630e(m8728C, this.customResponseTimeMessage, '}');
    }
}
