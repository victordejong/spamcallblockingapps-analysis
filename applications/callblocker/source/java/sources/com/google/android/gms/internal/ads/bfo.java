package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.dwv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfo.class */
public final class bfo implements dht<dwi> {

    /* renamed from: a */
    private final dig<Context> f11145a;

    /* renamed from: b */
    private final dig<String> f11146b;

    /* renamed from: c */
    private final dig<C3647yd> f11147c;

    /* renamed from: d */
    private final dig<dwv.C3021a.EnumC3022a> f11148d;

    /* renamed from: e */
    private final dig<String> f11149e;

    private bfo(dig<Context> digVar, dig<String> digVar2, dig<C3647yd> digVar3, dig<dwv.C3021a.EnumC3022a> digVar4, dig<String> digVar5) {
        this.f11145a = digVar;
        this.f11146b = digVar2;
        this.f11147c = digVar3;
        this.f11148d = digVar4;
        this.f11149e = digVar5;
    }

    /* renamed from: a */
    public static bfo m11996a(dig<Context> digVar, dig<String> digVar2, dig<C3647yd> digVar3, dig<dwv.C3021a.EnumC3022a> digVar4, dig<String> digVar5) {
        return new bfo(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Context mo9430a = this.f11145a.mo9430a();
        String mo9430a2 = this.f11146b.mo9430a();
        C3647yd mo9430a3 = this.f11147c.mo9430a();
        dwv.C3021a.EnumC3022a mo9430a4 = this.f11148d.mo9430a();
        String mo9430a5 = this.f11149e.mo9430a();
        dwi dwiVar = new dwi(new dwn(mo9430a));
        dwiVar.m8441a(new dwl(mo9430a4, mo9430a2, (dwv.C3097z) ((dcw) dwv.C3097z.m8220a().m8211a(mo9430a3.f17637b).m8210b(mo9430a3.f17638c).m8209c(mo9430a3.f17639d ? 0 : 2).mo9987g()), mo9430a5) { // from class: com.google.android.gms.internal.ads.bfp

            /* renamed from: a */
            private final dwv.C3021a.EnumC3022a f11150a;

            /* renamed from: b */
            private final String f11151b;

            /* renamed from: c */
            private final dwv.C3097z f11152c;

            /* renamed from: d */
            private final String f11153d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11150a = mo9430a4;
                this.f11151b = mo9430a2;
                this.f11152c = c3097z;
                this.f11153d = mo9430a5;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                dwv.C3021a.EnumC3022a enumC3022a = this.f11150a;
                String str = this.f11151b;
                dwv.C3097z c3097z2 = this.f11152c;
                c3069a.m8317a(c3069a.m8308j().m10078p().m8420a(enumC3022a)).m8314a(c3069a.m8309i().m10078p().m8343a(str).m8344a(c3097z2)).m8311a(this.f11153d);
            }
        });
        return (dwi) dhz.m9438a(dwiVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
