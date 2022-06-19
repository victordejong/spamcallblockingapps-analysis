package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ao0.class */
final class ao0 implements View.OnAttachStateChangeListener {

    /* renamed from: d */
    final /* synthetic */ hf0 f20062d;

    /* renamed from: e */
    final /* synthetic */ do0 f20063e;

    public ao0(do0 do0Var, hf0 hf0Var) {
        this.f20063e = do0Var;
        this.f20062d = hf0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f20063e.m15721q(view, this.f20062d, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
