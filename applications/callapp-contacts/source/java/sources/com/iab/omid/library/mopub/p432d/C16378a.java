package com.iab.omid.library.mopub.p432d;

import android.os.Build;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.d.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/a.class */
public final class C16378a {
    /* renamed from: a */
    public static JSONObject m7339a() {
        JSONObject jSONObject = new JSONObject();
        C16379b.m7332a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        C16379b.m7332a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        C16379b.m7332a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
