package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.b.a;
import com.twitter.sdk.android.core.internal.b.c;
import com.twitter.sdk.android.core.internal.b.d;
import com.twitter.sdk.android.core.l;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/i.class */
public final class i<T extends l> implements m<T> {

    /* renamed from: a  reason: collision with root package name */
    private final a f35102a;

    /* renamed from: b  reason: collision with root package name */
    private final d<T> f35103b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<Long, T> f35104c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentHashMap<Long, c<T>> f35105d;
    private final c<T> e;
    private final AtomicReference<T> f;
    private final String g;
    private volatile boolean h;

    public i(a aVar, d<T> dVar, String str, String str2) {
        this(aVar, dVar, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new c(aVar, dVar, str), str2);
    }

    i(a aVar, d<T> dVar, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, c<T>> concurrentHashMap2, c<T> cVar, String str) {
        this.h = true;
        this.f35102a = aVar;
        this.f35103b = dVar;
        this.f35104c = concurrentHashMap;
        this.f35105d = concurrentHashMap2;
        this.e = cVar;
        this.f = new AtomicReference<>();
        this.g = str;
    }

    private void a(long j, T t, boolean z) {
        this.f35104c.put(Long.valueOf(j), t);
        c<T> cVar = this.f35105d.get(Long.valueOf(j));
        c<T> cVar2 = cVar;
        if (cVar == null) {
            cVar2 = new c<>(this.f35102a, this.f35103b, b(j));
            this.f35105d.putIfAbsent(Long.valueOf(j), cVar2);
        }
        cVar2.a(t);
        T t2 = this.f.get();
        if (t2 == null || t2.f35185b == j || z) {
            synchronized (this) {
                this.f.compareAndSet(t2, t);
                this.e.a(t);
            }
        }
    }

    private String b(long j) {
        return this.g + "_" + j;
    }

    private void d() {
        if (this.h) {
            e();
        }
    }

    private void e() {
        T a2;
        synchronized (this) {
            if (this.h) {
                c<T> cVar = this.e;
                T a3 = cVar.f35146b.a(cVar.f35145a.a().getString(cVar.f35147c, null));
                if (a3 != null) {
                    a(a3.f35185b, a3, false);
                }
                for (Map.Entry<String, ?> entry : this.f35102a.a().getAll().entrySet()) {
                    if (entry.getKey().startsWith(this.g) && (a2 = this.f35103b.a((String) entry.getValue())) != null) {
                        a(a2.f35185b, a2, false);
                    }
                }
                this.h = false;
            }
        }
    }

    @Override // com.twitter.sdk.android.core.m
    public final T a() {
        d();
        return this.f.get();
    }

    @Override // com.twitter.sdk.android.core.m
    public final void a(long j) {
        d();
        if (this.f.get() != null && this.f.get().f35185b == j) {
            synchronized (this) {
                this.f.set(null);
                this.e.a();
            }
        }
        this.f35104c.remove(Long.valueOf(j));
        c<T> remove = this.f35105d.remove(Long.valueOf(j));
        if (remove != null) {
            remove.a();
        }
    }

    @Override // com.twitter.sdk.android.core.m
    public final void a(T t) {
        if (t != null) {
            d();
            a(t.f35185b, t, true);
            return;
        }
        throw new IllegalArgumentException("Session must not be null!");
    }

    @Override // com.twitter.sdk.android.core.m
    public final void b() {
        d();
        if (this.f.get() != null) {
            a(this.f.get().f35185b);
        }
    }

    @Override // com.twitter.sdk.android.core.m
    public final Map<Long, T> c() {
        d();
        return Collections.unmodifiableMap(this.f35104c);
    }
}
