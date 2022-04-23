package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpe.class */
public final class zzcpe implements zzeoy<zzcpc> {

    /* renamed from: a */
    public final zzeph<ScheduledExecutorService> f26365a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26366b;

    /* renamed from: c */
    public final zzeph<zzcpx> f26367c;

    /* renamed from: d */
    public final zzeph<zzcqv> f26368d;

    public zzcpe(zzeph<ScheduledExecutorService> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcpx> zzephVar3, zzeph<zzcqv> zzephVar4) {
        this.f26365a = zzephVar;
        this.f26366b = zzephVar2;
        this.f26367c = zzephVar3;
        this.f26368d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcpc(this.f26365a.get(), this.f26366b.get(), this.f26367c.get(), zzeov.m12197b(this.f26368d));
    }
}
