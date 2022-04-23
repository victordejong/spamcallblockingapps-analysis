package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import p131c.p161d.p170b.p224d.p252g.p253a.ViewTreeObserver$OnGlobalLayoutListenerC4241y6;
import p131c.p161d.p170b.p224d.p252g.p253a.ViewTreeObserver$OnScrollChangedListenerC4204x6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbco.class */
public final class zzbco {
    /* renamed from: a */
    public static void m15824a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new ViewTreeObserver$OnGlobalLayoutListenerC4241y6(view, onGlobalLayoutListener).m26103a();
    }

    /* renamed from: a */
    public static void m15823a(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new ViewTreeObserver$OnScrollChangedListenerC4204x6(view, onScrollChangedListener).m26103a();
    }
}
