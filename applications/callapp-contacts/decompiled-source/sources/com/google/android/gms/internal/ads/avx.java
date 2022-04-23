package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avx.class */
public final class avx implements dsi<avr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<avw>>> f23934a;

    private avx(dsv<Set<ayi<avw>>> dsvVar) {
        this.f23934a = dsvVar;
    }

    public static avx a(dsv<Set<ayi<avw>>> dsvVar) {
        return new avx(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new avr(this.f23934a.a());
    }
}
