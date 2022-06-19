package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpm.class */
public final class zzcpm implements zzeqb<zzcpj> {
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<String> zzgmg;

    public zzcpm(zzeqo<String> zzeqoVar, zzeqo<zzdrz> zzeqoVar2) {
        this.zzgmg = zzeqoVar;
        this.zzgjp = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpj(this.zzgmg.get(), this.zzgjp.get());
    }
}
