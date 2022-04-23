package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baq.class */
public final class baq implements dsi<bar> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24083a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<adt> f24084b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cov> f24085c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzbar> f24086d;
    private final dsv<eht.a.EnumC0477a> e;

    private baq(dsv<Context> dsvVar, dsv<adt> dsvVar2, dsv<cov> dsvVar3, dsv<zzbar> dsvVar4, dsv<eht.a.EnumC0477a> dsvVar5) {
        this.f24083a = dsvVar;
        this.f24084b = dsvVar2;
        this.f24085c = dsvVar3;
        this.f24086d = dsvVar4;
        this.e = dsvVar5;
    }

    public static baq a(dsv<Context> dsvVar, dsv<adt> dsvVar2, dsv<cov> dsvVar3, dsv<zzbar> dsvVar4, dsv<eht.a.EnumC0477a> dsvVar5) {
        return new baq(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bar(this.f24083a.a(), this.f24084b.a(), this.f24085c.a(), this.f24086d.a(), this.e.a());
    }
}
