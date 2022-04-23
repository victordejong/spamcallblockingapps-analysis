package androidx.media2.exoplayer.external;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {
    public static final int TYPE_OUT_OF_MEMORY = 4;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    public final Throwable cause;
    public final int rendererIndex;
    public final int type;

    public ExoPlaybackException(int i, String str) {
        super(str);
        this.type = i;
        this.rendererIndex = -1;
        this.cause = null;
    }

    public ExoPlaybackException(int i, Throwable th, int i2) {
        super(th);
        this.type = i;
        this.cause = th;
        this.rendererIndex = i2;
    }

    public static ExoPlaybackException createForOutOfMemoryError(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError, -1);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, str);
    }

    public static ExoPlaybackException createForRenderer(Exception exc, int i) {
        return new ExoPlaybackException(1, exc, i);
    }

    public static ExoPlaybackException createForSource(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }

    public OutOfMemoryError getOutOfMemoryError() {
        C1160a.m34518b(this.type == 4);
        Throwable th = this.cause;
        C1160a.m34522a(th);
        return (OutOfMemoryError) th;
    }

    public Exception getRendererException() {
        boolean z = true;
        if (this.type != 1) {
            z = false;
        }
        C1160a.m34518b(z);
        Throwable th = this.cause;
        C1160a.m34522a(th);
        return (Exception) th;
    }

    public IOException getSourceException() {
        C1160a.m34518b(this.type == 0);
        Throwable th = this.cause;
        C1160a.m34522a(th);
        return (IOException) th;
    }

    public RuntimeException getUnexpectedException() {
        C1160a.m34518b(this.type == 2);
        Throwable th = this.cause;
        C1160a.m34522a(th);
        return (RuntimeException) th;
    }
}
