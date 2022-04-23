package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;
/* renamed from: com.google.android.gms.ads.internal.util.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/b.class */
final /* synthetic */ class View$OnApplyWindowInsetsListenerC1410b implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    private final Activity f5555a;

    View$OnApplyWindowInsetsListenerC1410b(c cVar, Activity activity) {
        this.f5555a = activity;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return c.u(this.f5555a, view, windowInsets);
    }
}
