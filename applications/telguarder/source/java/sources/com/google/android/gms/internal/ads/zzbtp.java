package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtp.class */
public final class zzbtp implements zzeqb<zzbtj> {
    private final zzeqo<Set<zzbya<zzq>>> zzfvd;

    private zzbtp(zzeqo<Set<zzbya<zzq>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbtp zzo(zzeqo<Set<zzbya<zzq>>> zzeqoVar) {
        return new zzbtp(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbtj(this.zzfvd.get());
    }
}
