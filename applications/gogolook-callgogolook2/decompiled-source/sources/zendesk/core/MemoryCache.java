package zendesk.core;

import androidx.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/MemoryCache.class */
public interface MemoryCache {
    void clear();

    @NonNull
    <T> T getOrDefault(@NonNull String str, T t);

    void put(@NonNull String str, Object obj);
}
