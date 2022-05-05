package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushDeviceIdStorage.class */
public interface PushDeviceIdStorage {
    @Nullable
    PushRegistrationRequest getPushRegistrationRequest();

    @Nullable
    String getRegisteredDeviceId();

    void removePushRegistrationRequest();

    void removeRegisteredDeviceId();

    void storeRegisteredDeviceId(@NonNull String str);
}
