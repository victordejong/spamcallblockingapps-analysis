package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzalu;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamk.class */
public final class zzamk {

    /* renamed from: a */
    public zzakr f24189a;

    /* renamed from: b */
    public zzdzc<zzalp> f24190b;

    public zzamk(zzakr zzakrVar) {
        this.f24189a = zzakrVar;
    }

    /* renamed from: a */
    public final <I, O> zzamn<I, O> m16656a(String str, zzaly<I> zzalyVar, zzalv<O> zzalvVar) {
        m16658a();
        return new zzamn<>(this.f24190b, str, zzalyVar, zzalvVar);
    }

    /* renamed from: a */
    public final void m16658a() {
        if (this.f24190b == null) {
            final zzbcg zzbcgVar = new zzbcg();
            this.f24190b = zzbcgVar;
            this.f24189a.m16684b((zzeg) null).m15828a(new zzbck(zzbcgVar) { // from class: c.d.b.d.g.a.l2

                /* renamed from: a */
                public final zzbcg f13927a;

                {
                    this.f13927a = zzbcgVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbck
                /* renamed from: a */
                public final void mo15830a(Object obj) {
                    this.f13927a.m15835a((zzbcg) ((zzalp) obj));
                }
            }, new zzbci(zzbcgVar) { // from class: c.d.b.d.g.a.n2

                /* renamed from: a */
                public final zzbcg f14212a;

                {
                    this.f14212a = zzbcgVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbci
                public final void run() {
                    this.f14212a.m15834a((Throwable) new zzalu("Cannot get Javascript Engine"));
                }
            });
        }
    }

    /* renamed from: a */
    public final void m16657a(final String str, final zzahq<? super zzalp> zzahqVar) {
        m16658a();
        this.f24190b = zzdyq.m12992a(this.f24190b, new zzdya(str, zzahqVar) { // from class: c.d.b.d.g.a.m2

            /* renamed from: a */
            public final String f14012a;

            /* renamed from: b */
            public final zzahq f14013b;

            {
                this.f14012a = str;
                this.f14013b = zzahqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzalp zzalpVar = (zzalp) obj;
                zzalpVar.mo16671b(this.f14012a, this.f14013b);
                return zzdyq.m12988a(zzalpVar);
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: b */
    public final void m16655b(final String str, final zzahq<? super zzalp> zzahqVar) {
        this.f24190b = zzdyq.m12993a(this.f24190b, new zzdvu(str, zzahqVar) { // from class: c.d.b.d.g.a.o2

            /* renamed from: a */
            public final String f14279a;

            /* renamed from: b */
            public final zzahq f14280b;

            {
                this.f14279a = str;
                this.f14280b = zzahqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                zzalp zzalpVar = (zzalp) obj;
                zzalpVar.mo16673a(this.f14279a, this.f14280b);
                return zzalpVar;
            }
        }, zzbbz.f24769f);
    }
}
