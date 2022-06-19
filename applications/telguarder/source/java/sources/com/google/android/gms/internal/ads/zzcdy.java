package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdy.class */
public final class zzcdy implements zzeqb<zzcdp> {
    private final zzeqo<zzcgk> zzfjj;
    private final zzeqo<zzchq> zzggo;

    public zzcdy(zzeqo<zzchq> zzeqoVar, zzeqo<zzcgk> zzeqoVar2) {
        this.zzggo = zzeqoVar;
        this.zzfjj = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcdp(this.zzggo.get(), this.zzfjj.get());
    }
}
