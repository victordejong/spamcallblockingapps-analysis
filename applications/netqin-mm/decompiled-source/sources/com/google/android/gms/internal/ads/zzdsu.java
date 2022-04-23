package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsu.class */
public final class zzdsu implements zzeoy<zzdsr> {

    /* renamed from: a */
    public final zzeph<zzcwj> f27802a;

    /* renamed from: b */
    public final zzeph<zzbbx> f27803b;

    /* renamed from: c */
    public final zzeph<String> f27804c;

    /* renamed from: d */
    public final zzeph<String> f27805d;

    /* renamed from: e */
    public final zzeph<Context> f27806e;

    /* renamed from: f */
    public final zzeph<zzdoj> f27807f;

    /* renamed from: g */
    public final zzeph<Clock> f27808g;

    /* renamed from: h */
    public final zzeph<zzeg> f27809h;

    public zzdsu(zzeph<zzcwj> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<String> zzephVar3, zzeph<String> zzephVar4, zzeph<Context> zzephVar5, zzeph<zzdoj> zzephVar6, zzeph<Clock> zzephVar7, zzeph<zzeg> zzephVar8) {
        this.f27802a = zzephVar;
        this.f27803b = zzephVar2;
        this.f27804c = zzephVar3;
        this.f27805d = zzephVar4;
        this.f27806e = zzephVar5;
        this.f27807f = zzephVar6;
        this.f27808g = zzephVar7;
        this.f27809h = zzephVar8;
    }

    /* renamed from: a */
    public static zzdsu m13234a(zzeph<zzcwj> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<String> zzephVar3, zzeph<String> zzephVar4, zzeph<Context> zzephVar5, zzeph<zzdoj> zzephVar6, zzeph<Clock> zzephVar7, zzeph<zzeg> zzephVar8) {
        return new zzdsu(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6, zzephVar7, zzephVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdsr(this.f27802a.get(), this.f27803b.get(), this.f27804c.get(), this.f27805d.get(), this.f27806e.get(), this.f27807f.get(), this.f27808g.get(), this.f27809h.get());
    }
}
