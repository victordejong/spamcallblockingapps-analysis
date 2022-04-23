package com.google.a.d.a;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/g.class */
public final class g<V> extends FutureTask<V> implements f<V> {

    /* renamed from: a  reason: collision with root package name */
    private final c f3749a = new c();

    private g(Runnable runnable, V v) {
        super(runnable, v);
    }

    private g(Callable<V> callable) {
        super(callable);
    }

    public static <V> g<V> a(Runnable runnable, V v) {
        return new g<>(runnable, v);
    }

    public static <V> g<V> a(Callable<V> callable) {
        return new g<>(callable);
    }

    @Override // com.google.a.d.a.f
    public final void a(Runnable runnable, Executor executor) {
        this.f3749a.a(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        this.f3749a.a();
    }
}
