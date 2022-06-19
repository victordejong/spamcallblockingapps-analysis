package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btr.class */
public final class btr implements dsi<btm> {

    /* renamed from: a */
    private final dsv<Context> f44723a;

    /* renamed from: b */
    private final dsv<amn> f44724b;

    /* renamed from: c */
    private final dsv<Executor> f44725c;

    public btr(dsv<Context> dsvVar, dsv<amn> dsvVar2, dsv<Executor> dsvVar3) {
        this.f44723a = dsvVar;
        this.f44724b = dsvVar2;
        this.f44725c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new btm(this.f44723a.mo14005a(), this.f44724b.mo14005a(), this.f44725c.mo14005a());
    }
}
