package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.google.android.exoplayer2.util.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/c0.class */
final class C5505c0 implements AbstractC5525n {

    /* renamed from: a */
    private final Handler f17859a;

    public C5505c0(Handler handler) {
        this.f17859a = handler;
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: a */
    public Message mo18754a(int i, int i2, int i3) {
        return this.f17859a.obtainMessage(i, i2, i3);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: b */
    public boolean mo18753b(int i) {
        return this.f17859a.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: c */
    public Message mo18752c(int i, int i2, int i3, Object obj) {
        return this.f17859a.obtainMessage(i, i2, i3, obj);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: d */
    public boolean mo18751d(int i, long j) {
        return this.f17859a.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: e */
    public void mo18750e(int i) {
        this.f17859a.removeMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: f */
    public Message mo18749f(int i, Object obj) {
        return this.f17859a.obtainMessage(i, obj);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5525n
    /* renamed from: g */
    public Looper mo18748g() {
        return this.f17859a.getLooper();
    }
}
