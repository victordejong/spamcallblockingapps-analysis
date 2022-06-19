package androidx.p023b;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
/* renamed from: androidx.b.e */
/* loaded from: classes-dex2jar.jar:androidx/b/e.class */
public class C0434e<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f1722a;

    /* renamed from: b */
    private int f1723b;

    /* renamed from: c */
    private int f1724c;

    /* renamed from: d */
    private int f1725d;

    /* renamed from: e */
    private int f1726e;

    /* renamed from: f */
    private int f1727f;

    /* renamed from: g */
    private int f1728g;

    /* renamed from: h */
    private int f1729h;

    public C0434e(int i) {
        if (i > 0) {
            this.f1724c = i;
            this.f1722a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    private int m45538a(K k, V v) {
        int sizeOf = sizeOf(k, v);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.f1726e;
        }
        return i;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f1727f;
        }
        return i;
    }

    public final V get(K k) {
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f1722a.get(k);
            if (v != null) {
                this.f1728g++;
                return v;
            }
            this.f1729h++;
            return null;
        }
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.f1728g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.f1724c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.f1729h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f1725d++;
            this.f1723b += m45538a(k, v);
            put = this.f1722a.put(k, v);
            if (put != null) {
                this.f1723b -= m45538a(k, put);
            }
        }
        trimToSize(this.f1724c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.f1725d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            remove = this.f1722a.remove(k);
            if (remove != null) {
                this.f1723b -= m45538a(k, remove);
            }
        }
        return remove;
    }

    public void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.f1724c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f1723b;
        }
        return i;
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f1722a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f1728g;
            int i2 = this.f1729h + i;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f1724c), Integer.valueOf(this.f1728g), Integer.valueOf(this.f1729h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
        }
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a4, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r7) {
        /*
            r6 = this;
        L0:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f1723b     // Catch: java.lang.Throwable -> La5
            if (r0 < 0) goto L7c
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1722a     // Catch: java.lang.Throwable -> La5
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L1a
            r0 = r6
            int r0 = r0.f1723b     // Catch: java.lang.Throwable -> La5
            if (r0 != 0) goto L7c
        L1a:
            r0 = r6
            int r0 = r0.f1723b     // Catch: java.lang.Throwable -> La5
            r1 = r7
            if (r0 <= r1) goto L79
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1722a     // Catch: java.lang.Throwable -> La5
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L2f
            goto L79
        L2f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1722a     // Catch: java.lang.Throwable -> La5
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> La5
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> La5
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> La5
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> La5
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: java.lang.Throwable -> La5
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> La5
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1722a     // Catch: java.lang.Throwable -> La5
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> La5
            r0 = r6
            r1 = r6
            int r1 = r1.f1723b     // Catch: java.lang.Throwable -> La5
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m45538a(r3, r4)     // Catch: java.lang.Throwable -> La5
            int r1 = r1 - r2
            r0.f1723b = r1     // Catch: java.lang.Throwable -> La5
            r0 = r6
            r1 = r6
            int r1 = r1.f1727f     // Catch: java.lang.Throwable -> La5
            r2 = 1
            int r1 = r1 + r2
            r0.f1727f = r1     // Catch: java.lang.Throwable -> La5
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            goto L0
        L79:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            return
        L7c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> La5
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: java.lang.Throwable -> La5
            r0 = r8
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> La5
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> La5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> La5
            r0 = r8
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> La5
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La5
            r0 = r9
            throw r0     // Catch: java.lang.Throwable -> La5
        La5:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p023b.C0434e.trimToSize(int):void");
    }
}
