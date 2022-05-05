package com.google.android.datatransport.runtime;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory.class */
public final class ExecutionModule_ExecutorFactory implements Factory<Executor> {

    /* renamed from: a */
    private static final ExecutionModule_ExecutorFactory f6639a = new ExecutionModule_ExecutorFactory();

    /* renamed from: a */
    public static ExecutionModule_ExecutorFactory m15443a() {
        return f6639a;
    }

    /* renamed from: b */
    public static Executor m15442b() {
        Executor a = ExecutionModule.m15444a();
        Preconditions.m4632c(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: c */
    public Executor get() {
        return m15442b();
    }
}
