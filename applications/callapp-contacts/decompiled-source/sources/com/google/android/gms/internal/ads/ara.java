package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ara.class */
public final class ara implements dsi<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final aqz f23808a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23809b;

    private ara(aqz aqzVar, dsv<Context> dsvVar) {
        this.f23808a = aqzVar;
        this.f23809b = dsvVar;
    }

    public static ara a(aqz aqzVar, dsv<Context> dsvVar) {
        return new ara(aqzVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        aqz aqzVar = this.f23808a;
        Context a2 = this.f23809b.a();
        if (aqzVar.f23802d == null) {
            a2 = aqzVar.f23799a;
        }
        return (Context) dso.b(a2);
    }
}
