package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxm.class */
public final class zzcxm implements zzeoy<zzcxb> {

    /* renamed from: a */
    public final zzeph<Context> f26709a;

    /* renamed from: b */
    public final zzeph<zzbbx> f26710b;

    /* renamed from: c */
    public final zzeph<zzdok> f26711c;

    /* renamed from: d */
    public final zzeph<Executor> f26712d;

    /* renamed from: e */
    public final zzeph<zzcjj> f26713e;

    /* renamed from: f */
    public final zzeph<zzcjt> f26714f;

    public zzcxm(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<Executor> zzephVar4, zzeph<zzcjj> zzephVar5, zzeph<zzcjt> zzephVar6) {
        this.f26709a = zzephVar;
        this.f26710b = zzephVar2;
        this.f26711c = zzephVar3;
        this.f26712d = zzephVar4;
        this.f26713e = zzephVar5;
        this.f26714f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcxb(this.f26709a.get(), this.f26710b.get(), this.f26711c.get(), this.f26712d.get(), this.f26713e.get(), this.f26714f.get());
    }
}
