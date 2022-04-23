package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axd.class */
public final class axd implements dsi<Set<ayi<atk>>> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23976a;

    private axd(awm awmVar) {
        this.f23976a = awmVar;
    }

    public static axd a(awm awmVar) {
        return new axd(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23976a.f23952d);
    }
}
