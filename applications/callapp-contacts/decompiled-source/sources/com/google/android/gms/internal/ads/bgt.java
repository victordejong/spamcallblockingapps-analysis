package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgt.class */
public final class bgt implements dsi<bgq> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f24412a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bcf> f24413b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bcr> f24414c;

    private bgt(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f24412a = dsvVar;
        this.f24413b = dsvVar2;
        this.f24414c = dsvVar3;
    }

    public static bgt a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgt(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgq(this.f24412a.a(), this.f24413b.a(), this.f24414c.a());
    }
}
