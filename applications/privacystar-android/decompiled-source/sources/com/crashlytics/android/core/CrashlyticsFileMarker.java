package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.persistence.FileStore;
import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsFileMarker.class */
public class CrashlyticsFileMarker {
    private final FileStore fileStore;
    private final String markerName;

    public CrashlyticsFileMarker(String str, FileStore fileStore) {
        this.markerName = str;
        this.fileStore = fileStore;
    }

    private File getMarkerFile() {
        return new File(this.fileStore.getFilesDir(), this.markerName);
    }

    public boolean create() {
        boolean z;
        try {
            z = getMarkerFile().createNewFile();
        } catch (IOException e) {
            Logger logger = Fabric.getLogger();
            logger.mo285e(CrashlyticsCore.TAG, "Error creating marker: " + this.markerName, e);
            z = false;
        }
        return z;
    }

    public boolean isPresent() {
        return getMarkerFile().exists();
    }

    public boolean remove() {
        return getMarkerFile().delete();
    }
}
