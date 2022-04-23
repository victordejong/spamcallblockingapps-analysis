package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkp.class */
public final class zzdkp implements zzeoy<zzdkm> {

    /* renamed from: a */
    public final zzeph<Context> f27461a;

    /* renamed from: b */
    public final zzeph<Executor> f27462b;

    /* renamed from: c */
    public final zzeph<zzbix> f27463c;

    /* renamed from: d */
    public final zzeph<zzdlv<zzbob, zzboh>> f27464d;

    /* renamed from: e */
    public final zzeph<zzdkc> f27465e;

    /* renamed from: f */
    public final zzeph<zzdom> f27466f;

    public zzdkp(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzbix> zzephVar3, zzeph<zzdlv<zzbob, zzboh>> zzephVar4, zzeph<zzdkc> zzephVar5, zzeph<zzdom> zzephVar6) {
        this.f27461a = zzephVar;
        this.f27462b = zzephVar2;
        this.f27463c = zzephVar3;
        this.f27464d = zzephVar4;
        this.f27465e = zzephVar5;
        this.f27466f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdkm(this.f27461a.get(), this.f27462b.get(), this.f27463c.get(), this.f27464d.get(), this.f27465e.get(), this.f27466f.get());
    }
}
