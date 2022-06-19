package com.iab.omid.library.applovin.p062d;

import android.os.Build;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.d.a */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/d/a.class */
public final class C1945a {
    /* renamed from: a */
    public static String m4111a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    /* renamed from: b */
    public static String m4110b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    /* renamed from: c */
    public static String m4109c() {
        return "Android";
    }

    /* renamed from: d */
    public static JSONObject m4108d() {
        JSONObject jSONObject = new JSONObject();
        C1946b.m4099a(jSONObject, "deviceType", m4111a());
        C1946b.m4099a(jSONObject, "osVersion", m4110b());
        C1946b.m4099a(jSONObject, "os", m4109c());
        return jSONObject;
    }
}
