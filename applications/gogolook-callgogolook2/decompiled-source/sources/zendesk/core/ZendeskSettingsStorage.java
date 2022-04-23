package zendesk.core;

import androidx.annotation.NonNull;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSettingsStorage.class */
public class ZendeskSettingsStorage implements SettingsStorage {
    public final BaseStorage settingsStorage;

    public ZendeskSettingsStorage(BaseStorage baseStorage) {
        this.settingsStorage = baseStorage;
    }

    @Override // zendesk.core.SettingsStorage
    public boolean areSettingsUpToDate(long j, @NonNull TimeUnit timeUnit) {
        Long l;
        synchronized (this.settingsStorage) {
            l = (Long) this.settingsStorage.get("last_settings_update", Long.class);
        }
        boolean z = false;
        if (l != null) {
            if (l.longValue() == -1) {
                z = false;
            } else {
                z = false;
                if (System.currentTimeMillis() - l.longValue() < TimeUnit.MILLISECONDS.convert(j, timeUnit)) {
                    z = true;
                }
            }
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
        boolean b;
        synchronized (this.settingsStorage) {
            b = C10862d.m10390b(this.settingsStorage.get("last_settings_update"));
        }
        return b;
    }

    @Override // zendesk.core.SettingsStorage
    public void storeRawSettings(@NonNull Map<String, AbstractC10104j> map) {
        synchronized (this.settingsStorage) {
            this.settingsStorage.put("last_settings_update", Long.valueOf(System.currentTimeMillis()));
            for (Map.Entry<String, AbstractC10104j> entry : map.entrySet()) {
                this.settingsStorage.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
