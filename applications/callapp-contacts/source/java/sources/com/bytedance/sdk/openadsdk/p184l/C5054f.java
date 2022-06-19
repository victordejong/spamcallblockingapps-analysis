package com.bytedance.sdk.openadsdk.p184l;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: com.bytedance.sdk.openadsdk.l.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/f.class */
public class C5054f<V> extends FutureTask<V> implements Comparable<C5054f<V>> {

    /* renamed from: a */
    private int f18295a;

    /* renamed from: b */
    private int f18296b;

    public C5054f(Callable<V> callable, int i, int i2) {
        super(callable);
        this.f18295a = i == -1 ? 5 : i;
        this.f18296b = i2;
    }

    /* renamed from: a */
    public int m33151a() {
        return this.f18295a;
    }

    /* renamed from: a */
    public int compareTo(C5054f c5054f) {
        if (m33151a() < c5054f.m33151a()) {
            return 1;
        }
        return m33151a() > c5054f.m33151a() ? -1 : 0;
    }
}
