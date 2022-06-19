package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.C2341q;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.yz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yz.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC3669yz extends AbstractC3672zb implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f17662a;

    public ViewTreeObserver$OnGlobalLayoutListenerC3669yz(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f17662a = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3672zb
    /* renamed from: a */
    protected final void mo6707a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3672zb
    /* renamed from: b */
    protected final void mo6705b(ViewTreeObserver viewTreeObserver) {
        C2341q.m14742e();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f17662a.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m6706b();
        }
    }
}
