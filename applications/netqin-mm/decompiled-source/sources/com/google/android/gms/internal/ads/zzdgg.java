package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgg.class */
public final class zzdgg implements zzeoy<zzdge> {

    /* renamed from: a */
    public final zzeph<zzawo> f27279a;

    /* renamed from: b */
    public final zzeph<zzdzb> f27280b;

    /* renamed from: c */
    public final zzeph<Context> f27281c;

    public zzdgg(zzeph<zzawo> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<Context> zzephVar3) {
        this.f27279a = zzephVar;
        this.f27280b = zzephVar2;
        this.f27281c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdgg m13611a(zzeph<zzawo> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<Context> zzephVar3) {
        return new zzdgg(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdge(this.f27279a.get(), this.f27280b.get(), this.f27281c.get());
    }
}
