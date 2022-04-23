package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jm1.class */
public final class jm1<T> {
    @GuardedBy("this")

    /* renamed from: a */
    private final Deque<rz1<T>> f6911a = new LinkedBlockingDeque();

    /* renamed from: b */
    private final Callable<T> f6912b;

    /* renamed from: c */
    private final sz1 f6913c;

    public jm1(Callable<T> callable, sz1 sz1Var) {
        this.f6912b = callable;
        this.f6913c = sz1Var;
    }

    /* renamed from: a */
    public final void m6951a(int i) {
        synchronized (this) {
            int size = this.f6911a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f6911a.add(this.f6913c.m5553a(this.f6912b));
            }
        }
    }

    /* renamed from: b */
    public final rz1<T> m6950b() {
        rz1<T> poll;
        synchronized (this) {
            m6951a(1);
            poll = this.f6911a.poll();
        }
        return poll;
    }

    /* renamed from: c */
    public final void m6949c(rz1<T> rz1Var) {
        synchronized (this) {
            this.f6911a.addFirst(rz1Var);
        }
    }
}
