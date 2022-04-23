package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arf.class */
public final class arf extends emi {

    /* renamed from: a  reason: collision with root package name */
    final String f23815a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23816b;

    /* renamed from: c  reason: collision with root package name */
    private final List<zzvx> f23817c;

    public arf(cov covVar, String str, bso bsoVar) {
        String str2 = null;
        this.f23816b = covVar == null ? null : covVar.V;
        str2 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? a(covVar) : str2;
        this.f23815a = str2 != null ? str2 : str;
        this.f23817c = bsoVar.f25015a;
    }

    private static String a(cov covVar) {
        try {
            return covVar.u.getString("class_name");
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.emj
    public final String a() {
        return this.f23815a;
    }

    @Override // com.google.android.gms.internal.ads.emj
    public final String b() {
        return this.f23816b;
    }

    @Override // com.google.android.gms.internal.ads.emj
    public final List<zzvx> c() {
        if (!((Boolean) ekb.e().a(aq.eU)).booleanValue()) {
            return null;
        }
        return this.f23817c;
    }
}
