package com.freshchat.consumer.sdk.beans.config;

import e.m.e.d0.b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/CsatConfig.class */
public class CsatConfig {
    @b("userCsatViewTimer")
    private boolean csatAutoExpire;
    @b("maximumUserSurveyViewMillis")
    private long csatExpiryInterval;

    public boolean doesCsatAutoExpire() {
        return this.csatAutoExpire;
    }

    public long getCsatExpiryInterval() {
        return this.csatExpiryInterval;
    }

    public void setCsatAutoExpire(boolean z) {
        this.csatAutoExpire = z;
    }

    public void setCsatExpiryInterval(long j) {
        this.csatExpiryInterval = j;
    }
}
