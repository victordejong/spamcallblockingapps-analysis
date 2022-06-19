package com.google.firebase.platforminfo;

import javax.annotation.Nonnull;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/platforminfo/LibraryVersion.class */
public abstract class LibraryVersion {
    public static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }

    @Nonnull
    public abstract String getLibraryName();

    @Nonnull
    public abstract String getVersion();
}
