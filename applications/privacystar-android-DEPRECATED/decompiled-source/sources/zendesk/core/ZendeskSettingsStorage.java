package zendesk.core;

import android.support.annotation.NonNull;
import com.google.gson.JsonElement;
import com.zendesk.util.StringUtils;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSettingsStorage.class */
class ZendeskSettingsStorage implements SettingsStorage {
    private static final String LAST_UPDATE = "last_settings_update";
    private final BaseStorage settingsStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskSettingsStorage(BaseStorage baseStorage) {
        this.settingsStorage = baseStorage;
    }

    @Override // zendesk.core.SettingsStorage
    public boolean areSettingsUpToDate(long j, @NonNull TimeUnit timeUnit) {
        Long l;
        synchronized (this.settingsStorage) {
            l = (Long) this.settingsStorage.get(LAST_UPDATE, Long.class);
        }
        boolean z = false;
        if (l == null || l.longValue() == -1) {
            return false;
        }
        if (System.currentTimeMillis() - l.longValue() < TimeUnit.MILLISECONDS.convert(j, timeUnit)) {
            z = true;
        }
        return z;
    }

    @Override // zendesk.core.SettingsStorage
    public void clear() {
        synchronized (this.settingsStorage) {
            this.settingsStorage.clear();
        }
    }

    @Override // zendesk.core.SettingsStorage
    public <E> E getSettings(@NonNull String str, @NonNull Class<E> cls) {
        E e;
        synchronized (this.settingsStorage) {
            e = (E) this.settingsStorage.get(str, cls);
        }
        return e;
    }

    @Override // zendesk.core.SettingsStorage
    public boolean hasStoredSettings() {
        boolean hasLength;
        synchronized (this.settingsStorage) {
            hasLength = StringUtils.hasLength(this.settingsStorage.get(LAST_UPDATE));
        }
        return hasLength;
    }

    @Override // zendesk.core.SettingsStorage
    public void storeRawSettings(@NonNull Map<String, JsonElement> map) {
        synchronized (this.settingsStorage) {
            this.settingsStorage.put(LAST_UPDATE, Long.valueOf(System.currentTimeMillis()));
            for (Map.Entry<String, JsonElement> entry : map.entrySet()) {
                this.settingsStorage.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
