package com.facebook.appevents.p038s;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.facebook.appevents.C2271g;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2503y;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.s.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/c.class */
public class C2335c {

    /* renamed from: a */
    public static final Map<EnumC2337b, String> f2841a = new C2336a();

    /* renamed from: com.facebook.appevents.s.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/c$a.class */
    public static final class C2336a extends HashMap<EnumC2337b, String> {
        public C2336a() {
            put(EnumC2337b.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(EnumC2337b.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    }

    /* renamed from: com.facebook.appevents.s.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/c$b.class */
    public enum EnumC2337b {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    /* renamed from: a */
    public static JSONObject m35123a(EnumC2337b bVar, C2381b bVar2, String str, boolean z, Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, f2841a.get(bVar));
        String c = C2271g.m35328c();
        if (c != null) {
            jSONObject.put("app_user_id", c);
        }
        C2408g0.m34839a(jSONObject, bVar2, str, z);
        try {
            C2408g0.m34840a(jSONObject, context);
        } catch (Exception e) {
            C2503y.m34556a(EnumC6151v.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
