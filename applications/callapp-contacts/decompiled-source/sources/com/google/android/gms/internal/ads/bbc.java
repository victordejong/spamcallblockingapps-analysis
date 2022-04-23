package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbc.class */
public final class bbc implements dsi<bba> {

    /* renamed from: a  reason: collision with root package name */
    private final bba f24113a;

    private bbc(bba bbaVar) {
        this.f24113a = bbaVar;
    }

    public static bbc a(bba bbaVar) {
        return new bbc(bbaVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bba bbaVar = this.f24113a;
        Objects.requireNonNull(bbaVar);
        return (bba) dso.b(bbaVar);
    }
}
