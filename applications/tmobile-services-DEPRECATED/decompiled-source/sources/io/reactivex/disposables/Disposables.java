package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/disposables/Disposables.class */
public final class Disposables {
    private Disposables() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    /* renamed from: a */
    public static Disposable m4441a() {
        return EmptyDisposable.INSTANCE;
    }

    @NonNull
    /* renamed from: b */
    public static Disposable m4440b() {
        return m4439c(Functions.f15130b);
    }

    @NonNull
    /* renamed from: c */
    public static Disposable m4439c(@NonNull Runnable runnable) {
        ObjectHelper.m4363e(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }
}
