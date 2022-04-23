package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asb.class */
public final class asb implements dsi<arw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<asd>>> f23840a;

    private asb(dsv<Set<ayi<asd>>> dsvVar) {
        this.f23840a = dsvVar;
    }

    public static asb a(dsv<Set<ayi<asd>>> dsvVar) {
        return new asb(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new arw(this.f23840a.a());
    }
}
