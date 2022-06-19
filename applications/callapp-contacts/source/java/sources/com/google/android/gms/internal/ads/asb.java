package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asb.class */
public final class asb implements dsi<arw> {

    /* renamed from: a */
    private final dsv<Set<ayi<asd>>> f43126a;

    private asb(dsv<Set<ayi<asd>>> dsvVar) {
        this.f43126a = dsvVar;
    }

    /* renamed from: a */
    public static asb m18435a(dsv<Set<ayi<asd>>> dsvVar) {
        return new asb(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new arw(this.f43126a.mo14005a());
    }
}
