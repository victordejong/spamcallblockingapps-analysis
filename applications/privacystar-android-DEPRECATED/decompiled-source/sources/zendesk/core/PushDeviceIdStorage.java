package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushDeviceIdStorage.class */
public interface PushDeviceIdStorage {
    @Nullable
    String getPushDeviceId();

    boolean hasStoredDeviceId();

    void removePushDeviceId();

    void storePushDeviceId(@NonNull String str);
}
