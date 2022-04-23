package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdds.class */
public final class zzdds implements zzeoy<zzddq> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27182a;

    /* renamed from: b */
    public final zzeph<zzckw> f27183b;

    /* renamed from: c */
    public final zzeph<zzdok> f27184c;

    /* renamed from: d */
    public final zzeph<String> f27185d;

    public zzdds(zzeph<zzdzb> zzephVar, zzeph<zzckw> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<String> zzephVar4) {
        this.f27182a = zzephVar;
        this.f27183b = zzephVar2;
        this.f27184c = zzephVar3;
        this.f27185d = zzephVar4;
    }

    /* renamed from: a */
    public static zzdds m13639a(zzeph<zzdzb> zzephVar, zzeph<zzckw> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<String> zzephVar4) {
        return new zzdds(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzddq(this.f27182a.get(), this.f27183b.get(), this.f27184c.get(), this.f27185d.get());
    }
}
