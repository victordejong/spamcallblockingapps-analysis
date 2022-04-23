package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/x.class */
public final class x extends fq {

    /* renamed from: a  reason: collision with root package name */
    private final ShouldDelayBannerRenderingListener f28501a;

    public x(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.f28501a = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.fn
    public final boolean a(b bVar) throws RemoteException {
        return this.f28501a.shouldDelayBannerRendering((Runnable) d.a(bVar));
    }
}
