package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcko.class */
public final class zzcko implements zzeqb<zzckl> {
    private final zzeqo<zzckw> zzexi;
    private final zzeqo<zzayy> zzezq;

    private zzcko(zzeqo<zzckw> zzeqoVar, zzeqo<zzayy> zzeqoVar2) {
        this.zzexi = zzeqoVar;
        this.zzezq = zzeqoVar2;
    }

    public static zzcko zzag(zzeqo<zzckw> zzeqoVar, zzeqo<zzayy> zzeqoVar2) {
        return new zzcko(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckl(this.zzexi.get(), this.zzezq.get());
    }
}
