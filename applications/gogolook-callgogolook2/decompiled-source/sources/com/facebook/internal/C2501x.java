package com.facebook.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.x */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/x.class */
public class C2501x<T> {

    /* renamed from: a */
    public T f3218a;

    /* renamed from: b */
    public CountDownLatch f3219b = new CountDownLatch(1);

    /* renamed from: com.facebook.internal.x$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/x$a.class */
    public class CallableC2502a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Callable f3220a;

        public CallableC2502a(Callable callable) {
            this.f3220a = callable;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                C2501x.this.f3218a = this.f3220a.call();
                C2501x.this.f3219b.countDown();
                return null;
            } catch (Throwable th) {
                C2501x.this.f3219b.countDown();
                throw th;
            }
        }
    }

    public C2501x(Callable<T> callable) {
        C6135n.m23737n().execute(new FutureTask(new CallableC2502a(callable)));
    }

    /* renamed from: a */
    public T m34564a() {
        m34561b();
        return this.f3218a;
    }

    /* renamed from: b */
    public final void m34561b() {
        CountDownLatch countDownLatch = this.f3219b;
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
            }
        }
    }
}
