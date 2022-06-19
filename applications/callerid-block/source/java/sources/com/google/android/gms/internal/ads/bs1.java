package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bs1.class */
final class bs1 implements Runnable {

    /* renamed from: b */
    private final WebView f6200b;

    /* renamed from: c */
    final /* synthetic */ cs1 f6201c;

    bs1(cs1 cs1Var) {
        this.f6201c = cs1Var;
        this.f6200b = cs1.l(cs1Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6200b.destroy();
    }
}
