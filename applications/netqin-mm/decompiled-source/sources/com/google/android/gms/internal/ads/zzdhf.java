package com.google.android.gms.internal.ads;

import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.C3966qu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhf.class */
public final class zzdhf implements zzeoy<C3966qu> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27325a;

    /* renamed from: b */
    public final zzeph<Context> f27326b;

    public zzdhf(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        this.f27325a = zzephVar;
        this.f27326b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new C3966qu(this.f27325a.get(), this.f27326b.get());
    }
}
