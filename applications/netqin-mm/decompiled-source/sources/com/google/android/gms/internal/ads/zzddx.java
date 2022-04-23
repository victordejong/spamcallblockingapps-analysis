package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddx.class */
public final class zzddx implements zzeoy<zzdnt> {

    /* renamed from: a */
    public final zzeph<Clock> f27191a;

    public zzddx(zzeph<Clock> zzephVar) {
        this.f27191a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdnt zzdntVar = new zzdnt(this.f27191a.get());
        zzepe.m12187a(zzdntVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdntVar;
    }
}
