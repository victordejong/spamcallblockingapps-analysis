package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfry.class */
public abstract class zzfry<V> extends zzfrw<V> implements zzfsm<V> {
    @Override // com.google.android.gms.internal.ads.zzfrw
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    public abstract zzfsm<? extends V> zzc();

    @Override // com.google.android.gms.internal.ads.zzfsm
    public final void zze(Runnable runnable, Executor executor) {
        zzc().zze(runnable, executor);
    }
}
