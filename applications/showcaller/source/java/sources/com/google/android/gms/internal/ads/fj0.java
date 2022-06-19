package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fj0.class */
final class fj0 extends gj0 implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: e */
    private final WeakReference<ViewTreeObserver.OnScrollChangedListener> f22913e;

    public fj0(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f22913e = new WeakReference<>(onScrollChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.gj0
    /* renamed from: a */
    protected final void mo14934a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // com.google.android.gms.internal.ads.gj0
    /* renamed from: b */
    protected final void mo14933b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f22913e.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m14931d();
        }
    }
}
