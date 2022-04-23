package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaai.class */
public final class zzaai extends zzafx {

    /* renamed from: a */
    public final ShouldDelayBannerRenderingListener f23629a;

    @Override // com.google.android.gms.internal.ads.zzafy
    /* renamed from: I */
    public final boolean mo16795I(IObjectWrapper iObjectWrapper) throws RemoteException {
        return this.f23629a.shouldDelayBannerRendering((Runnable) ObjectWrapper.m17021Q(iObjectWrapper));
    }
}
