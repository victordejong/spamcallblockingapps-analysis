package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acw.class */
final class acw implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3501st f7863a;

    /* renamed from: b */
    private final /* synthetic */ acs f7864b;

    public acw(acs acsVar, AbstractC3501st abstractC3501st) {
        this.f7864b = acsVar;
        this.f7863a = abstractC3501st;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f7864b.m13623a(view, this.f7863a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
