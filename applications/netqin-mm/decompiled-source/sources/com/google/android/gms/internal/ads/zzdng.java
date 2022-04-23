package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdng.class */
public final class zzdng implements zzeoy<zzdnb> {

    /* renamed from: a */
    public final zzeph<Context> f27521a;

    /* renamed from: b */
    public final zzeph<Executor> f27522b;

    /* renamed from: c */
    public final zzeph<zzbix> f27523c;

    /* renamed from: d */
    public final zzeph<zzdlv<zzcjj, zzcjg>> f27524d;

    /* renamed from: e */
    public final zzeph<zzdmc> f27525e;

    /* renamed from: f */
    public final zzeph<zzdom> f27526f;

    /* renamed from: g */
    public final zzeph<zzdoj> f27527g;

    public zzdng(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzbix> zzephVar3, zzeph<zzdlv<zzcjj, zzcjg>> zzephVar4, zzeph<zzdmc> zzephVar5, zzeph<zzdom> zzephVar6, zzeph<zzdoj> zzephVar7) {
        this.f27521a = zzephVar;
        this.f27522b = zzephVar2;
        this.f27523c = zzephVar3;
        this.f27524d = zzephVar4;
        this.f27525e = zzephVar5;
        this.f27526f = zzephVar6;
        this.f27527g = zzephVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdnb(this.f27521a.get(), this.f27522b.get(), this.f27523c.get(), this.f27524d.get(), this.f27525e.get(), this.f27526f.get(), this.f27527g.get());
    }
}
