package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awb.class */
public final class awb implements dsi<avz> {

    /* renamed from: a */
    private final dsv<Set<ayi<AppEventListener>>> f43227a;

    private awb(dsv<Set<ayi<AppEventListener>>> dsvVar) {
        this.f43227a = dsvVar;
    }

    /* renamed from: a */
    public static awb m18376a(dsv<Set<ayi<AppEventListener>>> dsvVar) {
        return new awb(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new avz(this.f43227a.mo14005a());
    }
}
