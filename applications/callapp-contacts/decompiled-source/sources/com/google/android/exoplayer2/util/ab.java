package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ab.class */
final class ab implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f22266a;

    public ab(Handler handler) {
        this.f22266a = handler;
    }

    @Override // com.google.android.exoplayer2.util.k
    public final Message a(int i) {
        return this.f22266a.obtainMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final Message a(int i, int i2, int i3) {
        return this.f22266a.obtainMessage(i, i2, i3);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final Message a(int i, int i2, int i3, Object obj) {
        return this.f22266a.obtainMessage(i, i2, i3, obj);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final Message a(int i, Object obj) {
        return this.f22266a.obtainMessage(i, obj);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final boolean a() {
        return this.f22266a.hasMessages(0);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final boolean a(long j) {
        return this.f22266a.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final boolean a(Runnable runnable) {
        return this.f22266a.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final void b() {
        this.f22266a.removeMessages(2);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final boolean b(int i) {
        return this.f22266a.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.k
    public final void c() {
        this.f22266a.removeCallbacksAndMessages(null);
    }
}
