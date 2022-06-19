package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byf.class */
public final class byf implements bxz<azi> {

    /* renamed from: a */
    private final Context f45090a;

    /* renamed from: b */
    private final bai f45091b;

    public byf(Context context, bai baiVar) {
        this.f45090a = context;
        this.f45091b = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.bxz
    /* renamed from: a */
    public final /* synthetic */ azi mo17570a(cpk cpkVar, cov covVar, byg bygVar) {
        azk mo18274a = this.f45091b.mo18274a(new aof(cpkVar, covVar, null), new byh(this, byi.f45093a));
        bygVar.m17569a(new byk(this, mo18274a));
        return mo18274a.mo18308h();
    }
}
