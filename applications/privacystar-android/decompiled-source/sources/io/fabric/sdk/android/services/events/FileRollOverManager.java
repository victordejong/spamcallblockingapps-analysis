package io.fabric.sdk.android.services.events;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/events/FileRollOverManager.class */
public interface FileRollOverManager {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;

    void scheduleTimeBasedRollOverIfNeeded();
}
