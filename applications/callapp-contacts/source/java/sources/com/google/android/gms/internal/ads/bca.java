package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bca.class */
public final class bca implements dsi<akh> {

    /* renamed from: a */
    private final dsv<eed> f43510a;

    /* renamed from: b */
    private final dsv<Executor> f43511b;

    /* renamed from: c */
    private final dsv<Context> f43512c;

    /* renamed from: d */
    private final dsv<AbstractC12102f> f43513d;

    public bca(dsv<eed> dsvVar, dsv<Executor> dsvVar2, dsv<Context> dsvVar3, dsv<AbstractC12102f> dsvVar4) {
        this.f43510a = dsvVar;
        this.f43511b = dsvVar2;
        this.f43512c = dsvVar3;
        this.f43513d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        eed mo14005a = this.f43510a.mo14005a();
        return (akh) dso.m15764b(new akh(this.f43511b.mo14005a(), new ajs(this.f43512c.mo14005a(), mo14005a), this.f43513d.mo14005a()));
    }
}
