package com.criteo.publisher.m0;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h.class */
public final class h<T> implements Future<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<c<T>> f17511a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f17512b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private final FutureTask<T> f17513c = new FutureTask<>(new b());

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h$b.class */
    final class b implements Callable<T> {
        private b() {
        }

        @Override // java.util.concurrent.Callable
        public final T call() throws Exception {
            h.this.f17512b.await();
            c cVar = (c) h.this.f17511a.get();
            Exception exc = cVar.f17516b;
            if (exc == null) {
                return cVar.f17515a;
            }
            throw exc;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h$c.class */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f17515a;

        /* renamed from: b  reason: collision with root package name */
        final Exception f17516b = null;

        c(T t) {
            this.f17515a = t;
        }
    }

    public static <T> h<T> a(T t) {
        h<T> hVar = new h<>();
        hVar.b((h<T>) t);
        return hVar;
    }

    public final void b(T t) {
        this.f17511a.compareAndSet(null, new c<>(t));
        this.f17512b.countDown();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f17513c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final T get() throws InterruptedException, ExecutionException {
        this.f17513c.run();
        return this.f17513c.get();
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.f17513c.run();
        return this.f17513c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f17513c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f17513c.isDone();
    }
}
