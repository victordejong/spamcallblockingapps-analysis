package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.crashlytics.internal.common.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/f0.class */
public final class C9086f0 {

    /* renamed from: a */
    private static final ExecutorService f39292a = C9120r.m1786c("awaitEvenIfOnMainThread task continuation executor");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.f0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/f0$a.class */
    public class C9087a implements AbstractC7954a<T, Void> {

        /* renamed from: a */
        final /* synthetic */ C7968h f39293a;

        C9087a(C7968h c7968h) {
            this.f39293a = c7968h;
        }

        /* renamed from: b */
        public Void mo1125a(AbstractC7966g<T> abstractC7966g) {
            if (abstractC7966g.mo5810q()) {
                this.f39293a.m5803e(abstractC7966g.mo5814m());
                return null;
            }
            this.f39293a.m5804d(abstractC7966g.mo5815l());
            return null;
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.f0$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/f0$b.class */
    public class RunnableC9088b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Callable f39294d;

        /* renamed from: e */
        final /* synthetic */ C7968h f39295e;

        /* renamed from: com.google.firebase.crashlytics.internal.common.f0$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/f0$b$a.class */
        class C9089a implements AbstractC7954a<T, Void> {
            C9089a() {
                RunnableC9088b.this = r4;
            }

            /* renamed from: b */
            public Void mo1125a(AbstractC7966g<T> abstractC7966g) {
                if (abstractC7966g.mo5810q()) {
                    RunnableC9088b.this.f39295e.m5805c(abstractC7966g.mo5814m());
                    return null;
                }
                RunnableC9088b.this.f39295e.m5806b(abstractC7966g.mo5815l());
                return null;
            }
        }

        RunnableC9088b(Callable callable, C7968h c7968h) {
            this.f39294d = callable;
            this.f39295e = c7968h;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((AbstractC7966g) this.f39294d.call()).mo5819h(new C9089a());
            } catch (Exception e) {
                this.f39295e.m5806b(e);
            }
        }
    }

    /* renamed from: a */
    public static <T> T m1918a(AbstractC7966g<T> abstractC7966g) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        abstractC7966g.mo5818i(f39292a, C9084e0.m1924b(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (abstractC7966g.mo5810q()) {
            return abstractC7966g.mo5814m();
        }
        if (abstractC7966g.mo5812o()) {
            throw new CancellationException("Task is already canceled");
        }
        if (!abstractC7966g.mo5811p()) {
            throw new TimeoutException();
        }
        throw new IllegalStateException(abstractC7966g.mo5815l());
    }

    /* renamed from: b */
    public static <T> AbstractC7966g<T> m1917b(Executor executor, Callable<AbstractC7966g<T>> callable) {
        C7968h c7968h = new C7968h();
        executor.execute(new RunnableC9088b(callable, c7968h));
        return c7968h.m5807a();
    }

    /* renamed from: d */
    public static <T> AbstractC7966g<T> m1915d(AbstractC7966g<T> abstractC7966g, AbstractC7966g<T> abstractC7966g2) {
        C7968h c7968h = new C7968h();
        C9087a c9087a = new C9087a(c7968h);
        abstractC7966g.mo5819h(c9087a);
        abstractC7966g2.mo5819h(c9087a);
        return c7968h.m5807a();
    }
}
