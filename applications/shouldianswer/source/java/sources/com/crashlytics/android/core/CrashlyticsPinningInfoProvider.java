package com.crashlytics.android.core;

import io.fabric.sdk.android.services.network.AbstractC1590f;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsPinningInfoProvider.class */
class CrashlyticsPinningInfoProvider implements AbstractC1590f {
    private final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1590f
    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1590f
    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1590f
    public long getPinCreationTimeInMillis() {
        return -1L;
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1590f
    public String[] getPins() {
        return this.pinningInfo.getPins();
    }
}
