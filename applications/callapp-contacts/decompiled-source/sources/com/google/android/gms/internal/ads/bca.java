package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bca.class */
public final class bca implements dsi<akh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<eed> f24149a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24150b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f24151c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<f> f24152d;

    public bca(dsv<eed> dsvVar, dsv<Executor> dsvVar2, dsv<Context> dsvVar3, dsv<f> dsvVar4) {
        this.f24149a = dsvVar;
        this.f24150b = dsvVar2;
        this.f24151c = dsvVar3;
        this.f24152d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        eed a2 = this.f24149a.a();
        return (akh) dso.b(new akh(this.f24150b.a(), new ajs(this.f24151c.a(), a2), this.f24152d.a()));
    }
}
