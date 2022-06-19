package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdei.class */
public final class zzdei implements zzeqb<zzdej> {
    private final zzeqo<String> zzgle;

    private zzdei(zzeqo<String> zzeqoVar) {
        this.zzgle = zzeqoVar;
    }

    public static zzdei zzaq(zzeqo<String> zzeqoVar) {
        return new zzdei(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdej(this.zzgle.get());
    }
}
