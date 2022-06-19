package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.File;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker.class */
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
            Logger logger = Logger.getLogger();
            logger.m1345e("Error creating marker: " + this.markerName, e);
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
