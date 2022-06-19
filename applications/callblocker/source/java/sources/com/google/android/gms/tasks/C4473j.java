package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.tasks.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j.class */
public final class C4473j {

    /* renamed from: com.google.android.gms.tasks.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j$a.class */
    public static final class C4474a implements AbstractC4475b {

        /* renamed from: a */
        private final CountDownLatch f19512a;

        private C4474a() {
            this.f19512a = new CountDownLatch(1);
        }

        /* synthetic */ C4474a(RunnableC4463ac runnableC4463ac) {
            this();
        }

        @Override // com.google.android.gms.tasks.AbstractC4466d
        /* renamed from: a */
        public final void mo3862a(Exception exc) {
            this.f19512a.countDown();
        }

        @Override // com.google.android.gms.tasks.AbstractC4467e
        /* renamed from: a */
        public final void mo1147a(Object obj) {
            this.f19512a.countDown();
        }

        /* renamed from: a */
        public final boolean m3877a(long j, TimeUnit timeUnit) {
            return this.f19512a.await(j, timeUnit);
        }

        /* renamed from: b */
        public final void m3876b() {
            this.f19512a.await();
        }

        @Override // com.google.android.gms.tasks.AbstractC4464b
        /* renamed from: y_ */
        public final void mo3861y_() {
            this.f19512a.countDown();
        }
    }

    /* renamed from: com.google.android.gms.tasks.j$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j$b.class */
    public interface AbstractC4475b extends AbstractC4464b, AbstractC4466d, AbstractC4467e<Object> {
    }

    /* renamed from: a */
    public static <TResult> AbstractC4469g<TResult> m3881a(Exception exc) {
        C4461ab c4461ab = new C4461ab();
        c4461ab.m3917a(exc);
        return c4461ab;
    }

    /* renamed from: a */
    public static <TResult> AbstractC4469g<TResult> m3880a(TResult tresult) {
        C4461ab c4461ab = new C4461ab();
        c4461ab.m3916a((C4461ab) tresult);
        return c4461ab;
    }

    /* renamed from: a */
    public static <TResult> AbstractC4469g<TResult> m3879a(Executor executor, Callable<TResult> callable) {
        C2662s.m13980a(executor, "Executor must not be null");
        C2662s.m13980a(callable, "Callback must not be null");
        C4461ab c4461ab = new C4461ab();
        executor.execute(new RunnableC4463ac(c4461ab, callable));
        return c4461ab;
    }

    /* renamed from: a */
    public static <TResult> TResult m3884a(AbstractC4469g<TResult> abstractC4469g) {
        Object m3878b;
        C2662s.m13985a();
        C2662s.m13980a(abstractC4469g, "Task must not be null");
        if (abstractC4469g.mo3905a()) {
            m3878b = m3878b(abstractC4469g);
        } else {
            C4474a c4474a = new C4474a(null);
            m3882a((AbstractC4469g<?>) abstractC4469g, (AbstractC4475b) c4474a);
            c4474a.m3876b();
            m3878b = m3878b(abstractC4469g);
        }
        return (TResult) m3878b;
    }

    /* renamed from: a */
    public static <TResult> TResult m3883a(AbstractC4469g<TResult> abstractC4469g, long j, TimeUnit timeUnit) {
        Object m3878b;
        C2662s.m13985a();
        C2662s.m13980a(abstractC4469g, "Task must not be null");
        C2662s.m13980a(timeUnit, "TimeUnit must not be null");
        if (abstractC4469g.mo3905a()) {
            m3878b = m3878b(abstractC4469g);
        } else {
            C4474a c4474a = new C4474a(null);
            m3882a((AbstractC4469g<?>) abstractC4469g, (AbstractC4475b) c4474a);
            if (!c4474a.m3877a(j, timeUnit)) {
                throw new TimeoutException("Timed out waiting for Task");
            }
            m3878b = m3878b(abstractC4469g);
        }
        return (TResult) m3878b;
    }

    /* renamed from: a */
    private static void m3882a(AbstractC4469g<?> abstractC4469g, AbstractC4475b abstractC4475b) {
        abstractC4469g.mo3896a(C4471i.f19510b, (AbstractC4467e<? super Object>) abstractC4475b);
        abstractC4469g.mo3897a(C4471i.f19510b, (AbstractC4466d) abstractC4475b);
        abstractC4469g.mo3899a(C4471i.f19510b, (AbstractC4464b) abstractC4475b);
    }

    /* renamed from: b */
    private static <TResult> TResult m3878b(AbstractC4469g<TResult> abstractC4469g) {
        if (abstractC4469g.mo3894b()) {
            return abstractC4469g.mo3891d();
        }
        if (!abstractC4469g.mo3892c()) {
            throw new ExecutionException(abstractC4469g.mo3890e());
        }
        throw new CancellationException("Task is already canceled");
    }
}
