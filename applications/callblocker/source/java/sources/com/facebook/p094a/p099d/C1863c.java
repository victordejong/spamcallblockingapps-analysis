package com.facebook.p094a.p099d;

import android.content.Context;
import com.facebook.EnumC2197q;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1904g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.facebook.a.d.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/c.class */
public class C1863c {

    /* renamed from: a */
    private static final Map<EnumC1865a, String> f5657a = new HashMap<EnumC1865a, String>() { // from class: com.facebook.a.d.c.1
        {
            put(EnumC1865a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(EnumC1865a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* renamed from: com.facebook.a.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/d/c$a.class */
    public enum EnumC1865a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    /* renamed from: a */
    public static JSONObject m16059a(EnumC1865a enumC1865a, C1994a c1994a, String str, boolean z, Context context) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f5657a.get(enumC1865a));
        String m15927d = C1904g.m15927d();
        if (m15927d != null) {
            jSONObject.put("app_user_id", m15927d);
        }
        C2079x.m15457a(jSONObject, c1994a, str, z);
        try {
            C2079x.m15458a(jSONObject, context);
        } catch (Exception e) {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
