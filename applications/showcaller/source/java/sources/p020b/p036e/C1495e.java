package p020b.p036e;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Objects;
/* renamed from: b.e.e */
/* loaded from: classes-dex2jar.jar:b/e/e.class */
public class C1495e<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f5950a;

    /* renamed from: b */
    private int f5951b;

    /* renamed from: c */
    private int f5952c;

    /* renamed from: d */
    private int f5953d;

    /* renamed from: e */
    private int f5954e;

    /* renamed from: f */
    private int f5955f;

    /* renamed from: g */
    private int f5956g;

    /* renamed from: h */
    private int f5957h;

    public C1495e(int i) {
        if (i > 0) {
            this.f5952c = i;
            this.f5950a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: e */
    private int m29941e(K k, V v) {
        int m29940f = m29940f(k, v);
        if (m29940f >= 0) {
            return m29940f;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* renamed from: a */
    protected V m29945a(K k) {
        return null;
    }

    /* renamed from: b */
    protected void m29944b(boolean z, K k, V v, V v2) {
    }

    /* renamed from: c */
    public final V m29943c(K k) {
        V put;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f5950a.get(k);
            if (v != null) {
                this.f5956g++;
                return v;
            }
            this.f5957h++;
            V m29945a = m29945a(k);
            if (m29945a == null) {
                return null;
            }
            synchronized (this) {
                this.f5954e++;
                put = this.f5950a.put(k, m29945a);
                if (put != null) {
                    this.f5950a.put(k, put);
                } else {
                    this.f5951b += m29941e(k, m29945a);
                }
            }
            if (put != null) {
                m29944b(false, k, m29945a, put);
                return put;
            }
            m29939g(this.f5952c);
            return m29945a;
        }
    }

    /* renamed from: d */
    public final V m29942d(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f5953d++;
            this.f5951b += m29941e(k, v);
            put = this.f5950a.put(k, v);
            if (put != null) {
                this.f5951b -= m29941e(k, put);
            }
        }
        if (put != null) {
            m29944b(false, k, put, v);
        }
        m29939g(this.f5952c);
        return put;
    }

    /* renamed from: f */
    protected int m29940f(K k, V v) {
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m29939g(int r7) {
        /*
            r6 = this;
        L0:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f5951b     // Catch: java.lang.Throwable -> Lad
            if (r0 < 0) goto L84
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f5950a     // Catch: java.lang.Throwable -> Lad
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lad
            if (r0 == 0) goto L1a
            r0 = r6
            int r0 = r0.f5951b     // Catch: java.lang.Throwable -> Lad
            if (r0 != 0) goto L84
        L1a:
            r0 = r6
            int r0 = r0.f5951b     // Catch: java.lang.Throwable -> Lad
            r1 = r7
            if (r0 <= r1) goto L81
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f5950a     // Catch: java.lang.Throwable -> Lad
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lad
            if (r0 == 0) goto L2f
            goto L81
        L2f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f5950a     // Catch: java.lang.Throwable -> Lad
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Lad
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lad
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lad
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> Lad
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: java.lang.Throwable -> Lad
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> Lad
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f5950a     // Catch: java.lang.Throwable -> Lad
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = r6
            int r1 = r1.f5951b     // Catch: java.lang.Throwable -> Lad
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m29941e(r3, r4)     // Catch: java.lang.Throwable -> Lad
            int r1 = r1 - r2
            r0.f5951b = r1     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = r6
            int r1 = r1.f5955f     // Catch: java.lang.Throwable -> Lad
            r2 = 1
            int r1 = r1 + r2
            r0.f5955f = r1     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r8
            r4 = 0
            r0.m29944b(r1, r2, r3, r4)
            goto L0
        L81:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lad
            return
        L84:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lad
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lad
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> Lad
            r0 = r9
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> Lad
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> Lad
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r9
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r8
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lad
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r8
            throw r0     // Catch: java.lang.Throwable -> Lad
        Lad:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lad
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p036e.C1495e.m29939g(int):void");
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f5956g;
            int i2 = this.f5957h + i;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f5952c), Integer.valueOf(this.f5956g), Integer.valueOf(this.f5957h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
        }
        return format;
    }
}
