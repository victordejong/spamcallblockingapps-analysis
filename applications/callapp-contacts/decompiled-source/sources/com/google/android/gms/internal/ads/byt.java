package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byt.class */
public final class byt implements dsi<byp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f25412a;

    public byt(dsv<Executor> dsvVar) {
        this.f25412a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new byp(this.f25412a.a());
    }
}
