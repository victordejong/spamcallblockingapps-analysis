package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrg.class */
public final class zzbrg implements zzeqb<zzbrh> {
    private final zzeqo<zzcrq> zzfaj;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<String> zzfza;

    private zzbrg(zzeqo<zzdmw> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzcrq> zzeqoVar3) {
        this.zzfvr = zzeqoVar;
        this.zzfza = zzeqoVar2;
        this.zzfaj = zzeqoVar3;
    }

    public static zzbrg zzm(zzeqo<zzdmw> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzcrq> zzeqoVar3) {
        return new zzbrg(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrh(this.zzfvr.get(), this.zzfza.get(), this.zzfaj.get());
    }
}
