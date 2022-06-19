package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.C17278l;
import com.twitter.sdk.android.core.internal.p486b.AbstractC17244a;
import com.twitter.sdk.android.core.internal.p486b.AbstractC17247d;
import com.twitter.sdk.android.core.internal.p486b.C17246c;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.twitter.sdk.android.core.i */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/i.class */
public final class C17215i<T extends C17278l> implements AbstractC17279m<T> {

    /* renamed from: a */
    private final AbstractC17244a f60943a;

    /* renamed from: b */
    private final AbstractC17247d<T> f60944b;

    /* renamed from: c */
    private final ConcurrentHashMap<Long, T> f60945c;

    /* renamed from: d */
    private final ConcurrentHashMap<Long, C17246c<T>> f60946d;

    /* renamed from: e */
    private final C17246c<T> f60947e;

    /* renamed from: f */
    private final AtomicReference<T> f60948f;

    /* renamed from: g */
    private final String f60949g;

    /* renamed from: h */
    private volatile boolean f60950h;

    public C17215i(AbstractC17244a abstractC17244a, AbstractC17247d<T> abstractC17247d, String str, String str2) {
        this(abstractC17244a, abstractC17247d, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new C17246c(abstractC17244a, abstractC17247d, str), str2);
    }

    C17215i(AbstractC17244a abstractC17244a, AbstractC17247d<T> abstractC17247d, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, C17246c<T>> concurrentHashMap2, C17246c<T> c17246c, String str) {
        this.f60950h = true;
        this.f60943a = abstractC17244a;
        this.f60944b = abstractC17247d;
        this.f60945c = concurrentHashMap;
        this.f60946d = concurrentHashMap2;
        this.f60947e = c17246c;
        this.f60948f = new AtomicReference<>();
        this.f60949g = str;
    }

    /* renamed from: a */
    private void m5710a(long j, T t, boolean z) {
        this.f60945c.put(Long.valueOf(j), t);
        C17246c<T> c17246c = this.f60946d.get(Long.valueOf(j));
        C17246c<T> c17246c2 = c17246c;
        if (c17246c == null) {
            c17246c2 = new C17246c<>(this.f60943a, this.f60944b, m5709b(j));
            this.f60946d.putIfAbsent(Long.valueOf(j), c17246c2);
        }
        c17246c2.m5669a(t);
        T t2 = this.f60948f.get();
        if (t2 == null || t2.f61036b == j || z) {
            synchronized (this) {
                this.f60948f.compareAndSet(t2, t);
                this.f60947e.m5669a(t);
            }
        }
    }

    /* renamed from: b */
    private String m5709b(long j) {
        return this.f60949g + "_" + j;
    }

    /* renamed from: d */
    private void m5708d() {
        if (this.f60950h) {
            m5707e();
        }
    }

    /* renamed from: e */
    private void m5707e() {
        T mo5617a;
        synchronized (this) {
            if (this.f60950h) {
                C17246c<T> c17246c = this.f60947e;
                T mo5617a2 = c17246c.f60993b.mo5617a(c17246c.f60992a.mo5673a().getString(c17246c.f60994c, null));
                if (mo5617a2 != null) {
                    m5710a(mo5617a2.f61036b, mo5617a2, false);
                }
                for (Map.Entry<String, ?> entry : this.f60943a.mo5673a().getAll().entrySet()) {
                    if (entry.getKey().startsWith(this.f60949g) && (mo5617a = this.f60944b.mo5617a((String) entry.getValue())) != null) {
                        m5710a(mo5617a.f61036b, mo5617a, false);
                    }
                }
                this.f60950h = false;
            }
        }
    }

    @Override // com.twitter.sdk.android.core.AbstractC17279m
    /* renamed from: a */
    public final T mo5637a() {
        m5708d();
        return this.f60948f.get();
    }

    @Override // com.twitter.sdk.android.core.AbstractC17279m
    /* renamed from: a */
    public final void mo5636a(long j) {
        m5708d();
        if (this.f60948f.get() != null && this.f60948f.get().f61036b == j) {
            synchronized (this) {
                this.f60948f.set(null);
                this.f60947e.m5670a();
            }
        }
        this.f60945c.remove(Long.valueOf(j));
        C17246c<T> remove = this.f60946d.remove(Long.valueOf(j));
        if (remove != null) {
            remove.m5670a();
        }
    }

    @Override // com.twitter.sdk.android.core.AbstractC17279m
    /* renamed from: a */
    public final void mo5635a(T t) {
        if (t != null) {
            m5708d();
            m5710a(t.f61036b, t, true);
            return;
        }
        throw new IllegalArgumentException("Session must not be null!");
    }

    @Override // com.twitter.sdk.android.core.AbstractC17279m
    /* renamed from: b */
    public final void mo5634b() {
        m5708d();
        if (this.f60948f.get() != null) {
            mo5636a(this.f60948f.get().f61036b);
        }
    }

    @Override // com.twitter.sdk.android.core.AbstractC17279m
    /* renamed from: c */
    public final Map<Long, T> mo5633c() {
        m5708d();
        return Collections.unmodifiableMap(this.f60945c);
    }
}
