package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zy.class */
abstract class zy {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<View> f28594a;

    public zy(View view) {
        this.f28594a = new WeakReference<>(view);
    }

    private final ViewTreeObserver c() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f28594a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void a() {
        ViewTreeObserver c2 = c();
        if (c2 != null) {
            a(c2);
        }
    }

    protected abstract void a(ViewTreeObserver viewTreeObserver);

    public final void b() {
        ViewTreeObserver c2 = c();
        if (c2 != null) {
            b(c2);
        }
    }

    protected abstract void b(ViewTreeObserver viewTreeObserver);
}
