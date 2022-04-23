package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.FutureTask;
/* renamed from: com.flurry.sdk.jo */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jo.class */
public final class C3348jo<V> extends FutureTask<V> {

    /* renamed from: b */
    public final WeakReference<Runnable> f5727b;

    public C3348jo(Runnable runnable, V v) {
        super(runnable, v);
        new WeakReference(null);
        this.f5727b = new WeakReference<>(runnable);
    }

    /* renamed from: a */
    public final Runnable m32628a() {
        return this.f5727b.get();
    }
}
