package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: androidx.media2.exoplayer.external.util.w */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/w.class */
final class C2027w implements AbstractC1999b {
    @Override // androidx.media2.exoplayer.external.util.AbstractC1999b
    /* renamed from: a */
    public final long mo41494a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC1999b
    /* renamed from: a */
    public final AbstractC2008i mo41493a(Looper looper, Handler.Callback callback) {
        return new C2028x(new Handler(looper, callback));
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC1999b
    /* renamed from: b */
    public final long mo41492b() {
        return SystemClock.uptimeMillis();
    }
}
