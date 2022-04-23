package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/aa.class */
public final class aa implements c {
    @Override // com.google.android.exoplayer2.util.c
    public final long a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.c
    public final k a(Looper looper, Handler.Callback callback) {
        return new ab(new Handler(looper, callback));
    }

    @Override // com.google.android.exoplayer2.util.c
    public final long b() {
        return SystemClock.uptimeMillis();
    }
}
