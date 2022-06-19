package com.iab.omid.library.pubnativenet.p441d;

import android.os.Build;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.d.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/a.class */
public final class C16444a {
    /* renamed from: a */
    public static JSONObject m7237a() {
        JSONObject jSONObject = new JSONObject();
        C16445b.m7230a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        C16445b.m7230a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        C16445b.m7230a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
