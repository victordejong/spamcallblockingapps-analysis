package androidx.media2.exoplayer.external;

import android.os.SystemClock;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f2772a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2773b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2774c;

    /* renamed from: d  reason: collision with root package name */
    public final Throwable f2775d;

    private ExoPlaybackException(int i, String str) {
        super(str);
        this.f2772a = i;
        this.f2773b = -1;
        this.f2775d = null;
        this.f2774c = SystemClock.elapsedRealtime();
    }

    private ExoPlaybackException(int i, Throwable th, int i2) {
        super(th);
        this.f2772a = i;
        this.f2775d = th;
        this.f2773b = i2;
        this.f2774c = SystemClock.elapsedRealtime();
    }

    public static ExoPlaybackException a(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    public static ExoPlaybackException a(Exception exc, int i) {
        return new ExoPlaybackException(1, exc, i);
    }

    public static ExoPlaybackException a(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError, -1);
    }

    public static ExoPlaybackException a(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }
}
