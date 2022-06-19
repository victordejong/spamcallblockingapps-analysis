package com.criteo.publisher.p256m0;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.criteo.publisher.m0.h */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h.class */
public final class FutureC8434h<T> implements Future<T> {

    /* renamed from: a */
    private final AtomicReference<C8437c<T>> f30196a = new AtomicReference<>();

    /* renamed from: b */
    private final CountDownLatch f30197b = new CountDownLatch(1);

    /* renamed from: c */
    private final FutureTask<T> f30198c = new FutureTask<>(new CallableC8436b());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.m0.h$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h$b.class */
    public final class CallableC8436b implements Callable<T> {
        private CallableC8436b() {
            FutureC8434h.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public final T call() throws Exception {
            FutureC8434h.this.f30197b.await();
            C8437c c8437c = (C8437c) FutureC8434h.this.f30196a.get();
            Exception exc = c8437c.f30201b;
            if (exc == null) {
                return c8437c.f30200a;
            }
            throw exc;
        }
    }

    /* renamed from: com.criteo.publisher.m0.h$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/h$c.class */
    public static final class C8437c<T> {

        /* renamed from: a */
        final T f30200a;

        /* renamed from: b */
        final Exception f30201b = null;

        C8437c(T t) {
            this.f30200a = t;
        }
    }

    /* renamed from: a */
    public static <T> FutureC8434h<T> m25687a(T t) {
        FutureC8434h<T> futureC8434h = new FutureC8434h<>();
        futureC8434h.m25685b((FutureC8434h<T>) t);
        return futureC8434h;
    }

    /* renamed from: b */
    public final void m25685b(T t) {
        this.f30196a.compareAndSet(null, new C8437c<>(t));
        this.f30197b.countDown();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f30198c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final T get() throws InterruptedException, ExecutionException {
        this.f30198c.run();
        return this.f30198c.get();
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.f30198c.run();
        return this.f30198c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f30198c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f30198c.isDone();
    }
}
