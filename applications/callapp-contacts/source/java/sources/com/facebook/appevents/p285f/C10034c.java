package com.facebook.appevents.p285f;

import android.content.Context;
import com.facebook.EnumC10396m;
import com.facebook.appevents.C10046g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10234b;
import com.facebook.internal.C10336x;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.f.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/c.class */
public final class C10034c {

    /* renamed from: a */
    private static final Map<EnumC10036a, String> f33318a = new HashMap<EnumC10036a, String>() { // from class: com.facebook.appevents.f.c.1
        {
            put(EnumC10036a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(EnumC10036a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* renamed from: com.facebook.appevents.f.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/c$a.class */
    public enum EnumC10036a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    /* renamed from: a */
    public static JSONObject m23554a(EnumC10036a enumC10036a, C10234b c10234b, String str, boolean z, Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f33318a.get(enumC10036a));
        String m23530c = C10046g.m23530c();
        if (m23530c != null) {
            jSONObject.put("app_user_id", m23530c);
        }
        C10213ae.m23217a(jSONObject, c10234b, str, z);
        try {
            C10213ae.m23218a(jSONObject, context);
        } catch (Exception e) {
            C10336x.m22992a(EnumC10396m.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        JSONObject m23188g = C10213ae.m23188g();
        if (m23188g != null) {
            Iterator<String> keys = m23188g.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, m23188g.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
