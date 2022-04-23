package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcs.class */
public final class zzdcs implements zzeoy<zzdcr> {

    /* renamed from: a */
    public final zzeph<Executor> f27132a;

    /* renamed from: b */
    public final zzeph<zzayb> f27133b;

    public zzdcs(zzeph<Executor> zzephVar, zzeph<zzayb> zzephVar2) {
        this.f27132a = zzephVar;
        this.f27133b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdcr m13650a(Executor executor, zzayb zzaybVar) {
        return new zzdcr(executor, zzaybVar);
    }

    /* renamed from: a */
    public static zzdcs m13651a(zzeph<Executor> zzephVar, zzeph<zzayb> zzephVar2) {
        return new zzdcs(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13650a(this.f27132a.get(), this.f27133b.get());
    }
}
