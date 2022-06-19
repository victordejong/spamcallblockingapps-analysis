package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcan.class */
public final class zzcan implements zzeqb<zzcao> {
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<Map<String, zzcrj<zzbnz>>> zzfwl;
    private final zzeqo<Map<String, zzcrj<zzcbu>>> zzgbs;
    private final zzeqo<Map<String, zzcty<zzcbu>>> zzgbt;
    private final zzeqo<zzbny<zzblv>> zzgbu;

    public zzcan(zzeqo<Map<String, zzcrj<zzbnz>>> zzeqoVar, zzeqo<Map<String, zzcrj<zzcbu>>> zzeqoVar2, zzeqo<Map<String, zzcty<zzcbu>>> zzeqoVar3, zzeqo<zzbny<zzblv>> zzeqoVar4, zzeqo<zzcco> zzeqoVar5) {
        this.zzfwl = zzeqoVar;
        this.zzgbs = zzeqoVar2;
        this.zzgbt = zzeqoVar3;
        this.zzgbu = zzeqoVar4;
        this.zzfuw = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcao(this.zzfwl.get(), this.zzgbs.get(), this.zzgbt.get(), this.zzgbu, this.zzfuw.get());
    }
}
