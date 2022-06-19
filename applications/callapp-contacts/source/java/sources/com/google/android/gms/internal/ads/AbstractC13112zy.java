package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.zy */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zy.class */
abstract class AbstractC13112zy {

    /* renamed from: a */
    private final WeakReference<View> f50142a;

    public AbstractC13112zy(View view) {
        this.f50142a = new WeakReference<>(view);
    }

    /* renamed from: c */
    private final ViewTreeObserver m13886c() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f50142a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    /* renamed from: a */
    public final void m13888a() {
        ViewTreeObserver m13886c = m13886c();
        if (m13886c != null) {
            mo13885a(m13886c);
        }
    }

    /* renamed from: a */
    protected abstract void mo13885a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    public final void m13887b() {
        ViewTreeObserver m13886c = m13886c();
        if (m13886c != null) {
            mo13884b(m13886c);
        }
    }

    /* renamed from: b */
    protected abstract void mo13884b(ViewTreeObserver viewTreeObserver);
}
