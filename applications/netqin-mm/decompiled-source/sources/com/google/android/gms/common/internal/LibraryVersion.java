package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ConcurrentHashMap;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/LibraryVersion.class */
public class LibraryVersion {
    static {
        new GmsLogger("LibraryVersion", "");
        new LibraryVersion();
    }

    @VisibleForTesting
    public LibraryVersion() {
        new ConcurrentHashMap();
    }
}
