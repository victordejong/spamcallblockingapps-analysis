package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyh.class */
public final class zzcyh implements zzeoy<zzcyb> {

    /* renamed from: a */
    public final zzeph<Context> f26755a;

    /* renamed from: b */
    public final zzeph<zzbpm> f26756b;

    /* renamed from: c */
    public final zzeph<zzdsi> f26757c;

    /* renamed from: d */
    public final zzeph<zzdzb> f26758d;

    /* renamed from: e */
    public final zzeph<zzaby> f26759e;

    public zzcyh(zzeph<Context> zzephVar, zzeph<zzbpm> zzephVar2, zzeph<zzdsi> zzephVar3, zzeph<zzdzb> zzephVar4, zzeph<zzaby> zzephVar5) {
        this.f26755a = zzephVar;
        this.f26756b = zzephVar2;
        this.f26757c = zzephVar3;
        this.f26758d = zzephVar4;
        this.f26759e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcyb(this.f26755a.get(), this.f26756b.get(), this.f26757c.get(), this.f26758d.get(), this.f26759e.get());
    }
}
