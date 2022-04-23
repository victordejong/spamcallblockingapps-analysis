package com.criteo.sync.sdk;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/AdvertisingInfoLoader.class */
public class AdvertisingInfoLoader {
    public static final String AdvertisingIdClientClassName = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    public static AdvertisingInfo getAdvertisingInfo(Context context) {
        try {
            Object invoke = Class.forName(AdvertisingIdClientClassName).getDeclaredMethod("getAdvertisingIdInfo", Context.class).invoke(null, context);
            return new AdvertisingInfo(reflectedGetAdvertisingId(invoke, null), reflectedIsLimitAdTrackingEnabled(invoke, false));
        } catch (Exception e) {
            CrtoLog.m35513e("Unable to retrieve Google Ad ID", e);
            return null;
        }
    }

    public static String reflectedGetAdvertisingId(Object obj, String str) {
        try {
            return (String) obj.getClass().getDeclaredMethod("getId", new Class[0]).invoke(obj, new Object[0]);
        } catch (Exception e) {
            return str;
        }
    }

    public static boolean reflectedIsLimitAdTrackingEnabled(Object obj, boolean z) {
        try {
            return ((Boolean) obj.getClass().getDeclaredMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (Exception e) {
            return z;
        }
    }
}
