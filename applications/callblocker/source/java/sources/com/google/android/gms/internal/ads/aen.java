package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aen.class */
final class aen implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3501st f8015a;

    /* renamed from: b */
    private final /* synthetic */ aem f8016b;

    public aen(aem aemVar, AbstractC3501st abstractC3501st) {
        this.f8016b = aemVar;
        this.f8015a = abstractC3501st;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f8016b.m13532a(view, this.f8015a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
