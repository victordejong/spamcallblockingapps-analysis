package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.zw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zw.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC13110zw extends AbstractC13112zy implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f50141a;

    public ViewTreeObserver$OnGlobalLayoutListenerC13110zw(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f50141a = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13112zy
    /* renamed from: a */
    protected final void mo13885a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13112zy
    /* renamed from: b */
    protected final void mo13884b(ViewTreeObserver viewTreeObserver) {
        zzr.zzkx();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f50141a.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m13887b();
        }
    }
}
