package com.freshchat.consumer.sdk.beans.config;

import com.freshchat.consumer.sdk.beans.MessageMaskingConfig;
import com.freshchat.consumer.sdk.beans.OperatingHoursResponse;
import com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig;
import com.freshchat.consumer.sdk.beans.UserEventsConfig;
import e.m.e.d0.b;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/RemoteConfig.class */
public class RemoteConfig {
    private boolean accountActive;
    private AccountConfig accountConfig;
    private ConversationConfig conversationConfig;
    @b("csatSettings")
    private CsatConfig csatConfig;
    private Set<String> enabledFeatures;
    private UserEventsConfig eventsConfig;
    private LiveTranslationConfig liveTranslationConfig;
    private MessageMaskingConfig messageMaskingConfig;
    private OperatingHoursResponse operatingHoursResponse;
    private RefreshIntervals refreshIntervals;
    private long sessionTimeoutInterval;
    private UnsupportedFragmentConfig unsupportedFragmentConfig;
    private UserAuthConfig userAuthConfig;

    public AccountConfig getAccountConfig() {
        return this.accountConfig;
    }

    public ConversationConfig getConversationConfig() {
        return this.conversationConfig;
    }

    public CsatConfig getCsatConfig() {
        return this.csatConfig;
    }

    public Set<String> getEnabledFeatures() {
        return this.enabledFeatures;
    }

    public UserEventsConfig getEventsConfig() {
        return this.eventsConfig;
    }

    public LiveTranslationConfig getLiveTranslationConfig() {
        return this.liveTranslationConfig;
    }

    public MessageMaskingConfig getMessageMaskingConfig() {
        return this.messageMaskingConfig;
    }

    public OperatingHoursResponse getOperatingHoursResponse() {
        return this.operatingHoursResponse;
    }

    public RefreshIntervals getRefreshIntervals() {
        return this.refreshIntervals;
    }

    public long getSessionTimeoutInterval() {
        return this.sessionTimeoutInterval;
    }

    public UnsupportedFragmentConfig getUnsupportedFragmentConfig() {
        return this.unsupportedFragmentConfig;
    }

    public UserAuthConfig getUserAuthConfig() {
        return this.userAuthConfig;
    }

    public boolean isAccountActive() {
        return this.accountActive;
    }

    public void setAccountActive(boolean z) {
        this.accountActive = z;
    }

    public void setAccountConfig(AccountConfig accountConfig) {
        this.accountConfig = accountConfig;
    }

    public void setConversationConfig(ConversationConfig conversationConfig) {
        this.conversationConfig = conversationConfig;
    }

    public void setCsatConfig(CsatConfig csatConfig) {
        this.csatConfig = csatConfig;
    }

    public void setEnabledFeatures(Set<String> set) {
        this.enabledFeatures = set;
    }

    public void setEventsConfig(UserEventsConfig userEventsConfig) {
        this.eventsConfig = userEventsConfig;
    }

    public void setLiveTranslationConfig(LiveTranslationConfig liveTranslationConfig) {
        this.liveTranslationConfig = liveTranslationConfig;
    }

    public void setMessageMaskingConfig(MessageMaskingConfig messageMaskingConfig) {
        this.messageMaskingConfig = messageMaskingConfig;
    }

    public void setRefreshIntervals(RefreshIntervals refreshIntervals) {
        this.refreshIntervals = refreshIntervals;
    }

    public void setSessionTimeoutInterval(long j) {
        this.sessionTimeoutInterval = j;
    }

    public void setUnsupportedFragmentConfig(UnsupportedFragmentConfig unsupportedFragmentConfig) {
        this.unsupportedFragmentConfig = unsupportedFragmentConfig;
    }

    public void setUserAuthConfig(UserAuthConfig userAuthConfig) {
        this.userAuthConfig = userAuthConfig;
    }
}
