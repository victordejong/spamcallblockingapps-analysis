package com.google.android.play.core.tasks;

import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.play.core.tasks.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/f.class */
public final class C15182f {
    private C15182f() {
    }

    /* renamed from: a */
    public static <ResultT> AbstractC15180d<ResultT> m9329a(Exception exc) {
        C15195s c15195s = new C15195s();
        c15195s.m9317a(exc);
        return c15195s;
    }

    /* renamed from: a */
    public static <ResultT> AbstractC15180d<ResultT> m9328a(ResultT resultt) {
        C15195s c15195s = new C15195s();
        c15195s.m9316a((C15195s) resultt);
        return c15195s;
    }

    /* renamed from: a */
    public static <ResultT> ResultT m9330a(AbstractC15180d<ResultT> abstractC15180d) throws ExecutionException {
        if (abstractC15180d.mo9313b()) {
            return abstractC15180d.mo9310c();
        }
        throw new ExecutionException(abstractC15180d.mo9309d());
    }
}
