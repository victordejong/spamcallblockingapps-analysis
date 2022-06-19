package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: com.google.android.exoplayer2.util.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/aa.class */
public final class C11594aa implements AbstractC11603c {
    @Override // com.google.android.exoplayer2.util.AbstractC11603c
    /* renamed from: a */
    public final long mo19910a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11603c
    /* renamed from: a */
    public final AbstractC11611k mo19909a(Looper looper, Handler.Callback callback) {
        return new C11595ab(new Handler(looper, callback));
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11603c
    /* renamed from: b */
    public final long mo19908b() {
        return SystemClock.uptimeMillis();
    }
}
