package com.freshchat.consumer.sdk.beans.config;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/DefaultCsatConfig.class */
public class DefaultCsatConfig extends CsatConfig {
    private static final int CSAT_TIME_LIMIT = 0;
    private static final boolean CSAT_TIME_LIMITED = false;

    public DefaultCsatConfig() {
        setCsatAutoExpire(false);
        setCsatExpiryInterval(0L);
    }
}
