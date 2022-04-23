package com.bumptech.glide.p029o;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.o.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/g.class */
public class C0852g<T, Y> {

    /* renamed from: a */
    private final Map<T, C0853a<Y>> f3819a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    private long f3820b;

    /* renamed from: c */
    private long f3821c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.o.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/g$a.class */
    public static final class C0853a<Y> {

        /* renamed from: a */
        final Y f3822a;

        /* renamed from: b */
        final int f3823b;

        C0853a(Y y, int i) {
            this.f3822a = y;
            this.f3823b = i;
        }
    }

    public C0852g(long j) {
        this.f3820b = j;
    }

    /* renamed from: f */
    private void m10773f() {
        m10766m(this.f3820b);
    }

    /* renamed from: b */
    public void m10774b() {
        m10766m(0L);
    }

    /* renamed from: g */
    public Y m10772g(T t) {
        Y y;
        synchronized (this) {
            C0853a<Y> aVar = this.f3819a.get(t);
            y = aVar != null ? aVar.f3822a : null;
        }
        return y;
    }

    /* renamed from: h */
    public long m10771h() {
        long j;
        synchronized (this) {
            j = this.f3820b;
        }
        return j;
    }

    /* renamed from: i */
    protected int m10770i(Y y) {
        return 1;
    }

    /* renamed from: j */
    protected void m10769j(T t, Y y) {
    }

    /* renamed from: k */
    public Y m10768k(T t, Y y) {
        synchronized (this) {
            int i = m10770i(y);
            long j = i;
            Y y2 = null;
            if (j >= this.f3820b) {
                m10769j(t, y);
                return null;
            }
            if (y != null) {
                this.f3821c += j;
            }
            C0853a<Y> put = this.f3819a.put(t, y == null ? null : new C0853a<>(y, i));
            if (put != null) {
                this.f3821c -= put.f3823b;
                if (!put.f3822a.equals(y)) {
                    m10769j(t, put.f3822a);
                }
            }
            m10773f();
            if (put != null) {
                y2 = put.f3822a;
            }
            return y2;
        }
    }

    /* renamed from: l */
    public Y m10767l(T t) {
        synchronized (this) {
            C0853a<Y> remove = this.f3819a.remove(t);
            if (remove == null) {
                return null;
            }
            this.f3821c -= remove.f3823b;
            return remove.f3822a;
        }
    }

    /* renamed from: m */
    protected void m10766m(long j) {
        synchronized (this) {
            while (this.f3821c > j) {
                Iterator<Map.Entry<T, C0853a<Y>>> it = this.f3819a.entrySet().iterator();
                Map.Entry<T, C0853a<Y>> next = it.next();
                C0853a<Y> value = next.getValue();
                this.f3821c -= value.f3823b;
                T key = next.getKey();
                it.remove();
                m10769j(key, value.f3822a);
            }
        }
    }
}
