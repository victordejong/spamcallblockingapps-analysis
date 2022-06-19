package com.freshchat.consumer.sdk.beans.config;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/ConversationConfig.class */
public class ConversationConfig {
    private double activeConvFetchBackoffRatio;
    private long activeConvWindow;
    private boolean launchDeeplinkFromNotification;
    private Set<Integer> reopenedMsgTypes;
    private Set<Integer> resolvedMsgTypes;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType.class */
    public enum AgentAvatarType {
        NONE,
        APP_ICON,
        REAL_AGENT_AVATAR
    }

    public double getActiveConvFetchBackoffRatio() {
        return this.activeConvFetchBackoffRatio;
    }

    public long getActiveConvWindow() {
        return this.activeConvWindow;
    }

    public Set<Integer> getReopenedMsgtypes() {
        return this.reopenedMsgTypes;
    }

    public Set<Integer> getResolvedMsgTypes() {
        return this.resolvedMsgTypes;
    }

    public void setActiveConvFetchBackoffRatio(double d) {
        this.activeConvFetchBackoffRatio = d;
    }

    public void setActiveConvWindow(long j) {
        this.activeConvWindow = j;
    }

    public void setLaunchDeeplinkFromNotification(boolean z) {
        this.launchDeeplinkFromNotification = z;
    }

    public void setReopenedMsgtypes(Set<Integer> set) {
        this.reopenedMsgTypes = set;
    }

    public void setResolvedMsgTypes(Set<Integer> set) {
        this.resolvedMsgTypes = set;
    }

    public boolean shouldLaunchDeeplinkFromNotification() {
        return this.launchDeeplinkFromNotification;
    }
}
