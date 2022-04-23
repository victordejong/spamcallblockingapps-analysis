package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ark.class */
public final class ark implements dsi<vy> {

    /* renamed from: a  reason: collision with root package name */
    private final arh f23822a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23823b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f23824c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cov> f23825d;
    private final dsv<wa> e;

    private ark(arh arhVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<wa> dsvVar4) {
        this.f23822a = arhVar;
        this.f23823b = dsvVar;
        this.f23824c = dsvVar2;
        this.f23825d = dsvVar3;
        this.e = dsvVar4;
    }

    public static ark a(arh arhVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<wa> dsvVar4) {
        return new ark(arhVar, dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Context a2 = this.f23823b.a();
        zzbar a3 = this.f23824c.a();
        cov a4 = this.f23825d.a();
        wa a5 = this.e.a();
        if (a4.z != null) {
            return new vq(a2, a3, a4.z, a4.r.f26205b, a5);
        }
        return null;
    }
}
