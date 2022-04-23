package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuc.class */
public final class zzcuc implements zzeoy<zzctt> {

    /* renamed from: a */
    public final zzeph<zzbpm> f26533a;

    /* renamed from: b */
    public final zzeph<Context> f26534b;

    /* renamed from: c */
    public final zzeph<Executor> f26535c;

    /* renamed from: d */
    public final zzeph<zzcjt> f26536d;

    /* renamed from: e */
    public final zzeph<zzdok> f26537e;

    /* renamed from: f */
    public final zzeph<zzdvu<zzdnv, zzazp>> f26538f;

    public zzcuc(zzeph<zzbpm> zzephVar, zzeph<Context> zzephVar2, zzeph<Executor> zzephVar3, zzeph<zzcjt> zzephVar4, zzeph<zzdok> zzephVar5, zzeph<zzdvu<zzdnv, zzazp>> zzephVar6) {
        this.f26533a = zzephVar;
        this.f26534b = zzephVar2;
        this.f26535c = zzephVar3;
        this.f26536d = zzephVar4;
        this.f26537e = zzephVar5;
        this.f26538f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzctt(this.f26533a.get(), this.f26534b.get(), this.f26535c.get(), this.f26536d.get(), this.f26537e.get(), this.f26538f.get());
    }
}
