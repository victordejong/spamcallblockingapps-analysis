package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/collection/LruCache.class */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int i) {
        if (i > 0) {
            this.maxSize = i;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int safeSizeOf(K k, V v) {
        int sizeOf = sizeOf(k, v);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    @Nullable
    protected V create(@NonNull K k) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void entryRemoved(boolean z, @NonNull K k, @NonNull V v, @Nullable V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    @Nullable
    public final V get(@NonNull K k) {
        V put;
        if (k != null) {
            synchronized (this) {
                V v = this.map.get(k);
                if (v != null) {
                    this.hitCount++;
                    return v;
                }
                this.missCount++;
                V create = create(k);
                if (create == null) {
                    return null;
                }
                synchronized (this) {
                    this.createCount++;
                    put = this.map.put(k, create);
                    if (put != null) {
                        this.map.put(k, put);
                    } else {
                        this.size += safeSizeOf(k, create);
                    }
                }
                if (put != null) {
                    entryRemoved(false, k, create, put);
                    return put;
                }
                trimToSize(this.maxSize);
                return create;
            }
        }
        throw new NullPointerException("key == null");
    }

    @Nullable
    public final V put(@NonNull K k, @NonNull V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.putCount++;
            this.size += safeSizeOf(k, v);
            put = this.map.put(k, v);
            if (put != null) {
                this.size -= safeSizeOf(k, put);
            }
        }
        if (put != null) {
            entryRemoved(false, k, put, v);
        }
        trimToSize(this.maxSize);
        return put;
    }

    protected int sizeOf(@NonNull K k, @NonNull V v) {
        return 1;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.hitCount + this.missCount;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i != 0 ? (this.hitCount * 100) / i : 0));
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
        L_0x0000:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.size     // Catch: all -> 0x00ad
            if (r0 < 0) goto L_0x0084
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.map     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.size     // Catch: all -> 0x00ad
            if (r0 != 0) goto L_0x0084
        L_0x001a:
            r0 = r6
            int r0 = r0.size     // Catch: all -> 0x00ad
            r1 = r7
            if (r0 <= r1) goto L_0x0081
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.map     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x002f
            goto L_0x0081
        L_0x002f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.map     // Catch: all -> 0x00ad
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
            java.util.LinkedHashMap<K, V> r0 = r0.map     // Catch: all -> 0x00ad
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.size     // Catch: all -> 0x00ad
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.safeSizeOf(r3, r4)     // Catch: all -> 0x00ad
            int r1 = r1 - r2
            r0.size = r1     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.evictionCount     // Catch: all -> 0x00ad
            r2 = 1
            int r1 = r1 + r2
            r0.evictionCount = r1     // Catch: all -> 0x00ad
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r8
            r4 = 0
            r0.entryRemoved(r1, r2, r3, r4)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }
}
