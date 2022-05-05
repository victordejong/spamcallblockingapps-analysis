package io.fabric.sdk.android.services.cache;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/cache/AbstractValueCache.class */
public abstract class AbstractValueCache<T> implements ValueCache<T> {
    private final ValueCache<T> childCache;

    public AbstractValueCache() {
        this(null);
    }

    public AbstractValueCache(ValueCache<T> valueCache) {
        this.childCache = valueCache;
    }

    private void cache(Context context, T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        cacheValue(context, t);
    }

    protected abstract void cacheValue(Context context, T t);

    protected abstract void doInvalidate(Context context);

    @Override // io.fabric.sdk.android.services.cache.ValueCache
    public final T get(Context context, ValueLoader<T> valueLoader) throws Exception {
        T t;
        synchronized (this) {
            T cached = getCached(context);
            t = cached;
            if (cached == null) {
                T load = this.childCache != null ? this.childCache.get(context, valueLoader) : valueLoader.load(context);
                cache(context, load);
                t = load;
            }
        }
        return t;
    }

    protected abstract T getCached(Context context);

    @Override // io.fabric.sdk.android.services.cache.ValueCache
    public final void invalidate(Context context) {
        synchronized (this) {
            doInvalidate(context);
        }
    }
}
