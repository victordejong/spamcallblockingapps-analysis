package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azf.class */
public final class azf implements dsi<ayz> {

    /* renamed from: a */
    private final dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> f43341a;

    private azf(dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> dsvVar) {
        this.f43341a = dsvVar;
    }

    /* renamed from: a */
    public static azf m18311a(dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> dsvVar) {
        return new azf(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ayz(this.f43341a.mo14005a());
    }
}
