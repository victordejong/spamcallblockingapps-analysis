package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxr.class */
public final class zzcxr implements zzctb<zzaph, zzcuu> {

    /* renamed from: a */
    public final zzcyy f26715a;

    public zzcxr(zzcyy zzcyyVar) {
        this.f26715a = zzcyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzctb
    /* renamed from: a */
    public final zzctc<zzaph, zzcuu> mo13804a(String str, JSONObject jSONObject) throws zzdos {
        zzaph b = this.f26715a.m13758b(str);
        if (b == null) {
            return null;
        }
        return new zzctc<>(b, new zzcuu(), str);
    }
}
