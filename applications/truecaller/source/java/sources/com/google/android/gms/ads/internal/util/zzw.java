package com.google.android.gms.ads.internal.util;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzw.class */
public class zzw extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzv, com.google.android.gms.ads.internal.util.zzad
    public final boolean zzg(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final ViewGroup.LayoutParams zzj() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
