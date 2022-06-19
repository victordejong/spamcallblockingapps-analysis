package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.kj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kj.class */
public final class C3275kj {

    /* renamed from: a */
    public final List<C3276kk> f16853a;

    /* renamed from: b */
    private final long f16854b;

    /* renamed from: c */
    private final List<String> f16855c;

    /* renamed from: d */
    private final List<String> f16856d;

    /* renamed from: e */
    private final List<String> f16857e;

    /* renamed from: f */
    private final List<String> f16858f;

    /* renamed from: g */
    private final List<String> f16859g;

    /* renamed from: h */
    private final boolean f16860h;

    /* renamed from: i */
    private final String f16861i;

    /* renamed from: j */
    private final long f16862j;

    /* renamed from: k */
    private final String f16863k;

    /* renamed from: l */
    private final int f16864l;

    /* renamed from: m */
    private final int f16865m;

    /* renamed from: n */
    private final long f16866n;

    /* renamed from: o */
    private final boolean f16867o;

    /* renamed from: p */
    private final boolean f16868p;

    /* renamed from: q */
    private final boolean f16869q;

    /* renamed from: r */
    private final boolean f16870r;

    /* renamed from: s */
    private int f16871s;

    /* renamed from: t */
    private int f16872t;

    /* renamed from: u */
    private boolean f16873u;

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public C3275kj(JSONObject jSONObject) {
        int i;
        int i2;
        boolean z;
        if (C3556uu.m6753a(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            C3556uu.m7052a(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i3 >= jSONArray.length()) {
                break;
            }
            try {
                C3276kk c3276kk = new C3276kk(jSONArray.getJSONObject(i3));
                if ("banner".equalsIgnoreCase(c3276kk.f16876c)) {
                    this.f16873u = true;
                }
                arrayList.add(c3276kk);
                i2 = i;
                if (i < 0) {
                    Iterator<String> it = c3276kk.f16874a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        } else if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                            z = true;
                            break;
                        }
                    }
                    i2 = i;
                    if (z) {
                        i2 = i3;
                    }
                }
            } catch (JSONException e) {
                i2 = i;
            }
            i3++;
            i4 = i2;
        }
        this.f16871s = i;
        this.f16872t = jSONArray.length();
        this.f16853a = Collections.unmodifiableList(arrayList);
        this.f16861i = jSONObject.optString("qdata");
        this.f16865m = jSONObject.optInt("fs_model_type", -1);
        this.f16866n = jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject == null) {
            this.f16854b = -1L;
            this.f16855c = null;
            this.f16856d = null;
            this.f16857e = null;
            this.f16858f = null;
            this.f16859g = null;
            this.f16862j = -1L;
            this.f16863k = null;
            this.f16864l = 0;
            this.f16867o = false;
            this.f16860h = false;
            this.f16868p = false;
            this.f16869q = false;
            this.f16870r = false;
            return;
        }
        this.f16854b = optJSONObject.optLong("ad_network_timeout_millis", -1L);
        C2341q.m14726u();
        this.f16855c = C3278km.m7665a(optJSONObject, "click_urls");
        C2341q.m14726u();
        this.f16856d = C3278km.m7665a(optJSONObject, "imp_urls");
        C2341q.m14726u();
        this.f16857e = C3278km.m7665a(optJSONObject, "downloaded_imp_urls");
        C2341q.m14726u();
        this.f16858f = C3278km.m7665a(optJSONObject, "nofill_urls");
        C2341q.m14726u();
        this.f16859g = C3278km.m7665a(optJSONObject, "remote_ping_urls");
        this.f16860h = optJSONObject.optBoolean("render_in_browser", false);
        long optLong = optJSONObject.optLong("refresh", -1L);
        this.f16862j = optLong > 0 ? optLong * 1000 : (char) 65535;
        C3472rr m7219a = C3472rr.m7219a(optJSONObject.optJSONArray("rewards"));
        if (m7219a == null) {
            this.f16863k = null;
            this.f16864l = 0;
        } else {
            this.f16863k = m7219a.f17313a;
            this.f16864l = m7219a.f17314b;
        }
        this.f16867o = optJSONObject.optBoolean("use_displayed_impression", false);
        this.f16868p = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        this.f16869q = optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        this.f16870r = optJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
