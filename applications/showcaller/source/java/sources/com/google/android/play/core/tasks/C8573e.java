package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.C8516t;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/e.class */
public final class C8573e {
    /* renamed from: a */
    public static <ResultT> AbstractC8571c<ResultT> m3327a(ResultT resultt) {
        C8584p c8584p = new C8584p();
        c8584p.m3304g(resultt);
        return c8584p;
    }

    /* renamed from: b */
    public static <ResultT> ResultT m3326b(AbstractC8571c<ResultT> abstractC8571c) {
        C8516t.m3467d(abstractC8571c, "Task must not be null");
        if (abstractC8571c.mo3306e()) {
            return (ResultT) m3324d(abstractC8571c);
        }
        C8585q c8585q = new C8585q(null);
        m3323e(abstractC8571c, c8585q);
        c8585q.m3296b();
        return (ResultT) m3324d(abstractC8571c);
    }

    /* renamed from: c */
    public static <ResultT> AbstractC8571c<ResultT> m3325c(Exception exc) {
        C8584p c8584p = new C8584p();
        c8584p.m3302i(exc);
        return c8584p;
    }

    /* renamed from: d */
    private static <ResultT> ResultT m3324d(AbstractC8571c<ResultT> abstractC8571c) {
        if (abstractC8571c.mo3305f()) {
            return abstractC8571c.mo3307d();
        }
        throw new ExecutionException(abstractC8571c.mo3308c());
    }

    /* renamed from: e */
    private static void m3323e(AbstractC8571c<?> abstractC8571c, C8585q c8585q) {
        Executor executor = C8572d.f38168b;
        abstractC8571c.mo3309b(executor, c8585q);
        abstractC8571c.mo3310a(executor, c8585q);
    }
}
