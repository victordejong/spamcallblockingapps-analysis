package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adw.class */
final class adw implements View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ vy f23164a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ads f23165b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adw(ads adsVar, vy vyVar) {
        this.f23165b = adsVar;
        this.f23164a = vyVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f23165b.a(view, this.f23164a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
