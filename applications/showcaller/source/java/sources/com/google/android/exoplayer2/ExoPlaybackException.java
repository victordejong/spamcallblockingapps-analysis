package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.util.C5508e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {
    private final Throwable cause;
    public final Format rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    public final long timestampMs;
    public final int type;

    private ExoPlaybackException(int i, String str) {
        super(str);
        this.type = i;
        this.rendererIndex = -1;
        this.rendererFormat = null;
        this.rendererFormatSupport = 0;
        this.cause = null;
        this.timestampMs = SystemClock.elapsedRealtime();
    }

    private ExoPlaybackException(int i, Throwable th) {
        this(i, th, -1, null, 4);
    }

    private ExoPlaybackException(int i, Throwable th, int i2, Format format, int i3) {
        super(th);
        this.type = i;
        this.cause = th;
        this.rendererIndex = i2;
        this.rendererFormat = format;
        this.rendererFormatSupport = i3;
        this.timestampMs = SystemClock.elapsedRealtime();
    }

    public static ExoPlaybackException createForOutOfMemoryError(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, str);
    }

    public static ExoPlaybackException createForRenderer(Exception exc, int i, Format format, int i2) {
        if (format == null) {
            i2 = 4;
        }
        return new ExoPlaybackException(1, exc, i, format, i2);
    }

    public static ExoPlaybackException createForSource(IOException iOException) {
        return new ExoPlaybackException(0, iOException);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException);
    }

    public OutOfMemoryError getOutOfMemoryError() {
        C5508e.m18910f(this.type == 4);
        return (OutOfMemoryError) C5508e.m18911e(this.cause);
    }

    public Exception getRendererException() {
        boolean z = true;
        if (this.type != 1) {
            z = false;
        }
        C5508e.m18910f(z);
        return (Exception) C5508e.m18911e(this.cause);
    }

    public IOException getSourceException() {
        C5508e.m18910f(this.type == 0);
        return (IOException) C5508e.m18911e(this.cause);
    }

    public RuntimeException getUnexpectedException() {
        C5508e.m18910f(this.type == 2);
        return (RuntimeException) C5508e.m18911e(this.cause);
    }
}
