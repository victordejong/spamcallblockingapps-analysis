package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/LruCache.class */
public class LruCache implements Cache {
    private int evictionCount;
    private int hitCount;
    final LinkedHashMap<String, Bitmap> map;
    private final int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Max size must be positive.");
        }
        this.maxSize = i;
        this.map = new LinkedHashMap<>(0, 0.75f, true);
    }

    public LruCache(Context context) {
        this(Utils.calculateMemoryCacheSize(context));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0082, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void trimToSize(int r5) {
        /*
            r4 = this;
        L_0x0000:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            int r0 = r0.size     // Catch: all -> 0x00ac
            if (r0 < 0) goto L_0x0083
            r0 = r4
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: all -> 0x00ac
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ac
            if (r0 == 0) goto L_0x001d
            r0 = r4
            int r0 = r0.size     // Catch: all -> 0x00ac
            if (r0 == 0) goto L_0x001d
            goto L_0x0083
        L_0x001d:
            r0 = r4
            int r0 = r0.size     // Catch: all -> 0x00ac
            r1 = r5
            if (r0 <= r1) goto L_0x0080
            r0 = r4
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: all -> 0x00ac
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ac
            if (r0 == 0) goto L_0x0032
            goto L_0x0080
        L_0x0032:
            r0 = r4
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: all -> 0x00ac
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x00ac
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00ac
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00ac
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x00ac
            r6 = r0
            r0 = r6
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x00ac
            java.lang.String r0 = (java.lang.String) r0     // Catch: all -> 0x00ac
            r7 = r0
            r0 = r6
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x00ac
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: all -> 0x00ac
            r6 = r0
            r0 = r4
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r0.map     // Catch: all -> 0x00ac
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00ac
            r0 = r4
            r1 = r4
            int r1 = r1.size     // Catch: all -> 0x00ac
            r2 = r6
            int r2 = com.squareup.picasso.Utils.getBitmapBytes(r2)     // Catch: all -> 0x00ac
            int r1 = r1 - r2
            r0.size = r1     // Catch: all -> 0x00ac
            r0 = r4
            r1 = r4
            int r1 = r1.evictionCount     // Catch: all -> 0x00ac
            r2 = 1
            int r1 = r1 + r2
            r0.evictionCount = r1     // Catch: all -> 0x00ac
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x00ac
            goto L_0x0000
        L_0x0080:
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x00ac
            return
        L_0x0083:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x00ac
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00ac
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x00ac
            r0 = r6
            r1 = r4
            java.lang.Class r1 = r1.getClass()     // Catch: all -> 0x00ac
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00ac
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ac
            r0 = r6
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ac
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00ac
            r0.<init>(r1)     // Catch: all -> 0x00ac
            r0 = r7
            throw r0     // Catch: all -> 0x00ac
        L_0x00ac:
            r7 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x00ac
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.LruCache.trimToSize(int):void");
    }

    @Override // com.squareup.picasso.Cache
    public final void clear() {
        synchronized (this) {
            evictAll();
        }
    }

    @Override // com.squareup.picasso.Cache
    public final void clearKeyUri(String str) {
        synchronized (this) {
            int length = str.length();
            Iterator<Map.Entry<String, Bitmap>> it = this.map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<String, Bitmap> next = it.next();
                String key = next.getKey();
                Bitmap value = next.getValue();
                int indexOf = key.indexOf(10);
                if (indexOf == length && key.substring(0, indexOf).equals(str)) {
                    it.remove();
                    this.size -= Utils.getBitmapBytes(value);
                    z = true;
                }
            }
            if (z) {
                trimToSize(this.maxSize);
            }
        }
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.evictionCount;
        }
        return i;
    }

    @Override // com.squareup.picasso.Cache
    public Bitmap get(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Bitmap bitmap = this.map.get(str);
            if (bitmap != null) {
                this.hitCount++;
                return bitmap;
            }
            this.missCount++;
            return null;
        }
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.hitCount;
        }
        return i;
    }

    @Override // com.squareup.picasso.Cache
    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.maxSize;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.missCount;
        }
        return i;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.putCount;
        }
        return i;
    }

    @Override // com.squareup.picasso.Cache
    public void set(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        synchronized (this) {
            this.putCount++;
            this.size += Utils.getBitmapBytes(bitmap);
            Bitmap put = this.map.put(str, bitmap);
            if (put != null) {
                this.size -= Utils.getBitmapBytes(put);
            }
        }
        trimToSize(this.maxSize);
    }

    @Override // com.squareup.picasso.Cache
    public final int size() {
        int i;
        synchronized (this) {
            i = this.size;
        }
        return i;
    }
}
