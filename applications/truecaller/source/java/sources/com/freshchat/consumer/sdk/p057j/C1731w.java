package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.config.Feature;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
/* renamed from: com.freshchat.consumer.sdk.j.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/w.class */
public class C1731w {
    /* renamed from: a */
    private static boolean m39797a(Context context, Feature feature) {
        RemoteConfig m39791bx = m39791bx(context);
        return m39791bx != null && C1716k.m39902a(m39791bx.getEnabledFeatures()) && m39791bx.getEnabledFeatures().contains(feature.name());
    }

    /* renamed from: aA */
    public static boolean m39796aA(Context context) {
        return m39797a(context, Feature.INBOX);
    }

    /* renamed from: aB */
    public static boolean m39795aB(Context context) {
        return m39797a(context, Feature.AOT_USER_CREATE);
    }

    /* renamed from: aC */
    public static boolean m39794aC(Context context) {
        return m39797a(context, Feature.MANUAL_CAMPAIGNS);
    }

    /* renamed from: ay */
    public static boolean m39793ay(Context context) {
        RemoteConfig m39791bx = m39791bx(context);
        return m39791bx != null && m39791bx.isAccountActive();
    }

    /* renamed from: az */
    public static boolean m39792az(Context context) {
        return m39797a(context, Feature.FAQ);
    }

    /* renamed from: bx */
    private static RemoteConfig m39791bx(Context context) {
        return C1622ap.m40245bD(context);
    }
}
