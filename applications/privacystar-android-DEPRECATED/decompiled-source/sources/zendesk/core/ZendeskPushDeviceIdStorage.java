package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushDeviceIdStorage.class */
class ZendeskPushDeviceIdStorage implements PushDeviceIdStorage {
    private final BaseStorage deviceIdStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskPushDeviceIdStorage(@NonNull BaseStorage baseStorage) {
        this.deviceIdStorage = baseStorage;
    }

    @Override // zendesk.core.PushDeviceIdStorage
    @Nullable
    public String getPushDeviceId() {
        return this.deviceIdStorage.get(Constants.PUSH_DEVICE_IDENTIFIER);
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public boolean hasStoredDeviceId() {
        return this.deviceIdStorage.get(Constants.PUSH_DEVICE_IDENTIFIER) != null;
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public void removePushDeviceId() {
        this.deviceIdStorage.remove(Constants.PUSH_DEVICE_IDENTIFIER);
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public void storePushDeviceId(@NonNull String str) {
        if (str != null) {
            this.deviceIdStorage.put(Constants.PUSH_DEVICE_IDENTIFIER, str);
        }
    }
}
