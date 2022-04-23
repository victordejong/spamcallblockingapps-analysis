package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqd.class */
public final class cqd<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Deque<dbt<T>> f26252a = new LinkedBlockingDeque();

    /* renamed from: b  reason: collision with root package name */
    private final Callable<T> f26253b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f26254c;

    public cqd(Callable<T> callable, dbs dbsVar) {
        this.f26253b = callable;
        this.f26254c = dbsVar;
    }

    public final dbt<T> a() {
        dbt<T> poll;
        synchronized (this) {
            a(1);
            poll = this.f26252a.poll();
        }
        return poll;
    }

    public final void a(int i) {
        synchronized (this) {
            int size = this.f26252a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f26252a.add(this.f26254c.a(this.f26253b));
            }
        }
    }

    public final void a(dbt<T> dbtVar) {
        synchronized (this) {
            this.f26252a.addFirst(dbtVar);
        }
    }
}
