package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bup.class */
public final class bup implements dht<crt<buu>> {

    /* renamed from: a */
    private final dig<ckz> f12297a;

    /* renamed from: b */
    private final dig<but> f12298b;

    /* renamed from: c */
    private final dig<aou> f12299c;

    public bup(dig<ckz> digVar, dig<but> digVar2, dig<aou> digVar3) {
        this.f12297a = digVar;
        this.f12298b = digVar2;
        this.f12299c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        ckz mo9430a = this.f12297a.mo9430a();
        return (crt) dhz.m9438a(mo9430a.m11162a((ckz) ckw.GENERATE_SIGNALS, (crt) this.f12299c.mo9430a().m12856b()).m11150a((cqt<I, O2>) this.f12298b.mo9430a()).m11152a(((Integer) dyx.m8158e().m7876a(edi.f16497cx)).intValue(), TimeUnit.SECONDS).m11153a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
