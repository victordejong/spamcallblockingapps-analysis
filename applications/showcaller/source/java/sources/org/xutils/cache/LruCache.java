package org.xutils.cache;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:org/xutils/cache/LruCache.class */
public class LruCache<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f40540a;

    /* renamed from: b */
    private int f40541b;

    /* renamed from: c */
    private int f40542c;

    /* renamed from: d */
    private int f40543d;

    /* renamed from: e */
    private int f40544e;

    /* renamed from: f */
    private int f40545f;

    /* renamed from: g */
    private int f40546g;

    /* renamed from: h */
    private int f40547h;

    public LruCache(int i) {
        if (i > 0) {
            this.f40542c = i;
            this.f40540a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    private int m286a(K k, V v) {
        int sizeOf = sizeOf(k, v);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    protected V create(K k) {
        return null;
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.f40544e;
        }
        return i;
    }

    public void entryRemoved(boolean z, K k, V v, V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f40545f;
        }
        return i;
    }

    public final V get(K k) {
        V put;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f40540a.get(k);
            if (v != null) {
                this.f40546g++;
                return v;
            }
            this.f40547h++;
            V create = create(k);
            if (create == null) {
                return null;
            }
            synchronized (this) {
                this.f40544e++;
                put = this.f40540a.put(k, create);
                if (put != null) {
                    this.f40540a.put(k, put);
                } else {
                    this.f40541b += m286a(k, create);
                }
            }
            if (put != null) {
                entryRemoved(false, k, create, put);
                return put;
            }
            trimToSize(this.f40542c);
            return create;
        }
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.f40546g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.f40542c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.f40547h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f40543d++;
            this.f40541b += m286a(k, v);
            put = this.f40540a.put(k, v);
            if (put != null) {
                this.f40541b -= m286a(k, put);
            }
        }
        if (put != null) {
            entryRemoved(false, k, put, v);
        }
        trimToSize(this.f40542c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.f40543d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            remove = this.f40540a.remove(k);
            if (remove != null) {
                this.f40541b -= m286a(k, remove);
            }
        }
        if (remove != null) {
            entryRemoved(false, k, remove, null);
        }
        return remove;
    }

    public void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.f40542c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f40541b;
        }
        return i;
    }

    public int sizeOf(K k, V v) {
        return 1;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f40540a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f40546g;
            int i2 = this.f40547h + i;
            format = String.format(Locale.getDefault(), "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f40542c), Integer.valueOf(this.f40546g), Integer.valueOf(this.f40547h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
        }
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
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
            int r0 = r0.f40541b     // Catch: java.lang.Throwable -> Lad
            if (r0 < 0) goto L84
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f40540a     // Catch: java.lang.Throwable -> Lad
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lad
            if (r0 == 0) goto L1a
            r0 = r6
            int r0 = r0.f40541b     // Catch: java.lang.Throwable -> Lad
            if (r0 != 0) goto L84
        L1a:
            r0 = r6
            int r0 = r0.f40541b     // Catch: java.lang.Throwable -> Lad
            r1 = r7
            if (r0 <= r1) goto L81
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f40540a     // Catch: java.lang.Throwable -> Lad
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lad
            if (r0 == 0) goto L2f
            goto L81
        L2f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f40540a     // Catch: java.lang.Throwable -> Lad
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
            java.util.LinkedHashMap<K, V> r0 = r0.f40540a     // Catch: java.lang.Throwable -> Lad
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = r6
            int r1 = r1.f40541b     // Catch: java.lang.Throwable -> Lad
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m286a(r3, r4)     // Catch: java.lang.Throwable -> Lad
            int r1 = r1 - r2
            r0.f40541b = r1     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = r6
            int r1 = r1.f40545f     // Catch: java.lang.Throwable -> Lad
            r2 = 1
            int r1 = r1 + r2
            r0.f40545f = r1     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lad
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r8
            r4 = 0
            r0.entryRemoved(r1, r2, r3, r4)
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
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.cache.LruCache.trimToSize(int):void");
    }
}
