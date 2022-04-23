package com.google.android.exoplayer2;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ExoTimeoutException.class */
public final class ExoTimeoutException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f20602a;

    public ExoTimeoutException(int i) {
        super(i != 1 ? i != 2 ? i != 3 ? "Undefined timeout." : "Detaching surface timed out." : "Setting foreground mode timed out." : "Player release timed out.");
        this.f20602a = i;
    }
}
