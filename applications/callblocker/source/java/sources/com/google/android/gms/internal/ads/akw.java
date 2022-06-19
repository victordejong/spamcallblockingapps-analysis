package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akw.class */
public final class akw implements dht<auq<arg>> {

    /* renamed from: a */
    private final ako f9919a;

    /* renamed from: b */
    private final dig<Context> f9920b;

    /* renamed from: c */
    private final dig<C3647yd> f9921c;

    /* renamed from: d */
    private final dig<cgr> f9922d;

    /* renamed from: e */
    private final dig<chh> f9923e;

    public akw(ako akoVar, dig<Context> digVar, dig<C3647yd> digVar2, dig<cgr> digVar3, dig<chh> digVar4) {
        this.f9919a = akoVar;
        this.f9920b = digVar;
        this.f9921c = digVar2;
        this.f9922d = digVar3;
        this.f9923e = digVar4;
    }

    /* renamed from: a */
    public static auq<arg> m12983a(ako akoVar, Context context, C3647yd c3647yd, cgr cgrVar, chh chhVar) {
        return (auq) dhz.m9438a(new auq(new arg(context, c3647yd, cgrVar, chhVar) { // from class: com.google.android.gms.internal.ads.akr

            /* renamed from: a */
            private final Context f9910a;

            /* renamed from: b */
            private final C3647yd f9911b;

            /* renamed from: c */
            private final cgr f9912c;

            /* renamed from: d */
            private final chh f9913d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9910a = context;
                this.f9911b = c3647yd;
                this.f9912c = cgrVar;
                this.f9913d = chhVar;
            }

            @Override // com.google.android.gms.internal.ads.arg
            /* renamed from: a */
            public final void mo11427a() {
                C2341q.m14734m().m6890b(this.f9910a, this.f9911b.f17636a, this.f9912c.f13004z.toString(), this.f9913d.f13042f);
            }
        }, C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12983a(this.f9919a, this.f9920b.mo9430a(), this.f9921c.mo9430a(), this.f9922d.mo9430a(), this.f9923e.mo9430a());
    }
}
