package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/p.class */
public final class RunnableC8551p implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Set f38132d;

    /* renamed from: e */
    final /* synthetic */ C8536a f38133e;

    public RunnableC8551p(C8536a c8536a, Set set) {
        this.f38133e = c8536a;
        this.f38132d = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8539d c8539d;
        try {
            for (String str : this.f38132d) {
                c8539d = this.f38133e.f38106b;
                c8539d.m3375n(str);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e);
        }
    }
}
