package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: com.google.android.exoplayer2.util.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/b0.class */
final class C5503b0 implements AbstractC5510f {
    @Override // com.google.android.exoplayer2.util.AbstractC5510f
    /* renamed from: b */
    public long mo18896b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5510f
    /* renamed from: c */
    public long mo18895c() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5510f
    /* renamed from: d */
    public AbstractC5525n mo18894d(Looper looper, Handler.Callback callback) {
        return new C5505c0(new Handler(looper, callback));
    }
}
