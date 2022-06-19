package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwd.class */
public final class zzbwd implements zzeqb<zzbvu> {
    private final zzeqo<Set<zzbya<zzbwc>>> zzfvd;

    private zzbwd(zzeqo<Set<zzbya<zzbwc>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbwd zzs(zzeqo<Set<zzbya<zzbwc>>> zzeqoVar) {
        return new zzbwd(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvu(this.zzfvd.get());
    }
}
