package com.google.android.exoplayer2.drm;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/UnsupportedDrmException.class */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f20876a;

    public UnsupportedDrmException(int i) {
        this.f20876a = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.f20876a = i;
    }
}
