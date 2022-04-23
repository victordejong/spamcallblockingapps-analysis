package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ath.class */
public final class ath implements dsi<atf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<atk>>> f23864a;

    private ath(dsv<Set<ayi<atk>>> dsvVar) {
        this.f23864a = dsvVar;
    }

    public static ath a(dsv<Set<ayi<atk>>> dsvVar) {
        return new ath(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new atf(this.f23864a.a());
    }
}
