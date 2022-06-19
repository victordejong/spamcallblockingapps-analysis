package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.C5667s;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ej0.class */
final class ej0 extends gj0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: e */
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f22189e;

    public ej0(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f22189e = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // com.google.android.gms.internal.ads.gj0
    /* renamed from: a */
    protected final void mo14934a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.ads.gj0
    /* renamed from: b */
    protected final void mo14933b(ViewTreeObserver viewTreeObserver) {
        C5667s.m18158f();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f22189e.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m14931d();
        }
    }
}
