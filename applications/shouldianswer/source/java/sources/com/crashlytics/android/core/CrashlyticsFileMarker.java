package com.crashlytics.android.core;

import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p071d.AbstractC1547a;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsFileMarker.class */
public class CrashlyticsFileMarker {
    private final AbstractC1547a fileStore;
    private final String markerName;

    public CrashlyticsFileMarker(String str, AbstractC1547a abstractC1547a) {
        this.markerName = str;
        this.fileStore = abstractC1547a;
    }

    private File getMarkerFile() {
        return new File(this.fileStore.mo3339a(), this.markerName);
    }

    public boolean create() {
        boolean z;
        try {
            z = getMarkerFile().createNewFile();
        } catch (IOException e) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3545e(CrashlyticsCore.TAG, "Error creating marker: " + this.markerName, e);
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
