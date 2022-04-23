package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axh.class */
public final class axh implements dsi<awm> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23979a;

    private axh(awm awmVar) {
        this.f23979a = awmVar;
    }

    public static axh a(awm awmVar) {
        return new axh(awmVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        awm awmVar = this.f23979a;
        Objects.requireNonNull(awmVar);
        return (awm) dso.b(awmVar);
    }
}
