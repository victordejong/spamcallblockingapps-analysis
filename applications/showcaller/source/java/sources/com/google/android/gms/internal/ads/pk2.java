package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pk2.class */
public final class pk2<T> {

    /* renamed from: a */
    private final Deque<r03<T>> f28039a = new LinkedBlockingDeque();

    /* renamed from: b */
    private final Callable<T> f28040b;

    /* renamed from: c */
    private final s03 f28041c;

    public pk2(Callable<T> callable, s03 s03Var) {
        this.f28040b = callable;
        this.f28041c = s03Var;
    }

    /* renamed from: a */
    public final void m12223a(int i) {
        synchronized (this) {
            int size = this.f28039a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f28039a.add(this.f28041c.mo11185a(this.f28040b));
            }
        }
    }

    /* renamed from: b */
    public final r03<T> m12222b() {
        r03<T> poll;
        synchronized (this) {
            m12223a(1);
            poll = this.f28039a.poll();
        }
        return poll;
    }

    /* renamed from: c */
    public final void m12221c(r03<T> r03Var) {
        synchronized (this) {
            this.f28039a.addFirst(r03Var);
        }
    }
}
