package io.fabric.sdk.android.services.network;

import java.io.InputStream;
/* renamed from: io.fabric.sdk.android.services.network.f */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/f.class */
public interface AbstractC1590f {
    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    long getPinCreationTimeInMillis();

    String[] getPins();
}
