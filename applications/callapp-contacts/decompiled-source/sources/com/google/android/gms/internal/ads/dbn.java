package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbn.class */
public class dbn<V> implements dbt<V> {

    /* renamed from: a  reason: collision with root package name */
    static final dbt<?> f26701a = new dbn(null);

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f26702b = Logger.getLogger(dbn.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private final V f26703c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbn$a.class */
    public static final class a<V> extends dag.h<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Throwable th) {
            a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public dbn(V v) {
        this.f26703c = v;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        cyg.a(runnable, "Runnable was null.");
        cyg.a(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f26702b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f26703c;
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        cyg.a(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f26703c);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length());
        sb.append(obj);
        sb.append("[status=SUCCESS, result=[");
        sb.append(valueOf);
        sb.append("]]");
        return sb.toString();
    }
}
