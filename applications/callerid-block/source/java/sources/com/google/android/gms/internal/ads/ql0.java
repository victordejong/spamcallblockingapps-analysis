package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1378a;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1422h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ql0.class */
public final class ql0 {

    /* renamed from: a */
    private final Context f8211a;

    /* renamed from: b */
    private final cl0 f8212b;

    /* renamed from: c */
    private final zh2 f8213c;

    /* renamed from: d */
    private final zzbbq f8214d;

    /* renamed from: e */
    private final C1378a f8215e;

    /* renamed from: f */
    private final wv2 f8216f;

    /* renamed from: g */
    private final Executor f8217g;

    /* renamed from: h */
    private final zzagy f8218h;

    /* renamed from: i */
    private final jm0 f8219i;

    /* renamed from: j */
    private final ScheduledExecutorService f8220j;

    public ql0(Context context, cl0 cl0Var, zh2 zh2Var, zzbbq zzbbqVar, C1378a c1378a, wv2 wv2Var, Executor executor, sl1 sl1Var, jm0 jm0Var, ScheduledExecutorService scheduledExecutorService) {
        this.f8211a = context;
        this.f8212b = cl0Var;
        this.f8213c = zh2Var;
        this.f8214d = zzbbqVar;
        this.f8215e = c1378a;
        this.f8216f = wv2Var;
        this.f8217g = executor;
        this.f8218h = sl1Var.f8504i;
        this.f8219i = jm0Var;
        this.f8220j = scheduledExecutorService;
    }

    /* renamed from: g */
    public static final b2 m6097g(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return m6090n(optJSONObject);
    }

    /* renamed from: h */
    public static final List<b2> m6096h(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzede.zzi();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzede.zzi();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            b2 m6090n = m6090n(optJSONArray.optJSONObject(i));
            if (m6090n != null) {
                arrayList.add(m6090n);
            }
        }
        return zzede.zzm(arrayList);
    }

    /* renamed from: i */
    private final rz1<List<r5>> m6095i(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return kz1.a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(m6094j(jSONArray.optJSONObject(i), z));
        }
        return kz1.i(kz1.j(arrayList), il0.a, this.f8217g);
    }

    /* renamed from: j */
    private final rz1<r5> m6094j(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return kz1.a((Object) null);
        }
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return kz1.a((Object) null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt("width", -1);
        int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return kz1.a(new r5((Drawable) null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m6091m(jSONObject.optBoolean("require"), kz1.i(this.f8212b.m7813a(optString, optDouble, optBoolean), new jl0(optString, optDouble, optInt, optInt2), this.f8217g), null);
    }

    /* renamed from: k */
    private static Integer m6093k(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: l */
    private static <T> rz1<T> m6092l(rz1<T> rz1Var, T t) {
        return kz1.f(rz1Var, Exception.class, new nl0((Object) null), C2073zo.f9415f);
    }

    /* renamed from: m */
    private static <T> rz1<T> m6091m(boolean z, rz1<T> rz1Var, T t) {
        return z ? kz1.h(rz1Var, new ol0(rz1Var), C2073zo.f9415f) : m6092l(rz1Var, null);
    }

    /* renamed from: n */
    private static final b2 m6090n(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        b2 b2Var = null;
        if (!TextUtils.isEmpty(optString)) {
            b2Var = TextUtils.isEmpty(optString2) ? null : new b2(optString, optString2);
        }
        return b2Var;
    }

    /* renamed from: a */
    public final rz1<r5> m6103a(JSONObject jSONObject, String str) {
        return m6094j(jSONObject.optJSONObject(str), this.f8218h.c);
    }

    /* renamed from: b */
    public final rz1<List<r5>> m6102b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        zzagy zzagyVar = this.f8218h;
        return m6095i(optJSONArray, zzagyVar.c, zzagyVar.e);
    }

    /* renamed from: c */
    public final rz1<p5> m6101c(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return kz1.a((Object) null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        JSONArray jSONArray = optJSONArray;
        if (optJSONArray == null) {
            jSONArray = optJSONArray;
            if (optJSONObject2 != null) {
                jSONArray = new JSONArray();
                jSONArray.put(optJSONObject2);
            }
        }
        return m6091m(optJSONObject.optBoolean("require"), kz1.i(m6095i(jSONArray, false, true), new kl0(this, optJSONObject), this.f8217g), null);
    }

    /* renamed from: d */
    public final rz1<jt> m6100d(JSONObject jSONObject) {
        rz1<jt> rz1Var;
        JSONObject m8830h = C1422h0.m8830h(jSONObject, "html_containers", "instream");
        if (m8830h != null) {
            rz1<jt> m6958b = this.f8219i.m6958b(m8830h.optString("base_url"), m8830h.optString("html"));
            return kz1.h(m6958b, new ml0(m6958b), C2073zo.f9415f);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("video");
        if (optJSONObject != null) {
            if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                rz1Var = m6092l(kz1.g(this.f8219i.m6959a(optJSONObject), ((Integer) C1674c.m7906c().m6878b(C1842m3.f7306P1)).intValue(), TimeUnit.SECONDS, this.f8220j), null);
                return rz1Var;
            }
            C1894po.m6180f("Required field 'vast_xml' is missing");
        }
        rz1Var = kz1.a((Object) null);
        return rz1Var;
    }

    /* renamed from: e */
    final /* synthetic */ rz1 m6099e(String str, Object obj) {
        C1407r.m8919e();
        jt m5347a = C1982ut.m5347a(this.f8211a, C2058yu.m4695b(), "native-omid", false, false, this.f8213c, null, this.f8214d, null, null, this.f8215e, this.f8216f, null, null);
        ep f = ep.f(m5347a);
        m5347a.b1().k0(new pl0(f));
        m5347a.loadData(str, "text/html", "UTF-8");
        return f;
    }

    /* renamed from: f */
    final /* synthetic */ p5 m6098f(JSONObject jSONObject, List list) {
        p5 p5Var = null;
        if (list != null) {
            if (list.isEmpty()) {
                p5Var = null;
            } else {
                String optString = jSONObject.optString("text");
                Integer m6093k = m6093k(jSONObject, "bg_color");
                Integer m6093k2 = m6093k(jSONObject, "text_color");
                int optInt = jSONObject.optInt("text_size", -1);
                boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
                int optInt2 = jSONObject.optInt("animation_ms", 1000);
                int optInt3 = jSONObject.optInt("presentation_ms", 4000);
                Integer num = null;
                if (optInt > 0) {
                    num = Integer.valueOf(optInt);
                }
                p5Var = new p5(optString, list, m6093k, m6093k2, num, optInt3 + optInt2, this.f8218h.f, optBoolean);
            }
        }
        return p5Var;
    }
}
