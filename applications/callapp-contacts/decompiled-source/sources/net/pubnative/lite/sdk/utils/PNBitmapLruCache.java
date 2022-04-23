package net.pubnative.lite.sdk.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNBitmapLruCache.class */
public class PNBitmapLruCache {
    private static final int BYTES_IN_KILOBYTES = 1024;
    private static final int MAX_MEMORY_SIZE = 31457280;
    private static LruCache<String, Bitmap> mMemoryCache;

    static {
        int maxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
        if (maxMemory > MAX_MEMORY_SIZE) {
            maxMemory = MAX_MEMORY_SIZE;
        }
        mMemoryCache = new LruCache<String, Bitmap>(maxMemory) { // from class: net.pubnative.lite.sdk.utils.PNBitmapLruCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            public final int sizeOf(String str, Bitmap bitmap) {
                return bitmap.getByteCount() / 1024;
            }
        };
    }

    public static void addBitmapToMemoryCache(String str, Bitmap bitmap) {
        if (!TextUtils.isEmpty(str) && bitmap != null) {
            String valueOf = String.valueOf(str.hashCode());
            if (getBitmapFromMemCache(valueOf) == null) {
                mMemoryCache.put(valueOf, bitmap);
            }
        }
    }

    public static Bitmap getBitmapFromMemCache(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return mMemoryCache.get(String.valueOf(str.hashCode()));
    }
}
