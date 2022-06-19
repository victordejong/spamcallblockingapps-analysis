package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.x */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/x.class */
public final class BinderC13033x extends AbstractBinderC12561fq {

    /* renamed from: a */
    private final ShouldDelayBannerRenderingListener f50009a;

    public BinderC13033x(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.f50009a = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12558fn
    /* renamed from: a */
    public final boolean mo14020a(AbstractC12126b abstractC12126b) throws RemoteException {
        return this.f50009a.shouldDelayBannerRendering((Runnable) BinderC12129d.m18980a(abstractC12126b));
    }
}
