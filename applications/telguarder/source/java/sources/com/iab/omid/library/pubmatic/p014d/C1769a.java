package com.iab.omid.library.pubmatic.p014d;

import android.os.Build;
import com.pubmatic.sdk.common.POBCommonConstants;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.d.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/a.class */
public final class C1769a {
    /* renamed from: a */
    public static String m1248a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    /* renamed from: b */
    public static String m1247b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    /* renamed from: c */
    public static String m1246c() {
        return POBCommonConstants.OS_NAME_VALUE;
    }

    /* renamed from: d */
    public static JSONObject m1245d() {
        JSONObject jSONObject = new JSONObject();
        C1770b.m1237a(jSONObject, "deviceType", m1248a());
        C1770b.m1237a(jSONObject, "osVersion", m1247b());
        C1770b.m1237a(jSONObject, "os", m1246c());
        return jSONObject;
    }
}
