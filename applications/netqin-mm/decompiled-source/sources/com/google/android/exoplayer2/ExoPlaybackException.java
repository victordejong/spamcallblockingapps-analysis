package com.google.android.exoplayer2;

import android.os.SystemClock;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {
    public static final int TYPE_OUT_OF_MEMORY = 4;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    public final Throwable cause;
    public final Format rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    public final long timestampMs;
    public final int type;

    public ExoPlaybackException(int i, String str) {
        super(str);
        this.type = i;
        this.rendererIndex = -1;
        this.rendererFormat = null;
        this.rendererFormatSupport = 0;
        this.cause = null;
        this.timestampMs = SystemClock.elapsedRealtime();
    }

    public ExoPlaybackException(int i, Throwable th) {
        this(i, th, -1, null, 4);
    }

    public ExoPlaybackException(int i, Throwable th, int i2, Format format, int i3) {
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
        C2877e.m28731b(this.type == 4);
        Throwable th = this.cause;
        C2877e.m28737a(th);
        return (OutOfMemoryError) th;
    }

    public Exception getRendererException() {
        boolean z = true;
        if (this.type != 1) {
            z = false;
        }
        C2877e.m28731b(z);
        Throwable th = this.cause;
        C2877e.m28737a(th);
        return (Exception) th;
    }

    public IOException getSourceException() {
        C2877e.m28731b(this.type == 0);
        Throwable th = this.cause;
        C2877e.m28737a(th);
        return (IOException) th;
    }

    public RuntimeException getUnexpectedException() {
        C2877e.m28731b(this.type == 2);
        Throwable th = this.cause;
        C2877e.m28737a(th);
        return (RuntimeException) th;
    }
}
