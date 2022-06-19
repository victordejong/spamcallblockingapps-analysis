package com.bumptech.glide.p223p;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.p.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/g.class */
public class C4378g<T, Y> {

    /* renamed from: a */
    private final Map<T, C4379a<Y>> f13381a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    private final long f13382b;

    /* renamed from: c */
    private long f13383c;

    /* renamed from: d */
    private long f13384d;

    /* renamed from: com.bumptech.glide.p.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/g$a.class */
    public static final class C4379a<Y> {

        /* renamed from: a */
        final Y f13385a;

        /* renamed from: b */
        final int f13386b;

        C4379a(Y y, int i) {
            this.f13385a = y;
            this.f13386b = i;
        }
    }

    public C4378g(long j) {
        this.f13382b = j;
        this.f13383c = j;
    }

    /* renamed from: f */
    private void m22733f() {
        m22726m(this.f13383c);
    }

    /* renamed from: b */
    public void m22734b() {
        m22726m(0L);
    }

    /* renamed from: g */
    public Y m22732g(T t) {
        Y y;
        synchronized (this) {
            C4379a<Y> c4379a = this.f13381a.get(t);
            y = c4379a != null ? c4379a.f13385a : null;
        }
        return y;
    }

    /* renamed from: h */
    public long m22731h() {
        long j;
        synchronized (this) {
            j = this.f13383c;
        }
        return j;
    }

    /* renamed from: i */
    public int mo22730i(Y y) {
        return 1;
    }

    /* renamed from: j */
    protected void mo22729j(T t, Y y) {
    }

    /* renamed from: k */
    public Y m22728k(T t, Y y) {
        synchronized (this) {
            int mo22730i = mo22730i(y);
            long j = mo22730i;
            if (j >= this.f13383c) {
                mo22729j(t, y);
                return null;
            }
            if (y != null) {
                this.f13384d += j;
            }
            C4379a<Y> put = this.f13381a.put(t, y == null ? null : new C4379a<>(y, mo22730i));
            if (put != null) {
                this.f13384d -= put.f13386b;
                if (!put.f13385a.equals(y)) {
                    mo22729j(t, put.f13385a);
                }
            }
            m22733f();
            Y y2 = null;
            if (put != null) {
                y2 = put.f13385a;
            }
            return y2;
        }
    }

    /* renamed from: l */
    public Y m22727l(T t) {
        synchronized (this) {
            C4379a<Y> remove = this.f13381a.remove(t);
            if (remove == null) {
                return null;
            }
            this.f13384d -= remove.f13386b;
            return remove.f13385a;
        }
    }

    /* renamed from: m */
    public void m22726m(long j) {
        synchronized (this) {
            while (this.f13384d > j) {
                Iterator<Map.Entry<T, C4379a<Y>>> it = this.f13381a.entrySet().iterator();
                Map.Entry<T, C4379a<Y>> next = it.next();
                C4379a<Y> value = next.getValue();
                this.f13384d -= value.f13386b;
                T key = next.getKey();
                it.remove();
                mo22729j(key, value.f13385a);
            }
        }
    }
}
