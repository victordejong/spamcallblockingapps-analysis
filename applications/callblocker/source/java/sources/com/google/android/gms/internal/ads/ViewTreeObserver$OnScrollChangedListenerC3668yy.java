package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.yy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yy.class */
final class ViewTreeObserver$OnScrollChangedListenerC3668yy extends AbstractC3672zb implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnScrollChangedListener> f17661a;

    public ViewTreeObserver$OnScrollChangedListenerC3668yy(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f17661a = new WeakReference<>(onScrollChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3672zb
    /* renamed from: a */
    protected final void mo6707a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3672zb
    /* renamed from: b */
    protected final void mo6705b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f17661a.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m6706b();
        }
    }
}
