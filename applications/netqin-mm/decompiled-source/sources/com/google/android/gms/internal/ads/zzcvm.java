package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvm.class */
public final class zzcvm implements zzctb<zzdpa, zzcuu> {

    /* renamed from: a */
    public final zzcku f26595a;

    public zzcvm(zzcku zzckuVar) {
        this.f26595a = zzckuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzctb
    /* renamed from: a */
    public final zzctc<zzdpa, zzcuu> mo13804a(String str, JSONObject jSONObject) throws zzdos {
        zzdpa a = this.f26595a.m14103a(str, jSONObject);
        if (a == null) {
            return null;
        }
        return new zzctc<>(a, new zzcuu(), str);
    }
}
