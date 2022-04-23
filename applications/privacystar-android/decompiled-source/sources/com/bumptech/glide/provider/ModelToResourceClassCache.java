package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import com.bumptech.glide.util.MultiClassKey;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ModelToResourceClassCache.class */
public class ModelToResourceClassCache {
    private final AtomicReference<MultiClassKey> resourceClassKeyRef = new AtomicReference<>();
    private final ArrayMap<MultiClassKey, List<Class<?>>> registeredResourceClassCache = new ArrayMap<>();

    public void clear() {
        synchronized (this.registeredResourceClassCache) {
            this.registeredResourceClassCache.clear();
        }
    }

    @Nullable
    public List<Class<?>> get(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        MultiClassKey multiClassKey;
        List<Class<?>> list;
        MultiClassKey andSet = this.resourceClassKeyRef.getAndSet(null);
        if (andSet == null) {
            multiClassKey = new MultiClassKey(cls, cls2);
        } else {
            andSet.set(cls, cls2);
            multiClassKey = andSet;
        }
        synchronized (this.registeredResourceClassCache) {
            list = this.registeredResourceClassCache.get(multiClassKey);
        }
        this.resourceClassKeyRef.set(multiClassKey);
        return list;
    }

    public void put(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull List<Class<?>> list) {
        synchronized (this.registeredResourceClassCache) {
            this.registeredResourceClassCache.put(new MultiClassKey(cls, cls2), list);
        }
    }
}
