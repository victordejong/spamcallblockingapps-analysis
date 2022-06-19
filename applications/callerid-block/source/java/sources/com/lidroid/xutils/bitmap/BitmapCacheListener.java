package com.lidroid.xutils.bitmap;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/BitmapCacheListener.class */
public interface BitmapCacheListener {
    void onClearCacheFinished();

    void onClearCacheFinished(String str);

    void onClearDiskCacheFinished();

    void onClearDiskCacheFinished(String str);

    void onClearMemoryCacheFinished();

    void onClearMemoryCacheFinished(String str);

    void onCloseCacheFinished();

    void onFlushCacheFinished();

    void onInitDiskFinished();

    void onInitMemoryCacheFinished();
}
