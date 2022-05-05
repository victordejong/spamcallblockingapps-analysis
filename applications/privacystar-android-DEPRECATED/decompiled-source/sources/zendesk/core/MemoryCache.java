package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/MemoryCache.class */
public interface MemoryCache {
    void clear();

    boolean contains(@NonNull String str);

    @Nullable
    <T> T get(@NonNull String str);

    @NonNull
    <T> T getOrDefault(@NonNull String str, T t);

    void put(@NonNull String str, Object obj);

    void remove(@NonNull String str);
}
