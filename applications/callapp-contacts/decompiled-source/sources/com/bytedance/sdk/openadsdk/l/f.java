package com.bytedance.sdk.openadsdk.l;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/f.class */
public class f<V> extends FutureTask<V> implements Comparable<f<V>> {

    /* renamed from: a  reason: collision with root package name */
    private int f9828a;

    /* renamed from: b  reason: collision with root package name */
    private int f9829b;

    public f(Callable<V> callable, int i, int i2) {
        super(callable);
        this.f9828a = i == -1 ? 5 : i;
        this.f9829b = i2;
    }

    public int a() {
        return this.f9828a;
    }

    /* renamed from: a */
    public int compareTo(f fVar) {
        if (a() < fVar.a()) {
            return 1;
        }
        return a() > fVar.a() ? -1 : 0;
    }
}
