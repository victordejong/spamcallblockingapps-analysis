package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache.class */
public class LruMemoryCache implements MemoryCache {
    private final LinkedHashMap<String, Bitmap> map;
    private final int maxSize;
    private int size;

    public LruMemoryCache(int i) {
        if (i > 0) {
            this.maxSize = i;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void trimToSize(int r7) {
        /*
            r6 = this;
        L0:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.size     // Catch: java.lang.Throwable -> Laa
            if (r0 < 0) goto L81
            r0 = r6
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: java.lang.Throwable -> Laa
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto L1a
            r0 = r6
            int r0 = r0.size     // Catch: java.lang.Throwable -> Laa
            if (r0 != 0) goto L81
        L1a:
            r0 = r6
            int r0 = r0.size     // Catch: java.lang.Throwable -> Laa
            r1 = r7
            if (r0 <= r1) goto L7e
            r0 = r6
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: java.lang.Throwable -> Laa
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto L2f
            goto L7e
        L2f:
            r0 = r6
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: java.lang.Throwable -> Laa
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Laa
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Laa
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> Laa
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L4d
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            goto L80
        L4d:
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> Laa
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> Laa
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> Laa
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: java.lang.Throwable -> Laa
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> Laa
            r0 = r6
            r1 = r6
            int r1 = r1.size     // Catch: java.lang.Throwable -> Laa
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.sizeOf(r3, r4)     // Catch: java.lang.Throwable -> Laa
            int r1 = r1 - r2
            r0.size = r1     // Catch: java.lang.Throwable -> Laa
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            goto L0
        L7e:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
        L80:
            return
        L81:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Laa
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Laa
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> Laa
            r0 = r9
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> Laa
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Laa
            r0 = r9
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Laa
            r0 = r8
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Laa
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Laa
            r0 = r8
            throw r0     // Catch: java.lang.Throwable -> Laa
        Laa:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache.trimToSize(int):void");
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public void clear() {
        trimToSize(-1);
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public final Bitmap get(String str) {
        Bitmap bitmap;
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            bitmap = this.map.get(str);
        }
        return bitmap;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Collection<String> keys() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.map.keySet());
        }
        return hashSet;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public final boolean put(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.size += sizeOf(str, bitmap);
            Bitmap put = this.map.put(str, bitmap);
            if (put != null) {
                this.size -= sizeOf(str, put);
            }
        }
        trimToSize(this.maxSize);
        return true;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public final Bitmap remove(String str) {
        Bitmap remove;
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            remove = this.map.remove(str);
            if (remove != null) {
                this.size -= sizeOf(str, remove);
            }
        }
        return remove;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            format = String.format("LruCache[maxSize=%d]", Integer.valueOf(this.maxSize));
        }
        return format;
    }
}
