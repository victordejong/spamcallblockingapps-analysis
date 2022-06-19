package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaas.class */
public final class zzaas extends zzagk {
    private final ShouldDelayBannerRenderingListener zzclt;

    public zzaas(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zzclt = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagl
    public final boolean zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        return this.zzclt.shouldDelayBannerRendering((Runnable) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
