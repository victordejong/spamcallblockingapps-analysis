package com.freshchat.consumer.sdk.beans.config;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/RefreshIntervals.class */
public class RefreshIntervals {
    private static final long MAX_REMOTE_CONFIG_FETCH_INTERVAL = 3600000;
    private long activeConvMaxFetchInterval;
    private long activeConvMinFetchInterval;
    private long channelsFetchIntervalLaidback;
    private long channelsFetchIntervalNormal;
    private long faqFetchIntervalLaidback;
    private long faqFetchIntervalNormal;
    private long msgFetchIntervalLaidback;
    private long msgFetchIntervalNormal;
    private long remoteConfigFetchInterval;
    private long responseTimeExpectationsFetchInterval;

    public long getActiveConvMaxFetchInterval() {
        return this.activeConvMaxFetchInterval;
    }

    public long getActiveConvMinFetchInterval() {
        return this.activeConvMinFetchInterval;
    }

    public long getChannelsFetchIntervalLaidback() {
        return this.channelsFetchIntervalLaidback;
    }

    public long getChannelsFetchIntervalNormal() {
        return this.channelsFetchIntervalNormal;
    }

    public long getFaqFetchIntervalLaidback() {
        return this.faqFetchIntervalLaidback;
    }

    public long getFaqFetchIntervalNormal() {
        return this.faqFetchIntervalNormal;
    }

    public long getMsgFetchIntervalLaidback() {
        return this.msgFetchIntervalLaidback;
    }

    public long getMsgFetchIntervalNormal() {
        return this.msgFetchIntervalNormal;
    }

    public long getRemoteConfigFetchInterval() {
        return Math.min(this.remoteConfigFetchInterval, 3600000L);
    }

    public long getResponseTimeExpectationsFetchInterval() {
        return this.responseTimeExpectationsFetchInterval;
    }

    public void setActiveConvMaxFetchInterval(long j) {
        this.activeConvMaxFetchInterval = j;
    }

    public void setActiveConvMinFetchInterval(long j) {
        this.activeConvMinFetchInterval = j;
    }

    public void setChannelsFetchIntervalLaidback(long j) {
        this.channelsFetchIntervalLaidback = j;
    }

    public void setChannelsFetchIntervalNormal(long j) {
        this.channelsFetchIntervalNormal = j;
    }

    public void setFaqFetchIntervalLaidback(long j) {
        this.faqFetchIntervalLaidback = j;
    }

    public void setFaqFetchIntervalNormal(long j) {
        this.faqFetchIntervalNormal = j;
    }

    public void setMsgFetchIntervalLaidback(long j) {
        this.msgFetchIntervalLaidback = j;
    }

    public void setMsgFetchIntervalNormal(long j) {
        this.msgFetchIntervalNormal = j;
    }

    public void setRemoteConfigFetchInterval(long j) {
        this.remoteConfigFetchInterval = Math.min(j, 3600000L);
    }

    public void setResponseTimeExpectationsFetchInterval(long j) {
        this.responseTimeExpectationsFetchInterval = j;
    }
}
