package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzdkz;
import com.google.android.gms.internal.ads.zzdli;
import com.google.android.gms.internal.ads.zzdlu;
import com.google.android.gms.internal.ads.zzdlw;
import com.google.android.gms.internal.ads.zzdlx;
import com.google.android.gms.internal.ads.zzdqw;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzua;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3894ow;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkz.class */
public final class zzdkz<R extends zzbtn<AdT>, AdT extends zzbqo> implements zzdlv<R, AdT> {

    /* renamed from: a */
    public final zzdlv<R, AdT> f27474a;

    /* renamed from: b */
    public final zzdlv<R, zzdli<AdT>> f27475b;

    /* renamed from: c */
    public final zzdqs<AdT> f27476c;

    /* renamed from: d */
    public R f27477d;

    /* renamed from: e */
    public final Executor f27478e;

    public zzdkz(zzdlv<R, AdT> zzdlvVar, zzdlv<R, zzdli<AdT>> zzdlvVar2, zzdqs<AdT> zzdqsVar, Executor executor) {
        this.f27474a = zzdlvVar;
        this.f27475b = zzdlvVar2;
        this.f27476c = zzdqsVar;
        this.f27478e = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13528a(zzdlw zzdlwVar, C3894ow owVar, final zzdlx zzdlxVar, zzdli zzdliVar) throws Exception {
        zzdlw zzdlwVar2 = zzdlwVar;
        if (zzdliVar != null) {
            C3894ow owVar2 = new C3894ow(owVar.f14361a, owVar.f14362b, owVar.f14363c, owVar.f14364d, owVar.f14365e, owVar.f14366f, zzdliVar.f27483a);
            if (zzdliVar.f27485c != null) {
                this.f27477d = null;
                this.f27476c.m13301a(owVar2);
                return m13526a(zzdliVar.f27485c, zzdlwVar, zzdlxVar);
            }
            zzdzc<zzdqw<AdT>> b = this.f27476c.m13298b(owVar2);
            if (b != null) {
                this.f27477d = (R) ((zzbtn) zzdlxVar.mo13516a(zzdlwVar.f27492b).mo15052c());
                return zzdyq.m12992a(b, new zzdya(this, zzdlxVar) { // from class: c.d.b.d.g.a.mw

                    /* renamed from: a */
                    public final zzdkz f14204a;

                    /* renamed from: b */
                    public final zzdlx f14205b;

                    {
                        this.f14204a = this;
                        this.f14205b = zzdlxVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdya
                    /* renamed from: d */
                    public final zzdzc mo13006d(Object obj) {
                        return this.f14204a.m13527a(this.f14205b, (zzdqw) obj);
                    }
                }, this.f27478e);
            }
            this.f27476c.m13301a(owVar2);
            zzdlwVar2 = new zzdlw(zzdlwVar.f27492b, zzdliVar.f27484b);
        }
        zzdzc<AdT> a = this.f27474a.mo13517a(zzdlwVar2, zzdlxVar);
        this.f27477d = this.f27474a.mo13518a();
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final zzdzc<AdT> mo13517a(final zzdlw zzdlwVar, final zzdlx<R> zzdlxVar) {
        zzdyl a;
        synchronized (this) {
            zzdok c = zzdlxVar.mo13516a(zzdlwVar.f27492b).mo15052c().mo15075c();
            final C3894ow owVar = new C3894ow(zzdlxVar, zzdlwVar, c.f27642d, c.f27644f, this.f27478e, c.f27648j, null);
            a = zzdyl.m12999d(this.f27475b.mo13517a(zzdlwVar, zzdlxVar)).m13002a(new zzdya(this, zzdlwVar, owVar, zzdlxVar) { // from class: c.d.b.d.g.a.kw

                /* renamed from: a */
                public final zzdkz f13915a;

                /* renamed from: b */
                public final zzdlw f13916b;

                /* renamed from: c */
                public final C3894ow f13917c;

                /* renamed from: d */
                public final zzdlx f13918d;

                {
                    this.f13915a = this;
                    this.f13916b = zzdlwVar;
                    this.f13917c = owVar;
                    this.f13918d = zzdlxVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdya
                /* renamed from: d */
                public final zzdzc mo13006d(Object obj) {
                    return this.f13915a.m13528a(this.f13916b, this.f13917c, this.f13918d, (zzdli) obj);
                }
            }, this.f27478e);
        }
        return a;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13527a(zzdlx zzdlxVar, zzdqw zzdqwVar) throws Exception {
        zzdqy zzdqyVar;
        if (zzdqwVar == null || zzdqwVar.f27763a == null || (zzdqyVar = zzdqwVar.f27764b) == null) {
            throw new zzcof(zzdpg.INTERNAL_ERROR, "Empty prefetch");
        }
        C3894ow owVar = (C3894ow) zzdqyVar;
        zzua.zzb.C10507zzb m = zzua.zzb.m11390m();
        zzua.zzb.zza.C10506zza m2 = zzua.zzb.zza.m11382m();
        m2.m11380a(zzua.zzb.zzc.IN_MEMORY);
        m2.m11379a(zzua.zzb.zzd.m11372m());
        m.m11377a(m2);
        zzdqwVar.f27763a.f27745a.m15120c().mo14080c((zzua.zzb) ((zzejz) m.mo12342K()));
        return m13526a(zzdqwVar.f27763a, owVar.f14362b, zzdlxVar);
    }

    /* renamed from: a */
    public final zzdzc<AdT> m13526a(zzdqk<AdT> zzdqkVar, zzdlw zzdlwVar, zzdlx<R> zzdlxVar) {
        final zzbtq<R> a = zzdlxVar.mo13516a(zzdlwVar.f27492b);
        if (zzdqkVar.f27747c != null) {
            R c = a.mo15052c();
            if (c.mo15074d() != null) {
                zzdqkVar.f27747c.m15165e().mo13502a(c.mo15074d());
            }
            return zzdyq.m12988a(zzdqkVar.f27747c);
        }
        a.mo15053a(zzdqkVar.f27746b);
        zzdzc<AdT> a2 = this.f27474a.mo13517a(zzdlwVar, new zzdlx(a) { // from class: c.d.b.d.g.a.nw

            /* renamed from: a */
            public final zzbtq f14274a;

            {
                this.f14274a = a;
            }

            @Override // com.google.android.gms.internal.ads.zzdlx
            /* renamed from: a */
            public final zzbtq mo13516a(zzdlu zzdluVar) {
                return this.f14274a;
            }
        });
        this.f27477d = this.f27474a.mo13518a();
        return a2;
    }

    /* renamed from: b */
    public final R mo13518a() {
        R r;
        synchronized (this) {
            r = this.f27477d;
        }
        return r;
    }
}
