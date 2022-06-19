package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cqf;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crn.class */
public class crn<V> implements crt<V> {

    /* renamed from: a */
    static final crt<?> f13613a = new crn(null);

    /* renamed from: b */
    private static final Logger f13614b = Logger.getLogger(crn.class.getName());
    @NullableDecl

    /* renamed from: c */
    private final V f13615c;

    /* renamed from: com.google.android.gms.internal.ads.crn$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crn$a.class */
    public static final class C2894a<V> extends cqf.C2887j<V> {
        public C2894a(Throwable th) {
            mo10754a(th);
        }
    }

    public crn(@NullableDecl V v) {
        this.f13615c = v;
    }

    @Override // com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public void mo6734a(Runnable runnable, Executor executor) {
        cor.m10935a(runnable, "Runnable was null.");
        cor.m10935a(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f13614b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("RuntimeException while executing runnable ").append(valueOf).append(" with executor ").append(valueOf2).toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f13615c;
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        cor.m10936a(timeUnit);
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
        String valueOf = String.valueOf(this.f13615c);
        return new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length()).append(obj).append("[status=SUCCESS, result=[").append(valueOf).append("]]").toString();
    }
}
