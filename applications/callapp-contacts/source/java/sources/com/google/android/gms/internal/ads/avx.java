package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avx.class */
public final class avx implements dsi<avr> {

    /* renamed from: a */
    private final dsv<Set<ayi<avw>>> f43223a;

    private avx(dsv<Set<ayi<avw>>> dsvVar) {
        this.f43223a = dsvVar;
    }

    /* renamed from: a */
    public static avx m18377a(dsv<Set<ayi<avw>>> dsvVar) {
        return new avx(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new avr(this.f43223a.mo14005a());
    }
}
