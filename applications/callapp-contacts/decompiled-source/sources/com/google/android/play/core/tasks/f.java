package com.google.android.play.core.tasks;

import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/f.class */
public final class f {
    private f() {
    }

    public static <ResultT> d<ResultT> a(Exception exc) {
        s sVar = new s();
        sVar.a(exc);
        return sVar;
    }

    public static <ResultT> d<ResultT> a(ResultT resultt) {
        s sVar = new s();
        sVar.a((s) resultt);
        return sVar;
    }

    public static <ResultT> ResultT a(d<ResultT> dVar) throws ExecutionException {
        if (dVar.b()) {
            return dVar.c();
        }
        throw new ExecutionException(dVar.d());
    }
}
