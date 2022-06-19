package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atp.class */
public final class atp implements dsi<atj> {

    /* renamed from: a */
    private final dsv<Set<ayi<zzp>>> f43156a;

    private atp(dsv<Set<ayi<zzp>>> dsvVar) {
        this.f43156a = dsvVar;
    }

    /* renamed from: a */
    public static atp m18416a(dsv<Set<ayi<zzp>>> dsvVar) {
        return new atp(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new atj(this.f43156a.mo14005a());
    }
}
