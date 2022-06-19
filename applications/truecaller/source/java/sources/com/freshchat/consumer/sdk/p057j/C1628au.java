package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
/* renamed from: com.freshchat.consumer.sdk.j.au */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/au.class */
public class C1628au {
    /* renamed from: a */
    public static boolean m40219a(RemoteConfig remoteConfig) {
        return remoteConfig.getCsatConfig().doesCsatAutoExpire();
    }

    /* renamed from: a */
    public static boolean m40218a(RemoteConfig remoteConfig, long j) {
        if (j <= 0) {
            return false;
        }
        return System.currentTimeMillis() - j > remoteConfig.getCsatConfig().getCsatExpiryInterval();
    }

    /* renamed from: a */
    public static boolean m40217a(RemoteConfig remoteConfig, Csat csat) {
        return m40218a(remoteConfig, csat.getInitiatedTime());
    }
}
