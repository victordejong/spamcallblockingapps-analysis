package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcf.class */
public final class dcf<V> extends dbb<V> implements RunnableFuture<V> {

    /* renamed from: a */
    private volatile dbp<?> f46938a;

    public dcf(dar<V> darVar) {
        this.f46938a = new dci(this, darVar);
    }

    private dcf(Callable<V> callable) {
        this.f46938a = new dch(this, callable);
    }

    /* renamed from: a */
    public static <V> dcf<V> m16878a(Runnable runnable, V v) {
        return new dcf<>(Executors.callable(runnable, v));
    }

    /* renamed from: a */
    public static <V> dcf<V> m16877a(Callable<V> callable) {
        return new dcf<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: a */
    public final String mo16879a() {
        dbp<?> dbpVar = this.f46938a;
        if (dbpVar != null) {
            String valueOf = String.valueOf(dbpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("task=[");
            sb.append(valueOf);
            sb.append("]");
            return sb.toString();
        }
        return super.mo16879a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: b */
    public final void mo16876b() {
        dbp<?> dbpVar;
        super.mo16876b();
        if (m16953d() && (dbpVar = this.f46938a) != null) {
            dbpVar.m16892e();
        }
        this.f46938a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        dbp<?> dbpVar = this.f46938a;
        if (dbpVar != null) {
            dbpVar.run();
        }
        this.f46938a = null;
    }
}
