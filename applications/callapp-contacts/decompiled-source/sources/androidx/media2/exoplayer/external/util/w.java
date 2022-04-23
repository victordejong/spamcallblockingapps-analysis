package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/w.class */
final class w implements b {
    @Override // androidx.media2.exoplayer.external.util.b
    public final long a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // androidx.media2.exoplayer.external.util.b
    public final i a(Looper looper, Handler.Callback callback) {
        return new x(new Handler(looper, callback));
    }

    @Override // androidx.media2.exoplayer.external.util.b
    public final long b() {
        return SystemClock.uptimeMillis();
    }
}
