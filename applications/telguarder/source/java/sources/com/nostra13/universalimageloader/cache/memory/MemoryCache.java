package com.nostra13.universalimageloader.cache.memory;

import android.graphics.Bitmap;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/memory/MemoryCache.class */
public interface MemoryCache {
    void clear();

    Bitmap get(String str);

    Collection<String> keys();

    boolean put(String str, Bitmap bitmap);

    Bitmap remove(String str);
}
