package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjn.class */
public final class bjn implements dsi<ehk> {

    /* renamed from: a */
    private final dsv<Context> f44103a;

    /* renamed from: b */
    private final dsv<String> f44104b;

    /* renamed from: c */
    private final dsv<zzbar> f44105c;

    /* renamed from: d */
    private final dsv<eht.C12447a.EnumC12448a> f44106d;

    /* renamed from: e */
    private final dsv<String> f44107e;

    private bjn(dsv<Context> dsvVar, dsv<String> dsvVar2, dsv<zzbar> dsvVar3, dsv<eht.C12447a.EnumC12448a> dsvVar4, dsv<String> dsvVar5) {
        this.f44103a = dsvVar;
        this.f44104b = dsvVar2;
        this.f44105c = dsvVar3;
        this.f44106d = dsvVar4;
        this.f44107e = dsvVar5;
    }

    /* renamed from: a */
    public static bjn m17805a(dsv<Context> dsvVar, dsv<String> dsvVar2, dsv<zzbar> dsvVar3, dsv<eht.C12447a.EnumC12448a> dsvVar4, dsv<String> dsvVar5) {
        return new bjn(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        Context mo14005a = this.f44103a.mo14005a();
        String mo14005a2 = this.f44104b.mo14005a();
        zzbar mo14005a3 = this.f44105c.mo14005a();
        eht.C12447a.EnumC12448a mo14005a4 = this.f44106d.mo14005a();
        String mo14005a5 = this.f44107e.mo14005a();
        ehk ehkVar = new ehk(new ehq(mo14005a));
        ehkVar.m15048a(new ehj(mo14005a4, mo14005a2, eht.C12523z.m14896a().m14890a(mo14005a3.zzeka).m14889b(mo14005a3.zzekb).m14888c(mo14005a3.zzekc ? 0 : 2).mo16259f(), mo14005a5) { // from class: com.google.android.gms.internal.ads.bjo

            /* renamed from: a */
            private final eht.C12447a.EnumC12448a f44108a;

            /* renamed from: b */
            private final String f44109b;

            /* renamed from: c */
            private final eht.C12523z f44110c;

            /* renamed from: d */
            private final String f44111d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44108a = mo14005a4;
                this.f44109b = mo14005a2;
                this.f44110c = mo16259f;
                this.f44111d = mo14005a5;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                eht.C12447a.EnumC12448a enumC12448a = this.f44108a;
                String str = this.f44109b;
                eht.C12523z c12523z = this.f44110c;
                c12495a.m14968a(c12495a.m14959i().m16334k().m15037a(enumC12448a)).m14965a(c12495a.m14960h().m16334k().m14981a(str).m14982a(c12523z)).m14962a(this.f44111d);
            }
        });
        return (ehk) dso.m15764b(ehkVar);
    }
}
