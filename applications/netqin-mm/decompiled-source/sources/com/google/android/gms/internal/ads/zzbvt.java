package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvt.class */
public final class zzbvt implements zzeoy<zzbvr> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbvs>>> f25570a;

    public zzbvt(zzeph<Set<zzcab<zzbvs>>> zzephVar) {
        this.f25570a = zzephVar;
    }

    /* renamed from: a */
    public static zzbvt m15014a(zzeph<Set<zzcab<zzbvs>>> zzephVar) {
        return new zzbvt(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbvr(this.f25570a.get());
    }
}
