package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axk.class */
public final class axk implements dsi<Set<ayi<VideoController.VideoLifecycleCallbacks>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23982a;

    private axk(awm awmVar) {
        this.f23982a = awmVar;
    }

    public static axk a(awm awmVar) {
        return new axk(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.emptySet());
    }
}
