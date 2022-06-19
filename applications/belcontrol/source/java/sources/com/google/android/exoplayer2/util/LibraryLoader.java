package com.google.android.exoplayer2.util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/LibraryLoader.class */
public final class LibraryLoader {
    private boolean isAvailable;
    private boolean loadAttempted;
    private String[] nativeLibraries;

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
