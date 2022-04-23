package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import p131c.p161d.p170b.p224d.p252g.p253a.C3966qu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddu.class */
public final class zzddu implements zzeoy<zzddp<zzdha>> {

    /* renamed from: a */
    public final zzeph<C3966qu> f27186a;

    /* renamed from: b */
    public final zzeph<Clock> f27187b;

    public zzddu(zzeph<C3966qu> zzephVar, zzeph<Clock> zzephVar2) {
        this.f27186a = zzephVar;
        this.f27187b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzddp zzddpVar = new zzddp(this.f27186a.get(), zzaco.f23965a.mo16862a().longValue(), this.f27187b.get());
        zzepe.m12187a(zzddpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzddpVar;
    }
}
