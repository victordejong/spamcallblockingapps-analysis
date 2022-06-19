package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.zz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zz.class */
final class ViewTreeObserver$OnScrollChangedListenerC13113zz extends AbstractC13112zy implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnScrollChangedListener> f50143a;

    public ViewTreeObserver$OnScrollChangedListenerC13113zz(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f50143a = new WeakReference<>(onScrollChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13112zy
    /* renamed from: a */
    protected final void mo13885a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13112zy
    /* renamed from: b */
    protected final void mo13884b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f50143a.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m13887b();
        }
    }
}
