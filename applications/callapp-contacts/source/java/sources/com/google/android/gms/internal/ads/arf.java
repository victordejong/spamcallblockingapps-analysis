package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arf.class */
public final class arf extends emi {

    /* renamed from: a */
    final String f43089a;

    /* renamed from: b */
    private final String f43090b;

    /* renamed from: c */
    private final List<zzvx> f43091c;

    public arf(cov covVar, String str, bso bsoVar) {
        this.f43090b = covVar == null ? null : covVar.f46242V;
        String m18442a = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? m18442a(covVar) : null;
        this.f43089a = m18442a != null ? m18442a : str;
        this.f43091c = bsoVar.f44642a;
    }

    /* renamed from: a */
    private static String m18442a(cov covVar) {
        try {
            return covVar.f46274u.getString("class_name");
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: a */
    public final String mo14783a() {
        return this.f43089a;
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: b */
    public final String mo14782b() {
        return this.f43090b;
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: c */
    public final List<zzvx> mo14781c() {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42870eU)).booleanValue()) {
            return null;
        }
        return this.f43091c;
    }
}
