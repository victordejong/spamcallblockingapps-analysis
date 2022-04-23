package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjp.class */
public final class zzdjp implements zzeoy<zzdjm> {

    /* renamed from: a */
    public final zzeph<Context> f27424a;

    /* renamed from: b */
    public final zzeph<Executor> f27425b;

    /* renamed from: c */
    public final zzeph<zzbix> f27426c;

    /* renamed from: d */
    public final zzeph<zzdlv<zzbnq, zzbnv>> f27427d;

    /* renamed from: e */
    public final zzeph<zzdkc> f27428e;

    /* renamed from: f */
    public final zzeph<zzdom> f27429f;

    public zzdjp(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzbix> zzephVar3, zzeph<zzdlv<zzbnq, zzbnv>> zzephVar4, zzeph<zzdkc> zzephVar5, zzeph<zzdom> zzephVar6) {
        this.f27424a = zzephVar;
        this.f27425b = zzephVar2;
        this.f27426c = zzephVar3;
        this.f27427d = zzephVar4;
        this.f27428e = zzephVar5;
        this.f27429f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdjm(this.f27424a.get(), this.f27425b.get(), this.f27426c.get(), this.f27427d.get(), this.f27428e.get(), this.f27429f.get());
    }
}
