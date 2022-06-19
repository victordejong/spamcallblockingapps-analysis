package com.nostra13.universalimageloader.cache.memory;

import android.graphics.Bitmap;
import java.lang.ref.Reference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/memory/BaseMemoryCache.class */
public abstract class BaseMemoryCache implements MemoryCache {
    private final Map<String, Reference<Bitmap>> softMap = Collections.synchronizedMap(new HashMap());

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public void clear() {
        this.softMap.clear();
    }

    protected abstract Reference<Bitmap> createReference(Bitmap bitmap);

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Bitmap get(String str) {
        Reference<Bitmap> reference = this.softMap.get(str);
        return reference != null ? reference.get() : null;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Collection<String> keys() {
        HashSet hashSet;
        synchronized (this.softMap) {
            hashSet = new HashSet(this.softMap.keySet());
        }
        return hashSet;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public boolean put(String str, Bitmap bitmap) {
        this.softMap.put(str, createReference(bitmap));
        return true;
    }

    @Override // com.nostra13.universalimageloader.cache.memory.MemoryCache
    public Bitmap remove(String str) {
        Reference<Bitmap> remove = this.softMap.remove(str);
        return remove == null ? null : remove.get();
    }
}
