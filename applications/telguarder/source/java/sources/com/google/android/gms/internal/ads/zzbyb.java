package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyb.class */
public final class zzbyb implements zzeqb<zzbxz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Set<zzbya<zzqw>>> zzfvd;
    private final zzeqo<zzdmw> zzfvr;

    private zzbyb(zzeqo<Context> zzeqoVar, zzeqo<Set<zzbya<zzqw>>> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzfvd = zzeqoVar2;
        this.zzfvr = zzeqoVar3;
    }

    public static zzbyb zzo(zzeqo<Context> zzeqoVar, zzeqo<Set<zzbya<zzqw>>> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3) {
        return new zzbyb(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbxz(this.zzewk.get(), this.zzfvd.get(), this.zzfvr.get());
    }
}
