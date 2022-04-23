package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awb.class */
public final class awb implements dsi<avz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<AppEventListener>>> f23938a;

    private awb(dsv<Set<ayi<AppEventListener>>> dsvVar) {
        this.f23938a = dsvVar;
    }

    public static awb a(dsv<Set<ayi<AppEventListener>>> dsvVar) {
        return new awb(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new avz(this.f23938a.a());
    }
}
