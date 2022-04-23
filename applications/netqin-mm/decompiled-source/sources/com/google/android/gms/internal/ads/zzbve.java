package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbve.class */
public final class zzbve implements zzeoy<zzbvb> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbuy>>> f25568a;

    public zzbve(zzeph<Set<zzcab<zzbuy>>> zzephVar) {
        this.f25568a = zzephVar;
    }

    /* renamed from: a */
    public static zzbve m15026a(zzeph<Set<zzcab<zzbuy>>> zzephVar) {
        return new zzbve(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbvb(this.f25568a.get());
    }
}
