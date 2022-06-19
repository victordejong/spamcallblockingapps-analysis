package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjh.class */
public final class zzbjh implements zzeqb<zzbji> {
    private final zzeqo<zzf> zzfag;

    private zzbjh(zzeqo<zzf> zzeqoVar) {
        this.zzfag = zzeqoVar;
    }

    public static zzbjh zza(zzeqo<zzf> zzeqoVar) {
        return new zzbjh(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbji(this.zzfag.get());
    }
}
