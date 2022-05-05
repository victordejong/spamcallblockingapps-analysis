package com.criteo.publisher.p020a0;

import android.content.Context;
import android.util.Log;
/* renamed from: com.criteo.publisher.a0.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/b.class */
public class C1909b {
    /* renamed from: a */
    public String m36045a(Context context) {
        try {
            return (String) C1929q.m35998a("getId", context);
        } catch (Exception e) {
            Log.e("AdvertisingInfo", "Error getting advertising id: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public boolean m36044b(Context context) {
        try {
            return ((Boolean) C1929q.m35998a("isLimitAdTrackingEnabled", context)).booleanValue();
        } catch (Exception e) {
            Log.e("AdvertisingInfo", "Error checking if ad tracking is limited: " + e.getMessage());
            return false;
        }
    }
}
