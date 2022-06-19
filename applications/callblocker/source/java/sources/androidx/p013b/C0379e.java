package androidx.p013b;

import java.util.LinkedHashMap;
import java.util.Locale;
/* renamed from: androidx.b.e */
/* loaded from: classes-dex2jar.jar:androidx/b/e.class */
public class C0379e<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f1565a;

    /* renamed from: b */
    private int f1566b;

    /* renamed from: c */
    private int f1567c;

    /* renamed from: d */
    private int f1568d;

    /* renamed from: e */
    private int f1569e;

    /* renamed from: f */
    private int f1570f;

    /* renamed from: g */
    private int f1571g;

    /* renamed from: h */
    private int f1572h;

    public C0379e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f1567c = i;
        this.f1565a = new LinkedHashMap<>(0, 0.75f, true);
    }

    /* renamed from: c */
    private int m21112c(K k, V v) {
        int m21113b = m21113b(k, v);
        if (m21113b < 0) {
            throw new IllegalStateException("Negative size: " + k + "=" + v);
        }
        return m21113b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final V m21117a(K k) {
        V put;
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v2 = this.f1565a.get(k);
            if (v2 != null) {
                this.f1571g++;
                v = v2;
            } else {
                this.f1572h++;
                V m21114b = m21114b(k);
                if (m21114b == null) {
                    v = null;
                } else {
                    synchronized (this) {
                        this.f1569e++;
                        put = this.f1565a.put(k, m21114b);
                        if (put != null) {
                            this.f1565a.put(k, put);
                        } else {
                            this.f1566b += m21112c(k, m21114b);
                        }
                    }
                    if (put != null) {
                        m21115a(false, k, m21114b, put);
                        v = put;
                    } else {
                        m21118a(this.f1567c);
                        v = m21114b;
                    }
                }
            }
        }
        return v;
    }

    /* renamed from: a */
    public final V m21116a(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f1568d++;
            this.f1566b += m21112c(k, v);
            put = this.f1565a.put(k, v);
            if (put != null) {
                this.f1566b -= m21112c(k, put);
            }
        }
        if (put != null) {
            m21115a(false, k, put, v);
        }
        m21118a(this.f1567c);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        return;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m21118a(int r7) {
        /*
            r6 = this;
        L0:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f1566b     // Catch: java.lang.Throwable -> L3f
            if (r0 < 0) goto L1a
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1565a     // Catch: java.lang.Throwable -> L3f
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L44
            r0 = r6
            int r0 = r0.f1566b     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L44
        L1a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L3f java.lang.Throwable -> L3f
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3f
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> L3f
            r0 = r8
            r1 = r9
            r2 = r6
            java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L3f
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L3f
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3f
            r0 = r8
            throw r0     // Catch: java.lang.Throwable -> L3f
        L3f:
            r8 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            r0 = r8
            throw r0
        L44:
            r0 = r6
            int r0 = r0.f1566b     // Catch: java.lang.Throwable -> L3f
            r1 = r7
            if (r0 <= r1) goto L56
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1565a     // Catch: java.lang.Throwable -> L3f
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L59
        L56:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            return
        L59:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1565a     // Catch: java.lang.Throwable -> L3f
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L3f
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L3f
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L3f
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L3f
            r9 = r0
            r0 = r9
            java.lang.Object r0 = r0.getKey()     // Catch: java.lang.Throwable -> L3f
            r8 = r0
            r0 = r9
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L3f
            r9 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1565a     // Catch: java.lang.Throwable -> L3f
            r1 = r8
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> L3f
            r0 = r6
            r1 = r6
            int r1 = r1.f1566b     // Catch: java.lang.Throwable -> L3f
            r2 = r6
            r3 = r8
            r4 = r9
            int r2 = r2.m21112c(r3, r4)     // Catch: java.lang.Throwable -> L3f
            int r1 = r1 - r2
            r0.f1566b = r1     // Catch: java.lang.Throwable -> L3f
            r0 = r6
            r1 = r6
            int r1 = r1.f1570f     // Catch: java.lang.Throwable -> L3f
            r2 = 1
            int r1 = r1 + r2
            r0.f1570f = r1     // Catch: java.lang.Throwable -> L3f
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            r0 = r6
            r1 = 1
            r2 = r8
            r3 = r9
            r4 = 0
            r0.m21115a(r1, r2, r3, r4)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p013b.C0379e.m21118a(int):void");
    }

    /* renamed from: a */
    protected void m21115a(boolean z, K k, V v, V v2) {
    }

    /* renamed from: b */
    protected int m21113b(K k, V v) {
        return 1;
    }

    /* renamed from: b */
    protected V m21114b(K k) {
        return null;
    }

    public final String toString() {
        String format;
        int i = 0;
        synchronized (this) {
            int i2 = this.f1571g + this.f1572h;
            if (i2 != 0) {
                i = (this.f1571g * 100) / i2;
            }
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f1567c), Integer.valueOf(this.f1571g), Integer.valueOf(this.f1572h), Integer.valueOf(i));
        }
        return format;
    }
}
