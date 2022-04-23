package io.fabric.sdk.android.services.common;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/SystemCurrentTimeProvider.class */
public class SystemCurrentTimeProvider implements CurrentTimeProvider {
    @Override // io.fabric.sdk.android.services.common.CurrentTimeProvider
    public long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }
}
