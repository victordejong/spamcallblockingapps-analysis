package com.google.firebase.crashlytics.internal;

import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/NativeSessionFileProvider.class */
public interface NativeSessionFileProvider {
    File getAppFile();

    File getBinaryImagesFile();

    File getDeviceFile();

    File getMetadataFile();

    File getMinidumpFile();

    File getOsFile();

    File getSessionFile();
}
