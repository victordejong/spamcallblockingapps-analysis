package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.qp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qp.class */
abstract class AbstractC1910qp {

    /* renamed from: b */
    private final WeakReference<View> f8234b;

    public AbstractC1910qp(View view) {
        this.f8234b = new WeakReference<>(view);
    }

    /* renamed from: a */
    protected abstract void m6080a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    protected abstract void m6079b(ViewTreeObserver viewTreeObserver);

    /* renamed from: c */
    public final void m6078c() {
        ViewTreeObserver m6076e = m6076e();
        if (m6076e != null) {
            m6080a(m6076e);
        }
    }

    /* renamed from: d */
    public final void m6077d() {
        ViewTreeObserver m6076e = m6076e();
        if (m6076e != null) {
            m6079b(m6076e);
        }
    }

    /* renamed from: e */
    protected final ViewTreeObserver m6076e() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f8234b.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }
}
