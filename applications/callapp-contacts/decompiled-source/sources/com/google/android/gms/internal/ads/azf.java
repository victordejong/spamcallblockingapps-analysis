package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azf.class */
public final class azf implements dsi<ayz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> f24027a;

    private azf(dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> dsvVar) {
        this.f24027a = dsvVar;
    }

    public static azf a(dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> dsvVar) {
        return new azf(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ayz(this.f24027a.a());
    }
}
