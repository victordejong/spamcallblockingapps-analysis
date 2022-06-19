package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adw.class */
final class adw implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractC13002vy f40024a;

    /* renamed from: b */
    private final /* synthetic */ C12170ads f40025b;

    public adw(C12170ads c12170ads, AbstractC13002vy abstractC13002vy) {
        this.f40025b = c12170ads;
        this.f40024a = abstractC13002vy;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f40025b.m18851a(view, this.f40024a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
