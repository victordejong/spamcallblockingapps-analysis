package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmj.class */
public final class zzcmj implements zzeoy<zzcmk> {

    /* renamed from: a */
    public final zzeph<zzcms> f26247a;

    /* renamed from: b */
    public final zzeph<zzcmz> f26248b;

    public zzcmj(zzeph<zzcms> zzephVar, zzeph<zzcmz> zzephVar2) {
        this.f26247a = zzephVar;
        this.f26248b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcmj m14060a(zzeph<zzcms> zzephVar, zzeph<zzcmz> zzephVar2) {
        return new zzcmj(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcmk(this.f26247a.get(), this.f26248b.get());
    }
}
