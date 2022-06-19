package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e13.class */
public final class e13<V> extends zz2<V> implements RunnableFuture<V> {

    /* renamed from: k */
    private volatile zzfsl<?> f21971k;

    public e13(tz2<V> tz2Var) {
        this.f21971k = new zzfsz(this, tz2Var);
    }

    public e13(Callable<V> callable) {
        this.f21971k = new zzfta(this, callable);
    }

    /* renamed from: F */
    public static <V> e13<V> m15608F(Runnable runnable, V v) {
        return new e13<>(Executors.callable(runnable, v));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        zzfsl<?> zzfslVar = this.f21971k;
        if (zzfslVar != null) {
            String obj = zzfslVar.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 7);
            sb.append("task=[");
            sb.append(obj);
            sb.append("]");
            return sb.toString();
        }
        return super.mo9813i();
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: j */
    protected final void mo10469j() {
        zzfsl<?> zzfslVar;
        if (m15007t() && (zzfslVar = this.f21971k) != null) {
            zzfslVar.zzh();
        }
        this.f21971k = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzfsl<?> zzfslVar = this.f21971k;
        if (zzfslVar != null) {
            zzfslVar.run();
        }
        this.f21971k = null;
    }
}
