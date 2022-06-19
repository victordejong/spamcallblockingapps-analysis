package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzces.class */
public final class zzces implements zzeqb<zzcen> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzcer> zzgib;
    private final zzeqo<zzcfb> zzgic;

    public zzces(zzeqo<zzdzv> zzeqoVar, zzeqo<zzcer> zzeqoVar2, zzeqo<zzcfb> zzeqoVar3) {
        this.zzewf = zzeqoVar;
        this.zzgib = zzeqoVar2;
        this.zzgic = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcen(this.zzewf.get(), this.zzgib.get(), this.zzgic.get());
    }
}
