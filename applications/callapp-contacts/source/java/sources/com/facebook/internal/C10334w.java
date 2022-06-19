package com.facebook.internal;

import com.facebook.C10181g;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0002\u0010\u0004B\u0015\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0013\u0010\u0003\u001a\u0004\u0018\u00018��8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, m4298d2 = {"Lcom/facebook/internal/LockOnGetVariable;", "T", "", "value", "(Ljava/lang/Object;)V", "callable", "Ljava/util/concurrent/Callable;", "(Ljava/util/concurrent/Callable;)V", "initLatch", "Ljava/util/concurrent/CountDownLatch;", "storedValue", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "waitOnInit", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.w */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/w.class */
public final class C10334w<T> {

    /* renamed from: a */
    public T f33925a;

    /* renamed from: b */
    public CountDownLatch f33926b;

    public C10334w(T t) {
        this.f33925a = t;
    }

    public C10334w(final Callable<T> callable) {
        C18524p.m3840d(callable, "callable");
        this.f33926b = new CountDownLatch(1);
        C10181g.m23293f().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.w.1
            /* renamed from: a */
            public Void call() {
                try {
                    C10334w.this.f33925a = (T) callable.call();
                    CountDownLatch countDownLatch = C10334w.this.f33926b;
                    if (countDownLatch == null) {
                        return null;
                    }
                    countDownLatch.countDown();
                    return null;
                } catch (Throwable th) {
                    CountDownLatch countDownLatch2 = C10334w.this.f33926b;
                    if (countDownLatch2 != null) {
                        countDownLatch2.countDown();
                    }
                    throw th;
                }
            }
        }));
    }
}
