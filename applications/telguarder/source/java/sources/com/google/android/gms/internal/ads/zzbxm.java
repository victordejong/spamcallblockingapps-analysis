package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxm.class */
public final class zzbxm implements zzeqb<zzbxg> {
    private final zzeqo<Set<zzbya<zzbxl>>> zzfvd;

    public zzbxm(zzeqo<Set<zzbya<zzbxl>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbxg(this.zzfvd.get());
    }
}
