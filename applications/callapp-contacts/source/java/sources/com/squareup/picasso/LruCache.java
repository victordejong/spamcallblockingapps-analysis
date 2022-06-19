package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/LruCache.class */
public final class LruCache implements Cache {
    final android.util.LruCache<String, BitmapAndSize> cache;

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/LruCache$BitmapAndSize.class */
    public static final class BitmapAndSize {
        final Bitmap bitmap;
        final int byteCount;

        BitmapAndSize(Bitmap bitmap, int i) {
            this.bitmap = bitmap;
            this.byteCount = i;
        }
    }

    public LruCache(int i) {
        this.cache = new android.util.LruCache<String, BitmapAndSize>(i) { // from class: com.squareup.picasso.LruCache.1
            public int sizeOf(String str, BitmapAndSize bitmapAndSize) {
                return bitmapAndSize.byteCount;
            }
        };
    }

    public LruCache(Context context) {
        this(Utils.calculateMemoryCacheSize(context));
    }

    @Override // com.squareup.picasso.Cache
    public final void clear() {
        this.cache.evictAll();
    }

    @Override // com.squareup.picasso.Cache
    public final void clearKeyUri(String str) {
        for (String str2 : this.cache.snapshot().keySet()) {
            if (str2.startsWith(str) && str2.length() > str.length() && str2.charAt(str.length()) == '\n') {
                this.cache.remove(str2);
            }
        }
    }

    public final int evictionCount() {
        return this.cache.evictionCount();
    }

    @Override // com.squareup.picasso.Cache
    public final Bitmap get(String str) {
        BitmapAndSize bitmapAndSize = this.cache.get(str);
        if (bitmapAndSize != null) {
            return bitmapAndSize.bitmap;
        }
        return null;
    }

    public final int hitCount() {
        return this.cache.hitCount();
    }

    @Override // com.squareup.picasso.Cache
    public final int maxSize() {
        return this.cache.maxSize();
    }

    public final int missCount() {
        return this.cache.missCount();
    }

    public final int putCount() {
        return this.cache.putCount();
    }

    @Override // com.squareup.picasso.Cache
    public final void set(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int bitmapBytes = Utils.getBitmapBytes(bitmap);
        if (bitmapBytes > maxSize()) {
            this.cache.remove(str);
        } else {
            this.cache.put(str, new BitmapAndSize(bitmap, bitmapBytes));
        }
    }

    @Override // com.squareup.picasso.Cache
    public final int size() {
        return this.cache.size();
    }
}
