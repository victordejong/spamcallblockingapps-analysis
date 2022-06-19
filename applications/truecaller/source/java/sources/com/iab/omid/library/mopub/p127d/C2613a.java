package com.iab.omid.library.mopub.p127d;

import android.os.Build;
import com.freshchat.consumer.sdk.beans.User;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.d.a */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/d/a.class */
public final class C2613a {
    /* renamed from: a */
    public static String m36424a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    /* renamed from: b */
    public static String m36423b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    /* renamed from: c */
    public static String m36422c() {
        return AnalyticsConstants.ANDROID;
    }

    /* renamed from: d */
    public static JSONObject m36421d() {
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, "deviceType", m36424a());
        C2614b.m36413a(jSONObject, "osVersion", m36423b());
        C2614b.m36413a(jSONObject, User.DEVICE_META_OS_NAME, m36422c());
        return jSONObject;
    }
}
