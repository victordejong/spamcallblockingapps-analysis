package com.inmobi.commons.core.utilities.p516b;

import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8359h;
import com.inmobi.sdk.InMobiSdk;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.utilities.b.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/e.class */
public final class C8401e {

    /* renamed from: a */
    public static final String f32663a = "com.inmobi.commons.core.utilities.b.e";

    /* renamed from: b */
    public static JSONObject f32664b;

    /* renamed from: c */
    public static C8359h f32665c = new C8359h();

    /* renamed from: d */
    public static C8348b.AbstractC8351c f32666d = new C8348b.AbstractC8351c() { // from class: com.inmobi.commons.core.utilities.b.e.1
        @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
        /* renamed from: a */
        public final void mo5529a(AbstractC8346a aVar) {
            C8359h unused = C8401e.f32665c = (C8359h) aVar;
        }
    };

    /* renamed from: a */
    public static int m5679a(boolean z) {
        int i;
        int i2 = f32665c.f32504d;
        int f = m5674f();
        if (!(f == 1 || i2 == 1 || z)) {
            if (i2 == 0) {
                i = 0;
            } else {
                i = 0;
                if (i2 == -1) {
                    if (f == 0) {
                        i = 0;
                    }
                }
            }
            return i;
        }
        i = 1;
        return i;
    }

    /* renamed from: a */
    public static JSONObject m5682a() {
        return f32664b;
    }

    /* renamed from: a */
    public static void m5680a(JSONObject jSONObject) {
        f32664b = jSONObject;
    }

    /* renamed from: b */
    public static boolean m5678b() {
        JSONObject jSONObject = f32664b;
        if (jSONObject == null) {
            return false;
        }
        try {
            if (jSONObject.has(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE)) {
                return !jSONObject.getBoolean(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE);
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static void m5677c() {
        C8348b.m5847a().m5844a(f32665c, f32666d);
    }

    /* renamed from: d */
    public static int m5676d() {
        return m5679a(false);
    }

    /* renamed from: e */
    public static boolean m5675e() {
        boolean z = false;
        if (m5679a(false) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public static int m5674f() {
        JSONObject jSONObject = f32664b;
        if (jSONObject == null || !jSONObject.has(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE)) {
            return -1;
        }
        try {
            return jSONObject.getBoolean(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE) ? 1 : 0;
        } catch (JSONException e) {
            return -1;
        }
    }
}
