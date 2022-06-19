package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqd.class */
public final class cqd<T> {

    /* renamed from: a */
    private final Deque<dbt<T>> f46374a = new LinkedBlockingDeque();

    /* renamed from: b */
    private final Callable<T> f46375b;

    /* renamed from: c */
    private final dbs f46376c;

    public cqd(Callable<T> callable, dbs dbsVar) {
        this.f46375b = callable;
        this.f46376c = dbsVar;
    }

    /* renamed from: a */
    public final dbt<T> m17339a() {
        dbt<T> poll;
        synchronized (this) {
            m17338a(1);
            poll = this.f46374a.poll();
        }
        return poll;
    }

    /* renamed from: a */
    public final void m17338a(int i) {
        synchronized (this) {
            int size = this.f46374a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f46374a.add(this.f46376c.mo16890a(this.f46375b));
            }
        }
    }

    /* renamed from: a */
    public final void m17337a(dbt<T> dbtVar) {
        synchronized (this) {
            this.f46374a.addFirst(dbtVar);
        }
    }
}
