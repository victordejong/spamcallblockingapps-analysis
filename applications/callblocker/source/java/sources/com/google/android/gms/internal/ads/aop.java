package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aop.class */
public final class aop implements dht<coe<cgr, C3584vv>> {

    /* renamed from: a */
    private final dig<Context> f10128a;

    /* renamed from: b */
    private final dig<C3647yd> f10129b;

    /* renamed from: c */
    private final dig<chh> f10130c;

    public aop(dig<Context> digVar, dig<C3647yd> digVar2, dig<chh> digVar3) {
        this.f10128a = digVar;
        this.f10129b = digVar2;
        this.f10130c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (coe) dhz.m9438a(new coe(this.f10128a.mo9430a(), this.f10129b.mo9430a(), this.f10130c.mo9430a()) { // from class: com.google.android.gms.internal.ads.aoq

            /* renamed from: a */
            private final Context f10131a;

            /* renamed from: b */
            private final C3647yd f10132b;

            /* renamed from: c */
            private final chh f10133c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10131a = mo9430a;
                this.f10132b = mo9430a2;
                this.f10133c = mo9430a3;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                Context context = this.f10131a;
                C3647yd c3647yd = this.f10132b;
                chh chhVar = this.f10133c;
                cgr cgrVar = (cgr) obj;
                C3584vv c3584vv = new C3584vv(context);
                c3584vv.m6907c(cgrVar.f13003y);
                c3584vv.m6905d(cgrVar.f13004z.toString());
                c3584vv.m6909b(c3647yd.f17636a);
                c3584vv.m6913a(chhVar.f13042f);
                return c3584vv;
            }
        }, "Cannot return null from a non-@Nullable @Provides method");
    }
}
