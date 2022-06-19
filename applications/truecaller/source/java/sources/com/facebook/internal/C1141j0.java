package com.facebook.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0002\u0010\u0004B\u0015\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0013\u0010\u0003\u001a\u0004\u0018\u00018��8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/LockOnGetVariable;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "value", "(Ljava/lang/Object;)V", "callable", "Ljava/util/concurrent/Callable;", "(Ljava/util/concurrent/Callable;)V", "initLatch", "Ljava/util/concurrent/CountDownLatch;", "storedValue", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "waitOnInit", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.j0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/j0.class */
public final class C1141j0<T> {

    /* renamed from: a */
    public T f3135a;

    /* renamed from: b */
    public CountDownLatch f3136b = new CountDownLatch(1);

    public C1141j0(final Callable<T> callable) {
        l.e(callable, "callable");
        C23228f0 c23228f0 = C23228f0.f64291a;
        C23228f0.m7350e().execute(new FutureTask(new Callable() { // from class: com.facebook.internal.i
            /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C1141j0 c1141j0 = C1141j0.this;
                Callable callable2 = callable;
                l.e(c1141j0, "this$0");
                l.e(callable2, "$callable");
                try {
                    c1141j0.f3135a = callable2.call();
                    CountDownLatch countDownLatch = c1141j0.f3136b;
                    if (countDownLatch == null) {
                        return null;
                    }
                    countDownLatch.countDown();
                    return null;
                } catch (Throwable th) {
                    CountDownLatch countDownLatch2 = c1141j0.f3136b;
                    if (countDownLatch2 != null) {
                        countDownLatch2.countDown();
                    }
                    throw th;
                }
            }
        }));
    }
}
