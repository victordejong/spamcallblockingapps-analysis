package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajz.class */
public final class ajz implements dsi<aju> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<lw> f23460a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ajs> f23461b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f23462c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ajp> f23463d;
    private final dsv<f> e;

    private ajz(dsv<lw> dsvVar, dsv<ajs> dsvVar2, dsv<Executor> dsvVar3, dsv<ajp> dsvVar4, dsv<f> dsvVar5) {
        this.f23460a = dsvVar;
        this.f23461b = dsvVar2;
        this.f23462c = dsvVar3;
        this.f23463d = dsvVar4;
        this.e = dsvVar5;
    }

    public static ajz a(dsv<lw> dsvVar, dsv<ajs> dsvVar2, dsv<Executor> dsvVar3, dsv<ajp> dsvVar4, dsv<f> dsvVar5) {
        return new ajz(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aju(this.f23460a.a(), this.f23461b.a(), this.f23462c.a(), this.f23463d.a(), this.e.a());
    }
}
