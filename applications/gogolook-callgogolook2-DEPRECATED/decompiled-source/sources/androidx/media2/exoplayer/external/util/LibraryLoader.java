package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/LibraryLoader.class */
public final class LibraryLoader {
    public static final String TAG = "LibraryLoader";
    public boolean isAvailable;
    public boolean loadAttempted;
    public String[] nativeLibraries;

    public LibraryLoader(String... strArr) {
        this.nativeLibraries = strArr;
    }

    public boolean isAvailable() {
        synchronized (this) {
            if (this.loadAttempted) {
                return this.isAvailable;
            }
            this.loadAttempted = true;
            try {
                for (String str : this.nativeLibraries) {
                    System.loadLibrary(str);
                }
                this.isAvailable = true;
            } catch (UnsatisfiedLinkError e) {
                String valueOf = String.valueOf(Arrays.toString(this.nativeLibraries));
                Log.m37483w(TAG, valueOf.length() != 0 ? "Failed to load ".concat(valueOf) : new String("Failed to load "));
            }
            return this.isAvailable;
        }
    }

    public void setLibraries(String... strArr) {
        synchronized (this) {
            Assertions.checkState(!this.loadAttempted, "Cannot set libraries after loading");
            this.nativeLibraries = strArr;
        }
    }
}
