package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zx.class */
public final class zx {
    public static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new zw(view, onGlobalLayoutListener).a();
    }

    public static void a(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new zz(view, onScrollChangedListener).a();
    }
}
