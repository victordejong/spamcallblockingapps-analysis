package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxk.class */
public final class zzcxk implements zzeqb<zzcxh> {
    private final zzeqo<zzcin> zzgwd;

    private zzcxk(zzeqo<zzcin> zzeqoVar) {
        this.zzgwd = zzeqoVar;
    }

    public static zzcxk zzaj(zzeqo<zzcin> zzeqoVar) {
        return new zzcxk(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxh(this.zzgwd.get());
    }
}
