package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byf.class */
public final class byf implements bxz<azi> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25392a;

    /* renamed from: b  reason: collision with root package name */
    private final bai f25393b;

    public byf(Context context, bai baiVar) {
        this.f25392a = context;
        this.f25393b = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.bxz
    public final /* synthetic */ azi a(cpk cpkVar, cov covVar, byg bygVar) {
        azk a2 = this.f25393b.a(new aof(cpkVar, covVar, null), new byh(this, byi.f25395a));
        bygVar.a(new byk(this, a2));
        return a2.h();
    }
}
