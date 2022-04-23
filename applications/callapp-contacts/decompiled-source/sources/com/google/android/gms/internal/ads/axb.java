package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axb.class */
public final class axb implements dsi<Set<ayi<atb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23974a;

    private axb(awm awmVar) {
        this.f23974a = awmVar;
    }

    public static axb a(awm awmVar) {
        return new axb(awmVar);
    }

    public static Set<ayi<atb>> b(awm awmVar) {
        return (Set) dso.b(awmVar.e);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return b(this.f23974a);
    }
}
