package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcur.class */
public final class zzcur implements zzeoy<zzcun> {

    /* renamed from: a */
    public final zzeph<zzbpm> f26561a;

    /* renamed from: b */
    public final zzeph<zzctt> f26562b;

    /* renamed from: c */
    public final zzeph<zzbug> f26563c;

    /* renamed from: d */
    public final zzeph<ScheduledExecutorService> f26564d;

    /* renamed from: e */
    public final zzeph<zzdzb> f26565e;

    public zzcur(zzeph<zzbpm> zzephVar, zzeph<zzctt> zzephVar2, zzeph<zzbug> zzephVar3, zzeph<ScheduledExecutorService> zzephVar4, zzeph<zzdzb> zzephVar5) {
        this.f26561a = zzephVar;
        this.f26562b = zzephVar2;
        this.f26563c = zzephVar3;
        this.f26564d = zzephVar4;
        this.f26565e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcun(this.f26561a.get(), this.f26562b.get(), this.f26563c.get(), this.f26564d.get(), this.f26565e.get());
    }
}
