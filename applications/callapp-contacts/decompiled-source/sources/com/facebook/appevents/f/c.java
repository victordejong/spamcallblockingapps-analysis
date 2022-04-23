package com.facebook.appevents.f;

import android.content.Context;
import com.facebook.appevents.g;
import com.facebook.internal.ae;
import com.facebook.internal.b;
import com.facebook.internal.x;
import com.facebook.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<a, String> f19554a = new HashMap<a, String>() { // from class: com.facebook.appevents.f.c.1
        {
            put(a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/c$a.class */
    public enum a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    public static JSONObject a(a aVar, b bVar, String str, boolean z, Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f19554a.get(aVar));
        String c2 = g.c();
        if (c2 != null) {
            jSONObject.put("app_user_id", c2);
        }
        ae.a(jSONObject, bVar, str, z);
        try {
            ae.a(jSONObject, context);
        } catch (Exception e) {
            x.a(m.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        JSONObject g = ae.g();
        if (g != null) {
            Iterator<String> keys = g.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, g.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
