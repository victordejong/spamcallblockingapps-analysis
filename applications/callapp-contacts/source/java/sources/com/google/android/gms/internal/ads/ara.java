package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ara.class */
public final class ara implements dsi<Context> {

    /* renamed from: a */
    private final aqz f43082a;

    /* renamed from: b */
    private final dsv<Context> f43083b;

    private ara(aqz aqzVar, dsv<Context> dsvVar) {
        this.f43082a = aqzVar;
        this.f43083b = dsvVar;
    }

    /* renamed from: a */
    public static ara m18449a(aqz aqzVar, dsv<Context> dsvVar) {
        return new ara(aqzVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        aqz aqzVar = this.f43082a;
        Context mo14005a = this.f43083b.mo14005a();
        if (aqzVar.f43074d == null) {
            mo14005a = aqzVar.f43071a;
        }
        return (Context) dso.m15764b(mo14005a);
    }
}
