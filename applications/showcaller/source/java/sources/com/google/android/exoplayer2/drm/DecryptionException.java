package com.google.android.exoplayer2.drm;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DecryptionException.class */
public class DecryptionException extends Exception {
    public final int errorCode;

    public DecryptionException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
