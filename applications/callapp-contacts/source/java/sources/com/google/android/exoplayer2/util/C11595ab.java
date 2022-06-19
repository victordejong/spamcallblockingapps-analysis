package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
/* renamed from: com.google.android.exoplayer2.util.ab */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ab.class */
final class C11595ab implements AbstractC11611k {

    /* renamed from: a */
    private final Handler f38639a;

    public C11595ab(Handler handler) {
        this.f38639a = handler;
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final Message mo19886a(int i) {
        return this.f38639a.obtainMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final Message mo19885a(int i, int i2, int i3) {
        return this.f38639a.obtainMessage(i, i2, i3);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final Message mo19884a(int i, int i2, int i3, Object obj) {
        return this.f38639a.obtainMessage(i, i2, i3, obj);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final Message mo19883a(int i, Object obj) {
        return this.f38639a.obtainMessage(i, obj);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final boolean mo19887a() {
        return this.f38639a.hasMessages(0);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final boolean mo19882a(long j) {
        return this.f38639a.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: a */
    public final boolean mo19881a(Runnable runnable) {
        return this.f38639a.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: b */
    public final void mo19880b() {
        this.f38639a.removeMessages(2);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: b */
    public final boolean mo19879b(int i) {
        return this.f38639a.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11611k
    /* renamed from: c */
    public final void mo19878c() {
        this.f38639a.removeCallbacksAndMessages(null);
    }
}
