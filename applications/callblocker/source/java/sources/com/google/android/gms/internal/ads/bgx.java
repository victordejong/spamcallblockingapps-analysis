package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgx.class */
public final class bgx implements dht<bgy> {

    /* renamed from: a */
    private final dig<bhg> f11220a;

    /* renamed from: b */
    private final dig<bho> f11221b;

    private bgx(dig<bhg> digVar, dig<bho> digVar2) {
        this.f11220a = digVar;
        this.f11221b = digVar2;
    }

    /* renamed from: a */
    public static bgx m11953a(dig<bhg> digVar, dig<bho> digVar2) {
        return new bgx(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bgy(this.f11220a.mo9430a(), this.f11221b.mo9430a());
    }
}
