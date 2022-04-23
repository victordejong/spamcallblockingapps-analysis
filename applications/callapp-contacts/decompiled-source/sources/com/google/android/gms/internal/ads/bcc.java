package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcc.class */
public final class bcc implements dsi<bcd> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bcr> f24155a;

    private bcc(dsv<bcr> dsvVar) {
        this.f24155a = dsvVar;
    }

    public static bcc a(dsv<bcr> dsvVar) {
        return new bcc(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bcd(this.f24155a.a());
    }
}
