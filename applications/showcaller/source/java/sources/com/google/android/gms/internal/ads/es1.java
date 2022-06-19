package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/es1.class */
public final class es1 {

    /* renamed from: a */
    private final sp0 f22520a;

    /* renamed from: b */
    private final Context f22521b;

    /* renamed from: c */
    private final zzcgz f22522c;

    /* renamed from: d */
    private final xj2 f22523d;

    /* renamed from: e */
    private final Executor f22524e;

    /* renamed from: f */
    private final String f22525f;

    /* renamed from: g */
    private final s51 f22526g;

    /* renamed from: h */
    private final w51 f22527h;

    public es1(sp0 sp0Var, Context context, zzcgz zzcgzVar, xj2 xj2Var, Executor executor, String str, s51 s51Var, w51 w51Var) {
        this.f22520a = sp0Var;
        this.f22521b = context;
        this.f22522c = zzcgzVar;
        this.f22523d = xj2Var;
        this.f22524e = executor;
        this.f22525f = str;
        this.f22526g = s51Var;
        this.f22527h = w51Var;
    }

    /* renamed from: e */
    private final r03<rj2> m15397e(String str, String str2) {
        r60 m14747b = C5667s.m18147q().m14747b(this.f22521b, this.f22522c);
        l60<JSONObject> l60Var = o60.f27442b;
        r03<rj2> m13995i = k03.m13995i(k03.m13995i(k03.m13995i(k03.m14003a(""), new uz2(this, str, str2) { // from class: com.google.android.gms.internal.ads.as1

            /* renamed from: a */
            private final es1 f20110a;

            /* renamed from: b */
            private final String f20111b;

            /* renamed from: c */
            private final String f20112c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20110a = this;
                this.f20111b = str;
                this.f20112c = str2;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                String str3 = this.f20111b;
                String str4 = this.f20112c;
                String str5 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return k03.m14003a(jSONObject);
                } catch (JSONException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    throw new JSONException(valueOf.length() != 0 ? "Preloaded loader: ".concat(valueOf) : new String("Preloaded loader: "));
                }
            }
        }, this.f22524e), new uz2(m14747b.m11677a("google.afma.response.normalize", l60Var, l60Var)) { // from class: com.google.android.gms.internal.ads.bs1

            /* renamed from: a */
            private final g60 f20953a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20953a = m11677a;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f20953a.mo10088b((JSONObject) obj);
            }
        }, this.f22524e), new uz2(this) { // from class: com.google.android.gms.internal.ads.cs1

            /* renamed from: a */
            private final es1 f21368a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21368a = this;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f21368a.m15398d((JSONObject) obj);
            }
        }, this.f22524e);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            k03.m13988p(m13995i, new ds1(this), qi0.f28500f);
        }
        return m13995i;
    }

    /* renamed from: f */
    private final String m15396f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.f22525f));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            ei0.m15464f("Failed to update the ad types for rendering. ".concat(e.toString()));
            return str;
        }
    }

    /* renamed from: g */
    private static final String m15395g(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: c */
    public final r03<rj2> m15399c() {
        String str = this.f22523d.f32077d.f33658A;
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25716i5)).booleanValue()) {
                String m15395g = m15395g(str);
                if (TextUtils.isEmpty(m15395g)) {
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
                        this.f22527h.mo8520y(true);
                    }
                    return k03.m14001c(new zzehs(15, "Invalid ad string."));
                }
                String m17788c = this.f22520a.mo10940z().m17788c(m15395g);
                if (!TextUtils.isEmpty(m17788c)) {
                    return m15397e(str, m15396f(m17788c));
                }
            }
        }
        zzbcx zzbcxVar = this.f22523d.f32077d.f33677v;
        if (zzbcxVar != null) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25700g5)).booleanValue()) {
                String m15395g2 = m15395g(zzbcxVar.f33651d);
                String m15395g3 = m15395g(zzbcxVar.f33652e);
                if (!TextUtils.isEmpty(m15395g3) && m15395g2.equals(m15395g3)) {
                    this.f22520a.mo10940z().m17787d(m15395g2);
                }
            }
            return m15397e(zzbcxVar.f33651d, m15396f(zzbcxVar.f33652e));
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            this.f22527h.mo8520y(true);
        }
        return k03.m14001c(new zzehs(14, "Mismatch request IDs."));
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m15398d(JSONObject jSONObject) {
        return k03.m14003a(new rj2(new oj2(this.f22523d), qj2.m11869a(new StringReader(jSONObject.toString()))));
    }
}
