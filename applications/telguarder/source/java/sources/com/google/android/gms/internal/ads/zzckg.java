package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckg.class */
public final class zzckg implements zzeqb<zzckd> {
    private final zzeqo<zzckw> zzexi;
    private final zzeqo<zzckl> zzezr;

    private zzckg(zzeqo<zzckl> zzeqoVar, zzeqo<zzckw> zzeqoVar2) {
        this.zzezr = zzeqoVar;
        this.zzexi = zzeqoVar2;
    }

    public static zzckg zzaf(zzeqo<zzckl> zzeqoVar, zzeqo<zzckw> zzeqoVar2) {
        return new zzckg(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckd(this.zzezr.get(), this.zzexi.get());
    }
}
