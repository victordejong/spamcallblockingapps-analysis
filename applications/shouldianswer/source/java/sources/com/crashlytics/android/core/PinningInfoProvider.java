package com.crashlytics.android.core;

import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/PinningInfoProvider.class */
public interface PinningInfoProvider {
    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    String[] getPins();
}
