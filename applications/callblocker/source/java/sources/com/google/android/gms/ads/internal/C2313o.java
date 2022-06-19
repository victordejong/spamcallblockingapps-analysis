package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.C2768ag;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.bzy;
import com.google.android.gms.internal.ads.dya;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.google.android.gms.ads.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/o.class */
public final class C2313o {

    /* renamed from: a */
    private final Context f6668a;

    /* renamed from: b */
    private final String f6669b;

    /* renamed from: c */
    private final Map<String, String> f6670c = new TreeMap();

    /* renamed from: d */
    private String f6671d;

    /* renamed from: e */
    private String f6672e;

    public C2313o(Context context, String str) {
        this.f6668a = context.getApplicationContext();
        this.f6669b = str;
    }

    /* renamed from: a */
    public final String m14776a() {
        return this.f6672e;
    }

    /* renamed from: a */
    public final void m14775a(dya dyaVar, C3647yd c3647yd) {
        this.f6671d = dyaVar.f16076j.f16287a;
        Bundle bundle = dyaVar.f16079m != null ? dyaVar.f16079m.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle == null) {
            return;
        }
        String mo13599a = C2768ag.f8121c.mo13599a();
        for (String str : bundle.keySet()) {
            if (mo13599a.equals(str)) {
                this.f6672e = bundle.getString(str);
            } else if (str.startsWith("csa_")) {
                this.f6670c.put(str.substring(4), bundle.getString(str));
            }
        }
        this.f6670c.put("SDKVersion", c3647yd.f17636a);
        if (!C2768ag.f8119a.mo13599a().booleanValue()) {
            return;
        }
        try {
            Bundle m11530a = bzy.m11530a(this.f6668a, new JSONArray(C2768ag.f8120b.mo13599a()));
            for (String str2 : m11530a.keySet()) {
                this.f6670c.put(str2, m11530a.get(str2).toString());
            }
        } catch (JSONException e) {
            C3556uu.m6748c("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
        }
    }

    /* renamed from: b */
    public final String m14774b() {
        return this.f6671d;
    }

    /* renamed from: c */
    public final String m14773c() {
        return this.f6669b;
    }

    /* renamed from: d */
    public final Map<String, String> m14772d() {
        return this.f6670c;
    }
}
