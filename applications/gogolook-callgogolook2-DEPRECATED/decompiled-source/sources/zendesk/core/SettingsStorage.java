package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p384e.AbstractC10104j;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsStorage.class */
public interface SettingsStorage {
    boolean areSettingsUpToDate(long j, @NonNull TimeUnit timeUnit);

    void clear();

    @Nullable
    <E> E getSettings(@NonNull String str, @NonNull Class<E> cls);

    boolean hasStoredSettings();

    void storeRawSettings(@NonNull Map<String, AbstractC10104j> map);
}
