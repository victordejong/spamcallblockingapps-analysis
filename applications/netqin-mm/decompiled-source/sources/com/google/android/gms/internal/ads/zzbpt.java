package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpt.class */
public final class zzbpt implements zzeoy<Boolean> {

    /* renamed from: a */
    public final zzeph<zzdok> f25333a;

    public zzbpt(zzeph<zzdok> zzephVar) {
        this.f25333a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        boolean z;
        if (this.f25333a.get().m13442a() != null) {
            z = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23649A0)).booleanValue();
        } else {
            z = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23681G2)).booleanValue();
        }
        return Boolean.valueOf(z);
    }
}
