package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrx.class */
public class zzfrx<V> extends zzfry<V> {
    private final zzfsm<V> zza;

    public zzfrx(zzfsm<V> zzfsmVar) {
        this.zza = zzfsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrw, com.google.android.gms.internal.ads.zzfoa
    public final /* bridge */ /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfry, com.google.android.gms.internal.ads.zzfrw
    public final /* bridge */ /* synthetic */ Future zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfry
    public final zzfsm<V> zzc() {
        return this.zza;
    }
}
