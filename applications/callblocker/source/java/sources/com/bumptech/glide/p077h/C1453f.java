package com.bumptech.glide.p077h;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.h.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/f.class */
public class C1453f<T, Y> {

    /* renamed from: a */
    private final Map<T, Y> f4761a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    private final long f4762b;

    /* renamed from: c */
    private long f4763c;

    /* renamed from: d */
    private long f4764d;

    public C1453f(long j) {
        this.f4762b = j;
        this.f4763c = j;
    }

    /* renamed from: c */
    private void m16995c() {
        m16999a(this.f4763c);
    }

    /* renamed from: a */
    public int mo16497a(Y y) {
        return 1;
    }

    /* renamed from: a */
    public void m17000a() {
        m16999a(0L);
    }

    /* renamed from: a */
    public void m16999a(long j) {
        synchronized (this) {
            while (this.f4764d > j) {
                Iterator<Map.Entry<T, Y>> it = this.f4761a.entrySet().iterator();
                Map.Entry<T, Y> next = it.next();
                Y value = next.getValue();
                this.f4764d -= mo16497a((C1453f<T, Y>) value);
                T key = next.getKey();
                it.remove();
                mo16496a(key, value);
            }
        }
    }

    /* renamed from: a */
    protected void mo16496a(T t, Y y) {
    }

    /* renamed from: b */
    public long m16998b() {
        long j;
        synchronized (this) {
            j = this.f4763c;
        }
        return j;
    }

    /* renamed from: b */
    public Y m16997b(T t) {
        Y y;
        synchronized (this) {
            y = this.f4761a.get(t);
        }
        return y;
    }

    /* renamed from: b */
    public Y m16996b(T t, Y y) {
        Y y2;
        synchronized (this) {
            int mo16497a = mo16497a((C1453f<T, Y>) y);
            if (mo16497a >= this.f4763c) {
                mo16496a(t, y);
                y2 = null;
            } else {
                if (y != null) {
                    this.f4764d = mo16497a + this.f4764d;
                }
                Y put = this.f4761a.put(t, y);
                if (put != null) {
                    this.f4764d -= mo16497a((C1453f<T, Y>) put);
                    if (!put.equals(y)) {
                        mo16496a(t, put);
                    }
                }
                m16995c();
                y2 = put;
            }
        }
        return y2;
    }

    /* renamed from: c */
    public Y m16994c(T t) {
        Y remove;
        synchronized (this) {
            remove = this.f4761a.remove(t);
            if (remove != null) {
                this.f4764d -= mo16497a((C1453f<T, Y>) remove);
            }
        }
        return remove;
    }
}
