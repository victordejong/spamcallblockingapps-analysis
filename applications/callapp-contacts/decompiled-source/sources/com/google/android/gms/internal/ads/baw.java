package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baw.class */
public final class baw implements dsi<bax> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Map<String, bsk<anv>>> f24101a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Map<String, bsk<bcf>>> f24102b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Map<String, buz<bcf>>> f24103c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<anu<alq>> f24104d;
    private final dsv<bcy> e;

    public baw(dsv<Map<String, bsk<anv>>> dsvVar, dsv<Map<String, bsk<bcf>>> dsvVar2, dsv<Map<String, buz<bcf>>> dsvVar3, dsv<anu<alq>> dsvVar4, dsv<bcy> dsvVar5) {
        this.f24101a = dsvVar;
        this.f24102b = dsvVar2;
        this.f24103c = dsvVar3;
        this.f24104d = dsvVar4;
        this.e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bax(this.f24101a.a(), this.f24102b.a(), this.f24103c.a(), this.f24104d, this.e.a());
    }
}
