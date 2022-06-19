package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbka.class */
public final class zzbka implements zzeqb<zzbjx> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzqt> zzfso;

    private zzbka(zzeqo<Context> zzeqoVar, zzeqo<zzqt> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzfso = zzeqoVar2;
    }

    public static zzbka zza(zzeqo<Context> zzeqoVar, zzeqo<zzqt> zzeqoVar2) {
        return new zzbka(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjx(this.zzewk.get(), this.zzfso.get());
    }
}
