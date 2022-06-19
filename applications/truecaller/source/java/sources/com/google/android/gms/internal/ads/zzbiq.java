package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbiq.class */
public final class zzbiq extends zzbnx {
    private final ShouldDelayBannerRenderingListener zza;

    public zzbiq(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zza = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbny
    public final boolean zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        return this.zza.shouldDelayBannerRendering((Runnable) ObjectWrapper.m38746B1(iObjectWrapper));
    }
}
