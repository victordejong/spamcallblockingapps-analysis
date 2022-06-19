package com.iab.omid.library.verizonmedia.p450d;

import android.os.Build;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.d.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/a.class */
public final class C16510a {
    /* renamed from: a */
    public static JSONObject m7116a() {
        JSONObject jSONObject = new JSONObject();
        C16511b.m7109a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        C16511b.m7109a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        C16511b.m7109a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
