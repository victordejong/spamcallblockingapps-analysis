package com.facebook.internal;

import com.facebook.C2095j;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
/* renamed from: com.facebook.internal.q */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/q.class */
public class C2061q<T> {

    /* renamed from: a */
    private T f6080a;

    /* renamed from: b */
    private CountDownLatch f6081b = new CountDownLatch(1);

    public C2061q(final Callable<T> callable) {
        C2095j.m15362f().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.q.1
            /* JADX WARN: Finally extract failed */
            /* renamed from: a */
            public Void call() {
                try {
                    C2061q.this.f6080a = callable.call();
                    C2061q.this.f6081b.countDown();
                    return null;
                } catch (Throwable th) {
                    C2061q.this.f6081b.countDown();
                    throw th;
                }
            }
        }));
    }
}
