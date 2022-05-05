package com.google.firebase.platforminfo;

import com.google.auto.value.AutoValue;
import javax.annotation.Nonnull;
/* JADX INFO: Access modifiers changed from: package-private */
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/firebase/platforminfo/LibraryVersion.class */
public abstract class LibraryVersion {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }

    @Nonnull
    public abstract String getLibraryName();

    @Nonnull
    public abstract String getVersion();
}
