package com.google.android.play.core.splitcompat;

import android.util.Log;
/* renamed from: com.google.android.play.core.splitcompat.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/o.class */
public final class RunnableC15119o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C15105a f54863a;

    public RunnableC15119o(C15105a c15105a) {
        this.f54863a = c15105a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15108d c15108d;
        try {
            c15108d = this.f54863a.f54838b;
            c15108d.m9448a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e);
        }
    }
}
