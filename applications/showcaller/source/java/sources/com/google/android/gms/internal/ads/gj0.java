package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gj0.class */
abstract class gj0 {

    /* renamed from: d */
    private final WeakReference<View> f23364d;

    public gj0(View view) {
        this.f23364d = new WeakReference<>(view);
    }

    /* renamed from: a */
    protected abstract void mo14934a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    protected abstract void mo14933b(ViewTreeObserver viewTreeObserver);

    /* renamed from: c */
    public final void m14932c() {
        ViewTreeObserver m14930e = m14930e();
        if (m14930e != null) {
            mo14934a(m14930e);
        }
    }

    /* renamed from: d */
    public final void m14931d() {
        ViewTreeObserver m14930e = m14930e();
        if (m14930e != null) {
            mo14933b(m14930e);
        }
    }

    /* renamed from: e */
    protected final ViewTreeObserver m14930e() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f23364d.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }
}
