package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aiz.class */
public final class aiz implements dsi<aja> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<zzf> f23408a;

    private aiz(dsv<zzf> dsvVar) {
        this.f23408a = dsvVar;
    }

    public static aiz a(dsv<zzf> dsvVar) {
        return new aiz(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aja(this.f23408a.a());
    }
}
