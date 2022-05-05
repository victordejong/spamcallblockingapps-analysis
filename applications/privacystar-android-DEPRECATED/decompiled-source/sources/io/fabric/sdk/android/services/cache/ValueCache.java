package io.fabric.sdk.android.services.cache;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/cache/ValueCache.class */
public interface ValueCache<T> {
    T get(Context context, ValueLoader<T> valueLoader) throws Exception;

    void invalidate(Context context);
}
