package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyo.class */
public final class zzbyo implements zzeqb<zzbyk> {
    private final zzeqo<Set<zzbya<zzair>>> zzfvd;

    public zzbyo(zzeqo<Set<zzbya<zzair>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbyk(this.zzfvd.get());
    }
}
