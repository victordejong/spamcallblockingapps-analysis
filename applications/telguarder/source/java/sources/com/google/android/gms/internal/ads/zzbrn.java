package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrn.class */
public final class zzbrn implements zzeqb<zzbrl> {
    private final zzeqo<Set<zzbya<zzvc>>> zzfvd;

    private zzbrn(zzeqo<Set<zzbya<zzvc>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbrn zzg(zzeqo<Set<zzbya<zzvc>>> zzeqoVar) {
        return new zzbrn(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrl(this.zzfvd.get());
    }
}
