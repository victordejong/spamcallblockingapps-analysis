package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyg.class */
public final class zzbyg implements zzeqb<zzbye> {
    private final zzeqo<Set<zzbya<zzbyf>>> zzfvd;

    private zzbyg(zzeqo<Set<zzbya<zzbyf>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbyg zzu(zzeqo<Set<zzbya<zzbyf>>> zzeqoVar) {
        return new zzbyg(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbye(this.zzfvd.get());
    }
}
