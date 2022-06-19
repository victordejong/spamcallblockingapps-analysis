package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqj.class */
public final class zzaqj implements View.OnClickListener {
    private final /* synthetic */ zzaqg zzdpx;

    public zzaqj(zzaqg zzaqgVar) {
        this.zzdpx = zzaqgVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzdpx.zzad(true);
    }
}
