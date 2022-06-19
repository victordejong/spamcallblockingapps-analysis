package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsy.class */
public final class zzbsy implements zzeqb<zzbsw> {
    private final zzeqo<Set<zzbya<zzbtb>>> zzfvd;

    private zzbsy(zzeqo<Set<zzbya<zzbtb>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbsy zzl(zzeqo<Set<zzbya<zzbtb>>> zzeqoVar) {
        return new zzbsy(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsw(this.zzfvd.get());
    }
}
