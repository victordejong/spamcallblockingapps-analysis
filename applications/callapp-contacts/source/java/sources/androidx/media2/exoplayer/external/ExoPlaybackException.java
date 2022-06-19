package androidx.media2.exoplayer.external;

import android.os.SystemClock;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {

    /* renamed from: a */
    public final int f5068a;

    /* renamed from: b */
    public final int f5069b;

    /* renamed from: c */
    public final long f5070c;

    /* renamed from: d */
    public final Throwable f5071d;

    private ExoPlaybackException(int i, String str) {
        super(str);
        this.f5068a = i;
        this.f5069b = -1;
        this.f5071d = null;
        this.f5070c = SystemClock.elapsedRealtime();
    }

    private ExoPlaybackException(int i, Throwable th, int i2) {
        super(th);
        this.f5068a = i;
        this.f5071d = th;
        this.f5069b = i2;
        this.f5070c = SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    public static ExoPlaybackException m43170a(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    /* renamed from: a */
    public static ExoPlaybackException m43169a(Exception exc, int i) {
        return new ExoPlaybackException(1, exc, i);
    }

    /* renamed from: a */
    public static ExoPlaybackException m43168a(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError, -1);
    }

    /* renamed from: a */
    public static ExoPlaybackException m43167a(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }
}
