package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcij.class */
public final class zzcij implements zzeoy<zzcik> {

    /* renamed from: a */
    public final zzeph<String> f26069a;

    /* renamed from: b */
    public final zzeph<zzcdx> f26070b;

    /* renamed from: c */
    public final zzeph<zzcei> f26071c;

    public zzcij(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        this.f26069a = zzephVar;
        this.f26070b = zzephVar2;
        this.f26071c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcij m14208a(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        return new zzcij(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcik(this.f26069a.get(), this.f26070b.get(), this.f26071c.get());
    }
}
