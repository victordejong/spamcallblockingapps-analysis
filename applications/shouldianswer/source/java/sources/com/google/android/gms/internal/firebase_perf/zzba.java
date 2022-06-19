package com.google.android.gms.internal.firebase_perf;

import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzba.class */
public final class zzba {
    private final URL zzhn;

    public zzba(URL url) {
        this.zzhn = url;
    }

    public final URLConnection openConnection() {
        return this.zzhn.openConnection();
    }

    public final String toString() {
        return this.zzhn.toString();
    }
}
