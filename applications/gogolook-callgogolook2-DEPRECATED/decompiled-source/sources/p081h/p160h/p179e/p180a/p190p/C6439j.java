package p081h.p160h.p179e.p180a.p190p;

import java.util.LinkedHashMap;
/* renamed from: h.h.e.a.p.j */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/j.class */
public class C6439j<K, V> {

    /* renamed from: a */
    public final LinkedHashMap<K, V> f16054a;

    /* renamed from: b */
    public int f16055b;

    /* renamed from: c */
    public int f16056c;

    /* renamed from: d */
    public int f16057d;

    /* renamed from: e */
    public int f16058e;

    /* renamed from: f */
    public int f16059f;

    /* renamed from: g */
    public int f16060g;

    /* renamed from: h */
    public int f16061h;

    public C6439j(int i) {
        if (i > 0) {
            this.f16056c = i;
            this.f16054a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    public final V m22573a(K k) {
        V put;
        if (k != null) {
            synchronized (this) {
                V v = this.f16054a.get(k);
                if (v != null) {
                    this.f16060g++;
                    return v;
                }
                this.f16061h++;
                V c = m22568c(k);
                if (c == null) {
                    return null;
                }
                synchronized (this) {
                    this.f16058e++;
                    put = this.f16054a.put(k, c);
                    if (put != null) {
                        this.f16054a.put(k, put);
                    } else {
                        this.f16055b += m22567c(k, c);
                    }
                }
                if (put != null) {
                    m22571a(false, k, c, put);
                    return put;
                }
                m22574a(this.f16056c);
                return c;
            }
        }
        throw new NullPointerException("key == null");
    }

    /* renamed from: a */
    public final V m22572a(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f16057d++;
            this.f16055b += m22567c(k, v);
            put = this.f16054a.put(k, v);
            if (put != null) {
                this.f16055b -= m22567c(k, put);
            }
        }
        if (put != null) {
            m22571a(false, k, put, v);
        }
        m22574a(this.f16056c);
        return put;
    }

    /* renamed from: a */
    public final void m22575a() {
        m22574a(-1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22574a(int r7) {
        /*
            r6 = this;
        L_0x0000:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f16055b     // Catch: all -> 0x00ad
            if (r0 < 0) goto L_0x0084
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f16054a     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.f16055b     // Catch: all -> 0x00ad
            if (r0 != 0) goto L_0x0084
        L_0x001a:
            r0 = r6
            int r0 = r0.f16055b     // Catch: all -> 0x00ad
            r1 = r7
            if (r0 <= r1) goto L_0x0081
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f16054a     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x002f
            goto L_0x0081
        L_0x002f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f16054a     // Catch: all -> 0x00ad
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x00ad
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00ad
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x00ad
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f16054a     // Catch: all -> 0x00ad
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.f16055b     // Catch: all -> 0x00ad
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m22567c(r3, r4)     // Catch: all -> 0x00ad
            int r1 = r1 - r2
            r0.f16055b = r1     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.f16059f     // Catch: all -> 0x00ad
            r2 = 1
            int r1 = r1 + r2
            r0.f16059f = r1     // Catch: all -> 0x00ad
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r8
            r4 = 0
            r0.m22571a(r1, r2, r3, r4)
            goto L_0x0000
        L_0x0081:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            return
        L_0x0084:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x00ad
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: all -> 0x00ad
            r0 = r8
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: all -> 0x00ad
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00ad
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ad
            r0 = r8
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ad
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00ad
            r0.<init>(r1)     // Catch: all -> 0x00ad
            r0 = r9
            throw r0     // Catch: all -> 0x00ad
        L_0x00ad:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p190p.C6439j.m22574a(int):void");
    }

    /* renamed from: a */
    public void m22571a(boolean z, K k, V v, V v2) {
    }

    /* renamed from: b */
    public int m22569b(K k, V v) {
        return 1;
    }

    /* renamed from: b */
    public final V m22570b(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.f16054a.remove(k);
                if (remove != null) {
                    this.f16055b -= m22567c(k, remove);
                }
            }
            if (remove != null) {
                m22571a(false, k, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    /* renamed from: c */
    public final int m22567c(K k, V v) {
        int b = m22569b(k, v);
        if (b >= 0) {
            return b;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* renamed from: c */
    public V m22568c(K k) {
        return null;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f16060g + this.f16061h;
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f16056c), Integer.valueOf(this.f16060g), Integer.valueOf(this.f16061h), Integer.valueOf(i != 0 ? (this.f16060g * 100) / i : 0));
        }
        return format;
    }
}
