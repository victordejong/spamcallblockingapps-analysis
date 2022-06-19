package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzb.class */
public final class zzdzb extends zzdza<V> {
    private final /* synthetic */ zzdyy zziah;
    private final Callable<V> zziai;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdzb(zzdyy zzdyyVar, Callable<V> callable, Executor executor) {
        super(zzdyyVar, executor);
        this.zziah = zzdyyVar;
        this.zziai = (Callable) zzdwl.checkNotNull(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzdza
    final void setValue(V v) {
        this.zziah.set(v);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzs
    final V zzbab() throws Exception {
        return this.zziai.call();
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final String zzbac() {
        return this.zziai.toString();
    }
}
