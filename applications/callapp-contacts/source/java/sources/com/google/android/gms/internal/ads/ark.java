package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ark.class */
public final class ark implements dsi<AbstractC13002vy> {

    /* renamed from: a */
    private final arh f43096a;

    /* renamed from: b */
    private final dsv<Context> f43097b;

    /* renamed from: c */
    private final dsv<zzbar> f43098c;

    /* renamed from: d */
    private final dsv<cov> f43099d;

    /* renamed from: e */
    private final dsv<AbstractC13005wa> f43100e;

    private ark(arh arhVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<AbstractC13005wa> dsvVar4) {
        this.f43096a = arhVar;
        this.f43097b = dsvVar;
        this.f43098c = dsvVar2;
        this.f43099d = dsvVar3;
        this.f43100e = dsvVar4;
    }

    /* renamed from: a */
    public static ark m18439a(arh arhVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<AbstractC13005wa> dsvVar4) {
        return new ark(arhVar, dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        Context mo14005a = this.f43097b.mo14005a();
        zzbar mo14005a2 = this.f43098c.mo14005a();
        cov mo14005a3 = this.f43099d.mo14005a();
        AbstractC13005wa mo14005a4 = this.f43100e.mo14005a();
        if (mo14005a3.f46279z != null) {
            return new C12994vq(mo14005a, mo14005a2, mo14005a3.f46279z, mo14005a3.f46271r.f46302b, mo14005a4);
        }
        return null;
    }
}
