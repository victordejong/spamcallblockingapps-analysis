package com.apptentive.android.sdk.util.cache;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.p001v4.util.LruCache;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/cache/ImageMemoryCache.class */
public class ImageMemoryCache {
    private static final int MAX_CACHE_COUNT = 1;
    private static final String URI_DIMENTION_SEPARATOR = "_";
    private static final String WIDTH_HEIGHT_SEPARATOR = ":";
    private final LruCache<String, Object> bufferCache;

    public ImageMemoryCache() {
        this.bufferCache = new LruCache<String, Object>(1) { // from class: com.apptentive.android.sdk.util.cache.ImageMemoryCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            public void entryRemoved(boolean z, String str, Object obj, Object obj2) {
                if (obj == null) {
                    return;
                }
                if (obj instanceof Bitmap) {
                    ((Bitmap) obj).recycle();
                } else if (obj instanceof BitmapDrawable) {
                    ((BitmapDrawable) obj).getBitmap().recycle();
                }
            }
        };
    }

    public ImageMemoryCache(int i) {
        this.bufferCache = new LruCache<String, Object>(i * 1024 * 1024) { // from class: com.apptentive.android.sdk.util.cache.ImageMemoryCache.2
            /* JADX INFO: Access modifiers changed from: protected */
            public void entryRemoved(boolean z, String str, Object obj, Object obj2) {
                if (obj == null) {
                    return;
                }
                if (obj instanceof Bitmap) {
                    ((Bitmap) obj).recycle();
                } else if (obj instanceof BitmapDrawable) {
                    ((BitmapDrawable) obj).getBitmap().recycle();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            public int sizeOf(String str, Object obj) {
                int i2;
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    i2 = bitmap.getRowBytes() * bitmap.getHeight();
                } else if (obj instanceof BitmapDrawable) {
                    Bitmap bitmap2 = ((BitmapDrawable) obj).getBitmap();
                    i2 = bitmap2.getHeight() * bitmap2.getRowBytes();
                } else {
                    i2 = 0;
                }
                return i2;
            }
        };
    }

    public static Comparator<String> createKeyComparator() {
        return new Comparator<String>() { // from class: com.apptentive.android.sdk.util.cache.ImageMemoryCache.3
            public int compare(String str, String str2) {
                return str.substring(0, str.lastIndexOf("_")).compareTo(str2.substring(0, str2.lastIndexOf("_")));
            }
        };
    }

    public static List<String> findCacheKeysForImageUri(String str, ImageMemoryCache imageMemoryCache) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : imageMemoryCache.getKeySet()) {
            if (str2.startsWith(str)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static String generateMemoryCacheEntryKey(String str, int i, int i2) {
        return str + "_" + i + WIDTH_HEIGHT_SEPARATOR + i2;
    }

    public static List<Bitmap> getCachedBitmapsForImageUri(String str, ImageMemoryCache imageMemoryCache) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : imageMemoryCache.getKeySet()) {
            if (str2.startsWith(str)) {
                arrayList.add((Bitmap) imageMemoryCache.getObjectFromCache(str2));
            }
        }
        return arrayList;
    }

    public static void removeFromCache(String str, ImageMemoryCache imageMemoryCache) {
        ArrayList<String> arrayList = new ArrayList();
        for (String str2 : imageMemoryCache.getKeySet()) {
            if (str2.startsWith(str)) {
                arrayList.add(str2);
            }
        }
        for (String str3 : arrayList) {
            imageMemoryCache.removeObjectFromCache(str3);
        }
    }

    public void addObjectToCache(String str, Object obj) {
        if (!str.isEmpty() && obj != null && getObjectFromCache(str) == null) {
            this.bufferCache.put(str, obj);
        }
    }

    public void evictAll() {
        if (this.bufferCache != null) {
            this.bufferCache.evictAll();
        }
    }

    public Set<String> getKeySet() {
        return this.bufferCache.snapshot().keySet();
    }

    public Object getObjectFromCache(String str) {
        if (this.bufferCache == null) {
            return null;
        }
        return this.bufferCache.get(str);
    }

    public void removeObjectFromCache(String str) {
        if (!str.isEmpty() && this.bufferCache != null) {
            this.bufferCache.remove(str);
        }
    }
}
