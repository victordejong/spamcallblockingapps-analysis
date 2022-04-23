package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjn.class */
public final class bjn implements dsi<ehk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24552a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<String> f24553b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f24554c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<eht.a.EnumC0477a> f24555d;
    private final dsv<String> e;

    private bjn(dsv<Context> dsvVar, dsv<String> dsvVar2, dsv<zzbar> dsvVar3, dsv<eht.a.EnumC0477a> dsvVar4, dsv<String> dsvVar5) {
        this.f24552a = dsvVar;
        this.f24553b = dsvVar2;
        this.f24554c = dsvVar3;
        this.f24555d = dsvVar4;
        this.e = dsvVar5;
    }

    public static bjn a(dsv<Context> dsvVar, dsv<String> dsvVar2, dsv<zzbar> dsvVar3, dsv<eht.a.EnumC0477a> dsvVar4, dsv<String> dsvVar5) {
        return new bjn(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Context a2 = this.f24552a.a();
        final String a3 = this.f24553b.a();
        zzbar a4 = this.f24554c.a();
        final eht.a.EnumC0477a a5 = this.f24555d.a();
        final String a6 = this.e.a();
        ehk ehkVar = new ehk(new ehq(a2));
        final eht.z d2 = eht.z.a().a(a4.zzeka).b(a4.zzekb).c(a4.zzekc ? 0 : 2).f();
        ehkVar.a(new ehj(a5, a3, d2, a6) { // from class: com.google.android.gms.internal.ads.bjo

            /* renamed from: a  reason: collision with root package name */
            private final eht.a.EnumC0477a f24556a;

            /* renamed from: b  reason: collision with root package name */
            private final String f24557b;

            /* renamed from: c  reason: collision with root package name */
            private final eht.z f24558c;

            /* renamed from: d  reason: collision with root package name */
            private final String f24559d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24556a = a5;
                this.f24557b = a3;
                this.f24558c = d2;
                this.f24559d = a6;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                eht.a.EnumC0477a aVar2 = this.f24556a;
                String str = this.f24557b;
                eht.z zVar = this.f24558c;
                aVar.a(aVar.i().k().a(aVar2)).a(aVar.h().k().a(str).a(zVar)).a(this.f24559d);
            }
        });
        return (ehk) dso.b(ehkVar);
    }
}
