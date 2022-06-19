package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvk.class */
public final class bvk implements dsi<bvh> {

    /* renamed from: a */
    private final dsv<Context> f44855a;

    /* renamed from: b */
    private final dsv<bbe> f44856b;

    /* renamed from: c */
    private final dsv<Executor> f44857c;

    public bvk(dsv<Context> dsvVar, dsv<bbe> dsvVar2, dsv<Executor> dsvVar3) {
        this.f44855a = dsvVar;
        this.f44856b = dsvVar2;
        this.f44857c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bvh(this.f44855a.mo14005a(), this.f44856b.mo14005a(), this.f44857c.mo14005a());
    }
}
