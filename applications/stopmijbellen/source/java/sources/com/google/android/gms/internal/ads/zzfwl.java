package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwl.class */
public abstract class zzfwl<V> extends zzfwj<V> implements zzfxa<V> {
    @Override // com.google.android.gms.internal.ads.zzfwj
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfxa
    public final void zzc(Runnable runnable, Executor executor) {
        zzd().zzc(runnable, executor);
    }

    public abstract zzfxa<? extends V> zzd();
}
