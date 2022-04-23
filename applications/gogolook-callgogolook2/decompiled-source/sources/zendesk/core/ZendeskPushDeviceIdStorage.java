package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskPushDeviceIdStorage.class */
public class ZendeskPushDeviceIdStorage implements PushDeviceIdStorage {
    public final BaseStorage deviceIdStorage;

    public ZendeskPushDeviceIdStorage(@NonNull BaseStorage baseStorage) {
        this.deviceIdStorage = baseStorage;
    }

    @Override // zendesk.core.PushDeviceIdStorage
    @Nullable
    public PushRegistrationRequest getPushRegistrationRequest() {
        return (PushRegistrationRequest) this.deviceIdStorage.get("pushRegistrationRequest", PushRegistrationRequest.class);
    }

    @Override // zendesk.core.PushDeviceIdStorage
    @Nullable
    public String getRegisteredDeviceId() {
        return this.deviceIdStorage.get("pushDeviceIdentifier");
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public void removePushRegistrationRequest() {
        this.deviceIdStorage.remove("pushRegistrationRequest");
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public void removeRegisteredDeviceId() {
        this.deviceIdStorage.remove("pushDeviceIdentifier");
    }

    @Override // zendesk.core.PushDeviceIdStorage
    public void storeRegisteredDeviceId(@NonNull String str) {
        if (str != null) {
            this.deviceIdStorage.put("pushDeviceIdentifier", str);
        }
    }
}
