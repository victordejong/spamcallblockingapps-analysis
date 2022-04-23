package com.google.android.play.core.splitcompat;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/o.class */
public final class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f31448a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(a aVar) {
        this.f31448a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar;
        try {
            dVar = this.f31448a.f31423b;
            dVar.a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e);
        }
    }
}
