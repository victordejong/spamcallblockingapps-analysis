package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C1918r4;
import com.google.android.gms.internal.ads.fd1;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzys;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.google.android.gms.ads.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/p.class */
final class C1406p {

    /* renamed from: a */
    private final Context f5521a;

    /* renamed from: b */
    private final String f5522b;

    /* renamed from: c */
    private final Map<String, String> f5523c = new TreeMap();

    /* renamed from: d */
    private String f5524d;

    /* renamed from: e */
    private String f5525e;

    public C1406p(Context context, String str) {
        this.f5521a = context.getApplicationContext();
        this.f5522b = str;
    }

    /* renamed from: a */
    public final String m8929a() {
        return this.f5525e;
    }

    /* renamed from: b */
    public final String m8928b() {
        return this.f5524d;
    }

    /* renamed from: c */
    public final String m8927c() {
        return this.f5522b;
    }

    /* renamed from: d */
    public final Map<String, String> m8926d() {
        return this.f5523c;
    }

    /* renamed from: e */
    public final void m8925e(zzys zzysVar, zzbbq zzbbqVar) {
        this.f5524d = zzysVar.k.b;
        Bundle bundle = zzysVar.n;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String m6222e = C1918r4.f8325c.m6222e();
        for (String str : bundle2.keySet()) {
            if (m6222e.equals(str)) {
                this.f5525e = bundle2.getString(str);
            } else if (str.startsWith("csa_")) {
                this.f5523c.put(str.substring(4), bundle2.getString(str));
            }
        }
        this.f5523c.put("SDKVersion", zzbbqVar.b);
        if (!C1918r4.f8323a.m6222e().booleanValue()) {
            return;
        }
        try {
            Bundle a = fd1.a(this.f5521a, new JSONArray(C1918r4.f8324b.m6222e()));
            for (String str2 : a.keySet()) {
                this.f5523c.put(str2, a.get(str2).toString());
            }
        } catch (JSONException e) {
            C1894po.m6182d("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
        }
    }
}
