package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfc.class */
public final class zzbfc implements zzbft {
    @Override // com.google.android.gms.internal.ads.zzbft
    /* renamed from: a */
    public final zzbfl mo15657a(zzbdu zzbduVar, int i, String str, zzbdv zzbdvVar) {
        if (i <= 0) {
            return new zzbfs(zzbduVar);
        }
        int g = zzber.m15678g();
        return g < zzbdvVar.f24850g ? new zzbfw(zzbduVar, zzbdvVar) : g < zzbdvVar.f24845b ? new zzbfx(zzbduVar, zzbdvVar) : new zzbfv(zzbduVar);
    }
}
