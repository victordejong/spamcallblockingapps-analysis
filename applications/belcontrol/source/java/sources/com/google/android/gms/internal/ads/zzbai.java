package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbai.class */
public final class zzbai {
    public static void zza(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new zzbah(view, onGlobalLayoutListener).attach();
    }

    public static void zza(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new zzbak(view, onScrollChangedListener).attach();
    }
}
