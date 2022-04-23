package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byd.class */
public final class byd implements dsi<byb> {

    /* renamed from: a  reason: collision with root package name */
    private final byb f25390a;

    private byd(byb bybVar) {
        this.f25390a = bybVar;
    }

    public static byd a(byb bybVar) {
        return new byd(bybVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        byb bybVar = this.f25390a;
        Objects.requireNonNull(bybVar);
        return (byb) dso.b(bybVar);
    }
}
