package com.freshchat.consumer.sdk.beans.config;

import com.freshchat.consumer.sdk.beans.config.AccountConfig;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/DefaultAccountConfig.class */
public class DefaultAccountConfig extends AccountConfig {
    public static final AccountConfig.FAQAPIVersion DEFAULT_FAQ_API_VERSION = AccountConfig.FAQAPIVersion.STANDALONE;

    public DefaultAccountConfig() {
        setFcFaqApiVersion(DEFAULT_FAQ_API_VERSION);
    }
}
