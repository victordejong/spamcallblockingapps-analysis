package androidx.b;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/b/e.class */
public class e<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f1170a;

    /* renamed from: b  reason: collision with root package name */
    private int f1171b;

    /* renamed from: c  reason: collision with root package name */
    private int f1172c;

    /* renamed from: d  reason: collision with root package name */
    private int f1173d;
    private int e;
    private int f;
    private int g;
    private int h;

    public e(int i) {
        if (i > 0) {
            this.f1172c = i;
            this.f1170a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int a(K k, V v) {
        int sizeOf = sizeOf(k, v);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.e;
        }
        return i;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f;
        }
        return i;
    }

    public final V get(K k) {
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f1170a.get(k);
            if (v != null) {
                this.g++;
                return v;
            }
            this.h++;
            return null;
        }
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.f1172c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f1173d++;
            this.f1171b += a(k, v);
            put = this.f1170a.put(k, v);
            if (put != null) {
                this.f1171b -= a(k, put);
            }
        }
        trimToSize(this.f1172c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.f1173d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            remove = this.f1170a.remove(k);
            if (remove != null) {
                this.f1171b -= a(k, remove);
            }
        }
        return remove;
    }

    public void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.f1172c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f1171b;
        }
        return i;
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f1170a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.g;
            int i2 = this.h + i;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f1172c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
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
        L_0x0000:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f1171b     // Catch: all -> 0x00a5
            if (r0 < 0) goto L_0x007c
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1170a     // Catch: all -> 0x00a5
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.f1171b     // Catch: all -> 0x00a5
            if (r0 != 0) goto L_0x007c
        L_0x001a:
            r0 = r6
            int r0 = r0.f1171b     // Catch: all -> 0x00a5
            r1 = r7
            if (r0 <= r1) goto L_0x0079
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1170a     // Catch: all -> 0x00a5
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x002f
            goto L_0x0079
        L_0x002f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1170a     // Catch: all -> 0x00a5
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x00a5
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00a5
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00a5
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x00a5
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f1170a     // Catch: all -> 0x00a5
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00a5
            r0 = r6
            r1 = r6
            int r1 = r1.f1171b     // Catch: all -> 0x00a5
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.a(r3, r4)     // Catch: all -> 0x00a5
            int r1 = r1 - r2
            r0.f1171b = r1     // Catch: all -> 0x00a5
            r0 = r6
            r1 = r6
            int r1 = r1.f     // Catch: all -> 0x00a5
            r2 = 1
            int r1 = r1 + r2
            r0.f = r1     // Catch: all -> 0x00a5
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            goto L_0x0000
        L_0x0079:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            return
        L_0x007c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x00a5
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: all -> 0x00a5
            r0 = r8
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: all -> 0x00a5
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00a5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5
            r0 = r8
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a5
            r0.<init>(r1)     // Catch: all -> 0x00a5
            r0 = r9
            throw r0     // Catch: all -> 0x00a5
        L_0x00a5:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.b.e.trimToSize(int):void");
    }
}
