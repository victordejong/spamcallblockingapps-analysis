package com.freshchat.consumer.sdk.beans.config;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/DefaultConversationConfig.class */
public class DefaultConversationConfig extends ConversationConfig {
    private static final double ACTIVE_CONV_FETCH_BACKOFF_RATIO = 1.25d;
    private static final long ACTIVE_CONV_WINDOW = 259200000;
    private static final boolean LAUNCH_DEEPLINK_FROM_NOTIFICATION = true;

    public DefaultConversationConfig() {
        setActiveConvWindow(ACTIVE_CONV_WINDOW);
        setActiveConvFetchBackoffRatio(ACTIVE_CONV_FETCH_BACKOFF_RATIO);
        setLaunchDeeplinkFromNotification(true);
    }
}
