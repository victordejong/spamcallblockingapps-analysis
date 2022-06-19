package com.lidroid.xutils.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.cache.LruDiskCache;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/core/BitmapCache.class */
public class BitmapCache {
    private BitmapGlobalConfig globalConfig;
    private LruDiskCache mDiskLruCache;
    private LruMemoryCache<MemoryCacheKey, Bitmap> mMemoryCache;
    private final int DISK_CACHE_INDEX = 0;
    private final Object mDiskCacheLock = new Object();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta.class */
    public class BitmapMeta {
        public byte[] data;
        public long expiryTimestamp;
        public FileInputStream inputStream;

        private BitmapMeta() {
            BitmapCache.this = r4;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey.class */
    public class MemoryCacheKey {
        private String subKey;
        private String uri;

        private MemoryCacheKey(String str, BitmapDisplayConfig bitmapDisplayConfig) {
            BitmapCache.this = r4;
            this.uri = str;
            this.subKey = bitmapDisplayConfig == null ? null : bitmapDisplayConfig.toString();
        }

        public boolean equals(Object obj) {
            String str;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MemoryCacheKey)) {
                return false;
            }
            MemoryCacheKey memoryCacheKey = (MemoryCacheKey) obj;
            if (!this.uri.equals(memoryCacheKey.uri)) {
                return false;
            }
            String str2 = this.subKey;
            if (str2 != null && (str = memoryCacheKey.subKey) != null) {
                return str2.equals(str);
            }
            return true;
        }

        public int hashCode() {
            return this.uri.hashCode();
        }
    }

    public BitmapCache(BitmapGlobalConfig bitmapGlobalConfig) {
        if (bitmapGlobalConfig != null) {
            this.globalConfig = bitmapGlobalConfig;
            return;
        }
        throw new IllegalArgumentException("globalConfig may not be null");
    }

    private Bitmap addBitmapToMemoryCache(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap, long j) {
        Bitmap bitmap2 = bitmap;
        if (bitmapDisplayConfig != null) {
            BitmapFactory bitmapFactory = bitmapDisplayConfig.getBitmapFactory();
            bitmap2 = bitmap;
            if (bitmapFactory != null) {
                bitmap2 = bitmapFactory.cloneNew().createBitmap(bitmap);
            }
        }
        if (str != null && bitmap2 != null && this.globalConfig.isMemoryCacheEnabled() && this.mMemoryCache != null) {
            this.mMemoryCache.put(new MemoryCacheKey(str, bitmapDisplayConfig), bitmap2, j);
        }
        return bitmap2;
    }

    private Bitmap decodeBitmapMeta(BitmapMeta bitmapMeta, BitmapDisplayConfig bitmapDisplayConfig) {
        Bitmap bitmap = null;
        if (bitmapMeta == null) {
            return null;
        }
        if (bitmapMeta.inputStream != null) {
            bitmap = (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeFileDescriptor(bitmapMeta.inputStream.getFD()) : BitmapDecoder.decodeSampledBitmapFromDescriptor(bitmapMeta.inputStream.getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        } else if (bitmapMeta.data != null) {
            bitmap = (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeByteArray(bitmapMeta.data) : BitmapDecoder.decodeSampledBitmapFromByteArray(bitmapMeta.data, bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        }
        return bitmap;
    }

    private Bitmap rotateBitmapIfNeeded(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap) {
        Bitmap bitmap2;
        synchronized (this) {
            bitmap2 = bitmap;
            if (bitmapDisplayConfig != null) {
                bitmap2 = bitmap;
                if (bitmapDisplayConfig.isAutoRotation()) {
                    File bitmapFileFromDiskCache = getBitmapFileFromDiskCache(str);
                    bitmap2 = bitmap;
                    if (bitmapFileFromDiskCache != null) {
                        bitmap2 = bitmap;
                        if (bitmapFileFromDiskCache.exists()) {
                            try {
                                int i = 0;
                                int attributeInt = new ExifInterface(bitmapFileFromDiskCache.getPath()).getAttributeInt("Orientation", 0);
                                if (attributeInt == 3) {
                                    i = 180;
                                } else if (attributeInt == 6) {
                                    i = 90;
                                } else if (attributeInt == 8) {
                                    i = 270;
                                }
                                bitmap2 = bitmap;
                                if (i != 0) {
                                    Matrix matrix = new Matrix();
                                    matrix.postRotate(i);
                                    bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                    bitmap.recycle();
                                }
                            } catch (Throwable th) {
                                return bitmap;
                            }
                        }
                    }
                }
            }
        }
        return bitmap2;
    }

    public void clearCache() {
        clearMemoryCache();
        clearDiskCache();
    }

    public void clearCache(String str) {
        clearMemoryCache(str);
        clearDiskCache(str);
    }

    public void clearDiskCache() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && !lruDiskCache.isClosed()) {
                this.mDiskLruCache.delete();
                this.mDiskLruCache.close();
                this.mDiskLruCache = null;
            }
        }
        initDiskCache();
    }

    public void clearDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && !lruDiskCache.isClosed()) {
                this.mDiskLruCache.remove(str);
            }
        }
    }

    public void clearMemoryCache() {
        LruMemoryCache<MemoryCacheKey, Bitmap> lruMemoryCache = this.mMemoryCache;
        if (lruMemoryCache != null) {
            lruMemoryCache.evictAll();
        }
    }

    public void clearMemoryCache(String str) {
        MemoryCacheKey memoryCacheKey = new MemoryCacheKey(str, null);
        if (this.mMemoryCache != null) {
            while (this.mMemoryCache.containsKey(memoryCacheKey)) {
                this.mMemoryCache.remove(memoryCacheKey);
            }
        }
    }

    public void close() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                if (!lruDiskCache.isClosed()) {
                    this.mDiskLruCache.close();
                }
                this.mDiskLruCache = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap downloadBitmap(java.lang.String r9, com.lidroid.xutils.bitmap.BitmapDisplayConfig r10, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> r11) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.bitmap.core.BitmapCache.downloadBitmap(java.lang.String, com.lidroid.xutils.bitmap.BitmapDisplayConfig, com.lidroid.xutils.BitmapUtils$BitmapLoadTask):android.graphics.Bitmap");
    }

    public void flush() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                lruDiskCache.flush();
            }
        }
    }

    public File getBitmapFileFromDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                return lruDiskCache.getCacheFile(str, 0);
            }
            return null;
        }
    }

    public Bitmap getBitmapFromDiskCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        Throwable th;
        LruDiskCache.Snapshot snapshot;
        Bitmap decodeSampledBitmapFromDescriptor;
        if (str == null || !this.globalConfig.isDiskCacheEnabled()) {
            return null;
        }
        if (this.mDiskLruCache == null) {
            initDiskCache();
        }
        LruDiskCache lruDiskCache = this.mDiskLruCache;
        if (lruDiskCache == null) {
            return null;
        }
        try {
            LruDiskCache.Snapshot snapshot2 = lruDiskCache.get(str);
            LruDiskCache.Snapshot snapshot3 = snapshot2;
            if (snapshot2 != null) {
                if (bitmapDisplayConfig != null) {
                    try {
                        if (!bitmapDisplayConfig.isShowOriginal()) {
                            decodeSampledBitmapFromDescriptor = BitmapDecoder.decodeSampledBitmapFromDescriptor(snapshot2.getInputStream(0).getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
                            Bitmap addBitmapToMemoryCache = addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, decodeSampledBitmapFromDescriptor), this.mDiskLruCache.getExpiryTimestamp(str));
                            IOUtils.closeQuietly(snapshot2);
                            return addBitmapToMemoryCache;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        snapshot = snapshot2;
                        try {
                            LogUtils.m2008e(th.getMessage(), th);
                            snapshot3 = snapshot;
                            return null;
                        } finally {
                            IOUtils.closeQuietly(snapshot);
                        }
                    }
                }
                decodeSampledBitmapFromDescriptor = BitmapDecoder.decodeFileDescriptor(snapshot2.getInputStream(0).getFD());
                Bitmap addBitmapToMemoryCache2 = addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, decodeSampledBitmapFromDescriptor), this.mDiskLruCache.getExpiryTimestamp(str));
                IOUtils.closeQuietly(snapshot2);
                return addBitmapToMemoryCache2;
            }
        } catch (Throwable th3) {
            th = th3;
            snapshot = null;
        }
        return null;
    }

    public Bitmap getBitmapFromMemCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        if (this.mMemoryCache == null || !this.globalConfig.isMemoryCacheEnabled()) {
            return null;
        }
        return this.mMemoryCache.get(new MemoryCacheKey(str, bitmapDisplayConfig));
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public void initDiskCache() {
        LruDiskCache lruDiskCache;
        synchronized (this.mDiskCacheLock) {
            if (this.globalConfig.isDiskCacheEnabled() && ((lruDiskCache = this.mDiskLruCache) == null || lruDiskCache.isClosed())) {
                File file = new File(this.globalConfig.getDiskCachePath());
                if (file.exists() || file.mkdirs()) {
                    ?? availableSpace = OtherUtils.getAvailableSpace(file);
                    ?? diskCacheSize = this.globalConfig.getDiskCacheSize();
                    char c = availableSpace;
                    if (availableSpace > diskCacheSize) {
                        c = diskCacheSize;
                    }
                    LruDiskCache open = LruDiskCache.open(file, 1, 1, c);
                    this.mDiskLruCache = open;
                    open.setFileNameGenerator(this.globalConfig.getFileNameGenerator());
                    LogUtils.m2011d("create disk cache success");
                }
            }
        }
    }

    public void initMemoryCache() {
        if (!this.globalConfig.isMemoryCacheEnabled()) {
            return;
        }
        if (this.mMemoryCache != null) {
            try {
                clearMemoryCache();
            } catch (Throwable th) {
            }
        }
        this.mMemoryCache = new LruMemoryCache<MemoryCacheKey, Bitmap>(this.globalConfig.getMemoryCacheSize()) { // from class: com.lidroid.xutils.bitmap.core.BitmapCache.1
            public int sizeOf(MemoryCacheKey memoryCacheKey, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        };
    }

    public void setDiskCacheFileNameGenerator(FileNameGenerator fileNameGenerator) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && fileNameGenerator != null) {
                lruDiskCache.setFileNameGenerator(fileNameGenerator);
            }
        }
    }

    public void setDiskCacheSize(int i) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                lruDiskCache.setMaxSize(i);
            }
        }
    }

    public void setMemoryCacheSize(int i) {
        LruMemoryCache<MemoryCacheKey, Bitmap> lruMemoryCache = this.mMemoryCache;
        if (lruMemoryCache != null) {
            lruMemoryCache.setMaxSize(i);
        }
    }
}
