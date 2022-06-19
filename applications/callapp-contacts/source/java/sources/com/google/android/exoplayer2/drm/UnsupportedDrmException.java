package com.google.android.exoplayer2.drm;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/UnsupportedDrmException.class */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a */
    public final int f35460a;

    public UnsupportedDrmException(int i) {
        this.f35460a = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.f35460a = i;
    }
}
