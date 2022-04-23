package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avp.class */
public final class avp implements dsi<avn> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<avs>>> f23929a;

    private avp(dsv<Set<ayi<avs>>> dsvVar) {
        this.f23929a = dsvVar;
    }

    public static avp a(dsv<Set<ayi<avs>>> dsvVar) {
        return new avp(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new avn(this.f23929a.a());
    }
}
