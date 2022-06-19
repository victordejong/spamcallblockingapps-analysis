package com.google.android.gms.internal.ads;

import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.nt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nt.class */
final class View$OnAttachStateChangeListenerC1867nt implements View.OnAttachStateChangeListener {

    /* renamed from: b */
    final /* synthetic */ AbstractC1960tl f7795b;

    /* renamed from: c */
    final /* synthetic */ qt f7796c;

    View$OnAttachStateChangeListenerC1867nt(qt qtVar, AbstractC1960tl abstractC1960tl) {
        this.f7796c = qtVar;
        this.f7795b = abstractC1960tl;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        qt.g(this.f7796c, view, this.f7795b, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
