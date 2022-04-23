package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdid.class */
public final class zzdid implements zzeoy<zzdhz> {

    /* renamed from: a */
    public final zzeph<zzaxx> f27363a;

    /* renamed from: b */
    public final zzeph<Integer> f27364b;

    /* renamed from: c */
    public final zzeph<Context> f27365c;

    /* renamed from: d */
    public final zzeph<zzayb> f27366d;

    /* renamed from: e */
    public final zzeph<ScheduledExecutorService> f27367e;

    /* renamed from: f */
    public final zzeph<Executor> f27368f;

    public zzdid(zzeph<zzaxx> zzephVar, zzeph<Integer> zzephVar2, zzeph<Context> zzephVar3, zzeph<zzayb> zzephVar4, zzeph<ScheduledExecutorService> zzephVar5, zzeph<Executor> zzephVar6) {
        this.f27363a = zzephVar;
        this.f27364b = zzephVar2;
        this.f27365c = zzephVar3;
        this.f27366d = zzephVar4;
        this.f27367e = zzephVar5;
        this.f27368f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdhz(this.f27363a.get(), this.f27364b.get().intValue(), this.f27365c.get(), this.f27366d.get(), this.f27367e.get(), this.f27368f.get());
    }
}
