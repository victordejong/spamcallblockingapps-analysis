package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbq.class */
public final class zzdbq implements zzeoy<zzdbo> {

    /* renamed from: a */
    public final zzeph<zzdzb> f26890a;

    /* renamed from: b */
    public final zzeph<Context> f26891b;

    /* renamed from: c */
    public final zzeph<zzdok> f26892c;

    /* renamed from: d */
    public final zzeph<ViewGroup> f26893d;

    public zzdbq(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<ViewGroup> zzephVar4) {
        this.f26890a = zzephVar;
        this.f26891b = zzephVar2;
        this.f26892c = zzephVar3;
        this.f26893d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdbo(this.f26890a.get(), this.f26891b.get(), this.f26892c.get(), this.f26893d.get());
    }
}
