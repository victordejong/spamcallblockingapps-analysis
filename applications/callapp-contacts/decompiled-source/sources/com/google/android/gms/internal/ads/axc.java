package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axc.class */
public final class axc implements dsi<Set<ayi<atu>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23975a;

    private axc(awm awmVar) {
        this.f23975a = awmVar;
    }

    public static axc a(awm awmVar) {
        return new axc(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23975a.j);
    }
}
