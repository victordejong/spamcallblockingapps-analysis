package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/th1.class */
public final class th1 {

    /* renamed from: a */
    private final Context f29992a;

    /* renamed from: b */
    private final bh1 f29993b;

    /* renamed from: c */
    private final C7016u f29994c;

    /* renamed from: d */
    private final zzcgz f29995d;

    /* renamed from: e */
    private final C5624a f29996e;

    /* renamed from: f */
    private final C6854pm f29997f;

    /* renamed from: g */
    private final Executor f29998g;

    /* renamed from: h */
    private final zzblv f29999h;

    /* renamed from: i */
    private final mi1 f30000i;

    /* renamed from: j */
    private final bl1 f30001j;

    /* renamed from: k */
    private final ScheduledExecutorService f30002k;

    /* renamed from: l */
    private final wj1 f30003l;

    /* renamed from: m */
    private final rn1 f30004m;

    /* renamed from: n */
    private final jo2 f30005n;

    /* renamed from: o */
    private final bp2 f30006o;

    /* renamed from: p */
    private final dw1 f30007p;

    public th1(Context context, bh1 bh1Var, C7016u c7016u, zzcgz zzcgzVar, C5624a c5624a, C6854pm c6854pm, Executor executor, xj2 xj2Var, mi1 mi1Var, bl1 bl1Var, ScheduledExecutorService scheduledExecutorService, rn1 rn1Var, jo2 jo2Var, bp2 bp2Var, dw1 dw1Var, wj1 wj1Var) {
        this.f29992a = context;
        this.f29993b = bh1Var;
        this.f29994c = c7016u;
        this.f29995d = zzcgzVar;
        this.f29996e = c5624a;
        this.f29997f = c6854pm;
        this.f29998g = executor;
        this.f29999h = xj2Var.f32082i;
        this.f30000i = mi1Var;
        this.f30001j = bl1Var;
        this.f30002k = scheduledExecutorService;
        this.f30004m = rn1Var;
        this.f30005n = jo2Var;
        this.f30006o = bp2Var;
        this.f30007p = dw1Var;
        this.f30003l = wj1Var;
    }

    /* renamed from: i */
    public static final BinderC7158xu m10668i(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return m10659r(optJSONObject);
    }

    /* renamed from: j */
    public static final List<BinderC7158xu> m10667j(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzfoj.zzi();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzfoj.zzi();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            BinderC7158xu m10659r = m10659r(optJSONArray.optJSONObject(i));
            if (m10659r != null) {
                arrayList.add(m10659r);
            }
        }
        return zzfoj.zzp(arrayList);
    }

    /* renamed from: k */
    private final r03<List<BinderC6940ry>> m10666k(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return k03.m14003a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(m10665l(jSONArray.optJSONObject(i), z));
        }
        return k03.m13994j(k03.m13993k(arrayList), ih1.f24280a, this.f29998g);
    }

    /* renamed from: l */
    private final r03<BinderC6940ry> m10665l(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return k03.m14003a(null);
        }
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return k03.m14003a(null);
        }
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        int optInt = jSONObject.optInt("width", -1);
        int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return k03.m14003a(new BinderC6940ry(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m10661p(jSONObject.optBoolean("require"), k03.m13994j(this.f29993b.m16373a(optString, optDouble, optBoolean), new nu2(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.kh1

            /* renamed from: a */
            private final String f25216a;

            /* renamed from: b */
            private final double f25217b;

            /* renamed from: c */
            private final int f25218c;

            /* renamed from: d */
            private final int f25219d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25216a = optString;
                this.f25217b = optDouble;
                this.f25218c = optInt;
                this.f25219d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                String str = this.f25216a;
                return new BinderC6940ry(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f25217b, this.f25218c, this.f25219d);
            }
        }, this.f29998g), null);
    }

    /* renamed from: m */
    private static Integer m10664m(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: n */
    private final r03<wn0> m10663n(JSONObject jSONObject, ej2 ej2Var, jj2 jj2Var) {
        r03<wn0> m13191b = this.f30000i.m13191b(jSONObject.optString("base_url"), jSONObject.optString("html"), ej2Var, jj2Var, m10660q(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)));
        return k03.m13995i(m13191b, new uz2(m13191b) { // from class: com.google.android.gms.internal.ads.ph1

            /* renamed from: a */
            private final r03 f28011a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28011a = m13191b;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                r03 r03Var = this.f28011a;
                wn0 wn0Var = (wn0) obj;
                if (wn0Var == null || wn0Var.mo7909f() == null) {
                    throw new zzehs(1, "Retrieve video view in html5 ad response failed.");
                }
                return r03Var;
            }
        }, qi0.f28500f);
    }

    /* renamed from: o */
    private static <T> r03<T> m10662o(r03<T> r03Var, T t) {
        return k03.m13997g(r03Var, Exception.class, new uz2(null) { // from class: com.google.android.gms.internal.ads.qh1
            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                C5722o1.m17989l("Error during loading assets.", (Exception) obj);
                return k03.m14003a(null);
            }
        }, qi0.f28500f);
    }

    /* renamed from: p */
    private static <T> r03<T> m10661p(boolean z, r03<T> r03Var, T t) {
        return z ? k03.m13995i(r03Var, new uz2(r03Var) { // from class: com.google.android.gms.internal.ads.rh1

            /* renamed from: a */
            private final r03 f28956a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28956a = r03Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return obj != null ? this.f28956a : k03.m14001c(new zzehs(1, "Retrieve required value in native ad response failed."));
            }
        }, qi0.f28500f) : m10662o(r03Var, null);
    }

    /* renamed from: q */
    private final zzbdl m10660q(int i, int i2) {
        int i3 = i;
        if (i == 0) {
            if (i2 == 0) {
                return zzbdl.m8082l0();
            }
            i3 = 0;
        }
        return new zzbdl(this.f29992a, new C5605f(i3, i2));
    }

    /* renamed from: r */
    private static final BinderC7158xu m10659r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        BinderC7158xu binderC7158xu = null;
        if (!TextUtils.isEmpty(optString)) {
            binderC7158xu = TextUtils.isEmpty(optString2) ? null : new BinderC7158xu(optString, optString2);
        }
        return binderC7158xu;
    }

    /* renamed from: a */
    public final r03<BinderC6940ry> m10676a(JSONObject jSONObject, String str) {
        return m10665l(jSONObject.optJSONObject(str), this.f29999h.f33718e);
    }

    /* renamed from: b */
    public final r03<List<BinderC6940ry>> m10675b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        zzblv zzblvVar = this.f29999h;
        return m10666k(optJSONArray, zzblvVar.f33718e, zzblvVar.f33720g);
    }

    /* renamed from: c */
    public final r03<wn0> m10674c(JSONObject jSONObject, String str, ej2 ej2Var, jj2 jj2Var) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25554O6)).booleanValue()) {
            return k03.m14003a(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return k03.m14003a(null);
        }
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return k03.m14003a(null);
        }
        String optString = optJSONObject.optString("base_url");
        String optString2 = optJSONObject.optString("html");
        zzbdl m10660q = m10660q(optJSONObject.optInt("width", 0), optJSONObject.optInt("height", 0));
        if (TextUtils.isEmpty(optString2)) {
            return k03.m14003a(null);
        }
        r03 m13995i = k03.m13995i(k03.m14003a(null), new uz2(this, m10660q, ej2Var, jj2Var, optString, optString2) { // from class: com.google.android.gms.internal.ads.lh1

            /* renamed from: a */
            private final th1 f26120a;

            /* renamed from: b */
            private final zzbdl f26121b;

            /* renamed from: c */
            private final ej2 f26122c;

            /* renamed from: d */
            private final jj2 f26123d;

            /* renamed from: e */
            private final String f26124e;

            /* renamed from: f */
            private final String f26125f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26120a = this;
                this.f26121b = m10660q;
                this.f26122c = ej2Var;
                this.f26123d = jj2Var;
                this.f26124e = optString;
                this.f26125f = optString2;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f26120a.m10669h(this.f26121b, this.f26122c, this.f26123d, this.f26124e, this.f26125f, obj);
            }
        }, qi0.f28499e);
        return k03.m13995i(m13995i, new uz2(m13995i) { // from class: com.google.android.gms.internal.ads.mh1

            /* renamed from: a */
            private final r03 f26602a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26602a = m13995i;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                r03 r03Var = this.f26602a;
                if (((wn0) obj) != null) {
                    return r03Var;
                }
                throw new zzehs(1, "Retrieve Web View from image ad response failed.");
            }
        }, qi0.f28500f);
    }

    /* renamed from: d */
    public final r03<BinderC6866py> m10673d(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return k03.m14003a(null);
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
        return m10661p(optJSONObject.optBoolean("require"), k03.m13994j(m10666k(jSONArray, false, true), new nu2(this, optJSONObject) { // from class: com.google.android.gms.internal.ads.nh1

            /* renamed from: a */
            private final th1 f27147a;

            /* renamed from: b */
            private final JSONObject f27148b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27147a = this;
                this.f27148b = optJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                return this.f27147a.m10670g(this.f27148b, (List) obj);
            }
        }, this.f29998g), null);
    }

    /* renamed from: e */
    public final r03<wn0> m10672e(JSONObject jSONObject, ej2 ej2Var, jj2 jj2Var) {
        r03<wn0> r03Var;
        r03<wn0> r03Var2;
        JSONObject m17917h = C5748x0.m17917h(jSONObject, "html_containers", "instream");
        if (m17917h == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                r03Var = k03.m14003a(null);
            } else {
                String optString = optJSONObject.optString("vast_xml");
                boolean z = false;
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25546N6)).booleanValue()) {
                    z = false;
                    if (optJSONObject.has("html")) {
                        z = true;
                    }
                }
                if (TextUtils.isEmpty(optString)) {
                    if (!z) {
                        ei0.m15464f("Required field 'vast_xml' or 'html' is missing");
                        r03Var = k03.m14003a(null);
                    }
                } else if (!z) {
                    r03Var2 = this.f30000i.m13192a(optJSONObject);
                    r03Var = m10662o(k03.m13996h(r03Var2, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25737l2)).intValue(), TimeUnit.SECONDS, this.f30002k), null);
                }
                r03Var2 = m10663n(optJSONObject, ej2Var, jj2Var);
                r03Var = m10662o(k03.m13996h(r03Var2, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25737l2)).intValue(), TimeUnit.SECONDS, this.f30002k), null);
            }
            return r03Var;
        }
        return m10663n(m17917h, ej2Var, jj2Var);
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m10671f(String str, Object obj) {
        C5667s.m18159e();
        wn0 m14581a = ho0.m14581a(this.f29992a, mp0.m13133b(), "native-omid", false, false, this.f29994c, null, this.f29995d, null, null, this.f29996e, this.f29997f, null, null);
        ui0 m10325g = ui0.m10325g(m14581a);
        m14581a.mo7914c0().mo14085f0(new hp0(m10325g) { // from class: com.google.android.gms.internal.ads.sh1

            /* renamed from: d */
            private final ui0 f29512d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29512d = m10325g;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                this.f29512d.m10324h();
            }
        });
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25834x3)).booleanValue()) {
            m14581a.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            m14581a.loadData(str, "text/html", "UTF-8");
        }
        return m10325g;
    }

    /* renamed from: g */
    public final /* synthetic */ BinderC6866py m10670g(JSONObject jSONObject, List list) {
        BinderC6866py binderC6866py = null;
        if (list != null) {
            if (list.isEmpty()) {
                binderC6866py = null;
            } else {
                String optString = jSONObject.optString("text");
                Integer m10664m = m10664m(jSONObject, "bg_color");
                Integer m10664m2 = m10664m(jSONObject, "text_color");
                int optInt = jSONObject.optInt("text_size", -1);
                boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
                int optInt2 = jSONObject.optInt("animation_ms", 1000);
                int optInt3 = jSONObject.optInt("presentation_ms", 4000);
                Integer num = null;
                if (optInt > 0) {
                    num = Integer.valueOf(optInt);
                }
                binderC6866py = new BinderC6866py(optString, list, m10664m, m10664m2, num, optInt3 + optInt2, this.f29999h.f33721h, optBoolean);
            }
        }
        return binderC6866py;
    }

    /* renamed from: h */
    public final /* synthetic */ r03 m10669h(zzbdl zzbdlVar, ej2 ej2Var, jj2 jj2Var, String str, String str2, Object obj) {
        wn0 m16322b = this.f30001j.m16322b(zzbdlVar, ej2Var, jj2Var);
        ui0 m10325g = ui0.m10325g(m16322b);
        tj1 m9580b = this.f30003l.m9580b();
        m16322b.mo7914c0().mo14079q0(m9580b, m9580b, m9580b, m9580b, m9580b, false, null, new C5625b(this.f29992a, null, null), null, null, this.f30007p, this.f30006o, this.f30004m, this.f30005n, null, m9580b);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25729k2)).booleanValue()) {
            m16322b.mo7899l0("/getNativeAdViewSignals", m20.f26401s);
        }
        m16322b.mo7899l0("/getNativeClickMeta", m20.f26402t);
        m16322b.mo7914c0().mo14085f0(new hp0(m10325g) { // from class: com.google.android.gms.internal.ads.jh1

            /* renamed from: d */
            private final ui0 f24881d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24881d = m10325g;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                ui0 ui0Var = this.f24881d;
                if (z) {
                    ui0Var.m10324h();
                } else {
                    ui0Var.m10014f(new zzehs(1, "Image Web View failed to load."));
                }
            }
        });
        m16322b.mo7915b1(str, str2, null);
        return m10325g;
    }
}
