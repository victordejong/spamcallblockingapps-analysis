package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxw.class */
public final class zzbxw implements zzeoy<zzbxu> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbxz>>> f25593a;

    public zzbxw(zzeph<Set<zzcab<zzbxz>>> zzephVar) {
        this.f25593a = zzephVar;
    }

    /* renamed from: a */
    public static zzbxw m14960a(zzeph<Set<zzcab<zzbxz>>> zzephVar) {
        return new zzbxw(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbxu(this.f25593a.get());
    }
}
