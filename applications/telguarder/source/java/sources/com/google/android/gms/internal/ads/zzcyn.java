package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyn.class */
public final class zzcyn implements zzeqb<zzcxy> {
    private final zzeqo<zzdrz> zzgjp;

    private zzcyn(zzeqo<zzdrz> zzeqoVar) {
        this.zzgjp = zzeqoVar;
    }

    public static zzcyn zzak(zzeqo<zzdrz> zzeqoVar) {
        return new zzcyn(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxy(this.zzgjp.get());
    }
}
