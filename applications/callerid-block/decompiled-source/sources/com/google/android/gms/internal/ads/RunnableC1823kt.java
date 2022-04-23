package com.google.android.gms.internal.ads;

import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.kt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kt.class */
final /* synthetic */ class RunnableC1823kt implements Runnable {

    /* renamed from: b */
    private final qt f7060b;

    /* renamed from: c */
    private final View f7061c;

    /* renamed from: d */
    private final AbstractC1960tl f7062d;

    /* renamed from: e */
    private final int f7063e;

    RunnableC1823kt(qt qtVar, View view, AbstractC1960tl tlVar, int i) {
        this.f7060b = qtVar;
        this.f7061c = view;
        this.f7062d = tlVar;
        this.f7063e = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7060b.f(this.f7061c, this.f7062d, this.f7063e);
    }
}
