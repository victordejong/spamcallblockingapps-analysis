package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzx.class */
public class zzx extends zzw {
    @Override // com.google.android.gms.ads.internal.util.zzw, com.google.android.gms.ads.internal.util.zzae
    public final boolean zzi(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final ViewGroup.LayoutParams zzj() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
