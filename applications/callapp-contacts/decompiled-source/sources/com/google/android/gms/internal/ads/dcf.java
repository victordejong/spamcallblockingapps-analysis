package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcf.class */
public final class dcf<V> extends dbb<V> implements RunnableFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private volatile dbp<?> f26719a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dcf(dar<V> darVar) {
        this.f26719a = new dci(this, darVar);
    }

    private dcf(Callable<V> callable) {
        this.f26719a = new dch(this, callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> dcf<V> a(Runnable runnable, V v) {
        return new dcf<>(Executors.callable(runnable, v));
    }

    public static <V> dcf<V> a(Callable<V> callable) {
        return new dcf<>(callable);
    }

    @Override // com.google.android.gms.internal.ads.dag
    protected final String a() {
        dbp<?> dbpVar = this.f26719a;
        if (dbpVar == null) {
            return super.a();
        }
        String valueOf = String.valueOf(dbpVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
        sb.append("task=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dag
    protected final void b() {
        dbp<?> dbpVar;
        super.b();
        if (d() && (dbpVar = this.f26719a) != null) {
            dbpVar.e();
        }
        this.f26719a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        dbp<?> dbpVar = this.f26719a;
        if (dbpVar != null) {
            dbpVar.run();
        }
        this.f26719a = null;
    }
}
