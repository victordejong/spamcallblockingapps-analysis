package com.iab.omid.library.verizonmedia.d;

import android.os.Build;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/a.class */
public final class a {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        b.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        b.a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
