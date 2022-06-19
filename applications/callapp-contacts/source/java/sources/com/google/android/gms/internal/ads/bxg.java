package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxg.class */
public final class bxg implements dsi<bwz> {

    /* renamed from: a */
    private final dsv<Context> f45017a;

    /* renamed from: b */
    private final dsv<Executor> f45018b;

    /* renamed from: c */
    private final dsv<bhx> f45019c;

    public bxg(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bhx> dsvVar3) {
        this.f45017a = dsvVar;
        this.f45018b = dsvVar2;
        this.f45019c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bwz(this.f45017a.mo14005a(), this.f45018b.mo14005a(), this.f45019c.mo14005a());
    }
}
