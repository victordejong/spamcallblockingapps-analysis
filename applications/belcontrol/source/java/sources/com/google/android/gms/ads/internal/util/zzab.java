package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzab.class */
public final /* synthetic */ class zzab implements View.OnApplyWindowInsetsListener {
    private final zzac zzeex;
    private final Activity zzeey;

    public zzab(zzac zzacVar, Activity activity) {
        this.zzeex = zzacVar;
        this.zzeey = activity;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return zzac.zza(this.zzeey, view, windowInsets);
    }
}
