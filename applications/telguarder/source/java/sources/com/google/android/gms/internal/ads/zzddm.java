package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddm.class */
public final class zzddm implements zzeqb<zzddk> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdmu> zzgua;

    private zzddm(zzeqo<zzdzv> zzeqoVar, zzeqo<zzdmu> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzgua = zzeqoVar2;
    }

    public static zzddm zzaw(zzeqo<zzdzv> zzeqoVar, zzeqo<zzdmu> zzeqoVar2) {
        return new zzddm(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddk(this.zzewf.get(), this.zzgua.get());
    }
}
