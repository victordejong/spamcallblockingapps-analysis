package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcie.class */
public final class zzcie implements zzeoy<zzcib> {

    /* renamed from: a */
    public final zzeph<String> f26055a;

    /* renamed from: b */
    public final zzeph<zzcdx> f26056b;

    /* renamed from: c */
    public final zzeph<zzcei> f26057c;

    public zzcie(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        this.f26055a = zzephVar;
        this.f26056b = zzephVar2;
        this.f26057c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcie m14225a(zzeph<String> zzephVar, zzeph<zzcdx> zzephVar2, zzeph<zzcei> zzephVar3) {
        return new zzcie(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcib(this.f26055a.get(), this.f26056b.get(), this.f26057c.get());
    }
}
