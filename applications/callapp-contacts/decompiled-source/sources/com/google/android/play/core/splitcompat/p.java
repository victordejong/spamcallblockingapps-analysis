package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/p.class */
public final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31449a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f31450b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(a aVar, Set set) {
        this.f31450b = aVar;
        this.f31449a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar;
        try {
            for (String str : this.f31449a) {
                dVar = this.f31450b.f31423b;
                dVar.f(str);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e);
        }
    }
}
