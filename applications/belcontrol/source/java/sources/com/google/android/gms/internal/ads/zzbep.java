package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbep.class */
public final /* synthetic */ class zzbep implements Runnable {
    private final IObjectWrapper zzesh;

    public zzbep(IObjectWrapper iObjectWrapper) {
        this.zzesh = iObjectWrapper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbeq.zzar(this.zzesh);
    }
}
