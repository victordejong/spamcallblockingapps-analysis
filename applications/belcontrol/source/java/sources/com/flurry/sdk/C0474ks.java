package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: com.flurry.sdk.ks */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ks.class */
public final class C0474ks<V> extends FutureTask<V> {

    /* renamed from: a */
    private final WeakReference<Callable<V>> f3493a = new WeakReference<>(null);

    /* renamed from: b */
    private final WeakReference<Runnable> f3494b;

    public C0474ks(Runnable runnable, V v) {
        super(runnable, v);
        this.f3494b = new WeakReference<>(runnable);
    }

    /* renamed from: a */
    public final Runnable m4609a() {
        return this.f3494b.get();
    }
}
