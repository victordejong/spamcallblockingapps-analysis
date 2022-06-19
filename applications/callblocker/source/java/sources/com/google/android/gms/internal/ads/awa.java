package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awa.class */
public final class awa implements dht<auq<arg>> {

    /* renamed from: a */
    private final avv f10450a;

    /* renamed from: b */
    private final dig<Context> f10451b;

    /* renamed from: c */
    private final dig<C3647yd> f10452c;

    /* renamed from: d */
    private final dig<cgr> f10453d;

    /* renamed from: e */
    private final dig<chh> f10454e;

    private awa(avv avvVar, dig<Context> digVar, dig<C3647yd> digVar2, dig<cgr> digVar3, dig<chh> digVar4) {
        this.f10450a = avvVar;
        this.f10451b = digVar;
        this.f10452c = digVar2;
        this.f10453d = digVar3;
        this.f10454e = digVar4;
    }

    /* renamed from: a */
    public static awa m12390a(avv avvVar, dig<Context> digVar, dig<C3647yd> digVar2, dig<cgr> digVar3, dig<chh> digVar4) {
        return new awa(avvVar, digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(new arg(this.f10451b.mo9430a(), this.f10452c.mo9430a(), this.f10453d.mo9430a(), this.f10454e.mo9430a()) { // from class: com.google.android.gms.internal.ads.avu

            /* renamed from: a */
            private final Context f10432a;

            /* renamed from: b */
            private final C3647yd f10433b;

            /* renamed from: c */
            private final cgr f10434c;

            /* renamed from: d */
            private final chh f10435d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10432a = mo9430a;
                this.f10433b = mo9430a2;
                this.f10434c = mo9430a3;
                this.f10435d = mo9430a4;
            }

            @Override // com.google.android.gms.internal.ads.arg
            /* renamed from: a */
            public final void mo11427a() {
                C2341q.m14734m().m6890b(this.f10432a, this.f10433b.f17636a, this.f10434c.f13004z.toString(), this.f10435d.f13042f);
            }
        }, C3650yg.f17647f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
