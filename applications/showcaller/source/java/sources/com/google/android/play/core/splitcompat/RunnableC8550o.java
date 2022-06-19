package com.google.android.play.core.splitcompat;

import android.util.Log;
/* renamed from: com.google.android.play.core.splitcompat.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/o.class */
public final class RunnableC8550o implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C8536a f38131d;

    public RunnableC8550o(C8536a c8536a) {
        this.f38131d = c8536a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8539d c8539d;
        try {
            c8539d = this.f38131d.f38106b;
            c8539d.m3388a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e);
        }
    }
}
