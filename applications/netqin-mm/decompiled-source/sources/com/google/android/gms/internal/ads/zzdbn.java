package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbn.class */
public final class zzdbn implements zzeoy<zzdbl> {

    /* renamed from: a */
    public final zzeph<Executor> f26881a;

    /* renamed from: b */
    public final zzeph<zzcpc> f26882b;

    public zzdbn(zzeph<Executor> zzephVar, zzeph<zzcpc> zzephVar2) {
        this.f26881a = zzephVar;
        this.f26882b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdbl(this.f26881a.get(), this.f26882b.get());
    }
}
