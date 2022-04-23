package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzcql;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdvs;
import com.google.android.gms.internal.ads.zzdxi;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3514en;
import p131c.p161d.p170b.p224d.p252g.p253a.C3361an;
import p131c.p161d.p170b.p224d.p252g.p253a.C4220xm;
import p131c.p161d.p170b.p224d.p252g.p253a.C4257ym;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcql.class */
public final class zzcql {

    /* renamed from: a */
    public final zzdzb f26405a;

    /* renamed from: b */
    public final zzcqc f26406b;

    /* renamed from: c */
    public final zzeos<zzcqv> f26407c;

    public zzcql(zzdzb zzdzbVar, zzcqc zzcqcVar, zzeos<zzcqv> zzeosVar) {
        this.f26405a = zzdzbVar;
        this.f26406b = zzcqcVar;
        this.f26407c = zzeosVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13934a(AbstractC3514en enVar, zzatc zzatcVar, zzdya zzdyaVar, zzcqm zzcqmVar) throws Exception {
        return zzdyq.m12992a(enVar.mo26113a(zzatcVar), zzdyaVar, this.f26405a);
    }

    /* renamed from: a */
    public final zzdzc<zzatc> m13933a(final zzatc zzatcVar) {
        zzdya zmVar = new zzdya(zzatcVar) { // from class: c.d.b.d.g.a.zm

            /* renamed from: a */
            public final zzatc f16461a;

            {
                this.f16461a = zzatcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzatc zzatcVar2 = this.f16461a;
                zzatcVar2.f24457k = new String(zzdxi.m13072a((InputStream) obj), zzdvs.f27900a);
                return zzdyq.m12988a(zzatcVar2);
            }
        };
        zzcqc zzcqcVar = this.f26406b;
        zzcqcVar.getClass();
        return m13932a(zzatcVar, C4257ym.m26112a(zzcqcVar), new AbstractC3514en(this) { // from class: c.d.b.d.g.a.bn

            /* renamed from: a */
            public final zzcql f12487a;

            {
                this.f12487a = this;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3514en
            /* renamed from: a */
            public final zzdzc mo26113a(zzatc zzatcVar2) {
                return this.f12487a.m13928e(zzatcVar2);
            }
        }, zmVar);
    }

    /* renamed from: a */
    public final <RetT> zzdzc<RetT> m13932a(final zzatc zzatcVar, AbstractC3514en<InputStream> enVar, final AbstractC3514en<InputStream> enVar2, final zzdya<InputStream, RetT> zzdyaVar) {
        String str = zzatcVar.f24450d;
        zzp.m17969c();
        return zzdyl.m12999d(zzayu.m16091e(str) ? zzdyq.m12987a((Throwable) new zzcqm(zzdpg.INTERNAL_ERROR)) : zzdyq.m12990a(enVar.mo26113a(zzatcVar), ExecutionException.class, C4220xm.f16057a, this.f26405a)).m13002a(zzdyaVar, this.f26405a).m13000a(zzcqm.class, new zzdya(this, enVar2, zzatcVar, zzdyaVar) { // from class: c.d.b.d.g.a.wm

            /* renamed from: a */
            public final zzcql f15956a;

            /* renamed from: b */
            public final AbstractC3514en f15957b;

            /* renamed from: c */
            public final zzatc f15958c;

            /* renamed from: d */
            public final zzdya f15959d;

            {
                this.f15956a = this;
                this.f15957b = enVar2;
                this.f15958c = zzatcVar;
                this.f15959d = zzdyaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f15956a.m13934a(this.f15957b, this.f15958c, this.f15959d, (zzcqm) obj);
            }
        }, this.f26405a);
    }

    /* renamed from: b */
    public final zzdzc<Void> m13931b(zzatc zzatcVar) {
        if (zzfg.m12137b(zzatcVar.f24457k)) {
            return zzdyq.m12987a((Throwable) new zzcof(zzdpg.INVALID_REQUEST, "Pool key missing from removeUrl call."));
        }
        return m13932a(zzatcVar, new AbstractC3514en(this) { // from class: c.d.b.d.g.a.dn

            /* renamed from: a */
            public final zzcql f12762a;

            {
                this.f12762a = this;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3514en
            /* renamed from: a */
            public final zzdzc mo26113a(zzatc zzatcVar2) {
                return this.f12762a.m13929d(zzatcVar2);
            }
        }, new AbstractC3514en(this) { // from class: c.d.b.d.g.a.cn

            /* renamed from: a */
            public final zzcql f12571a;

            {
                this.f12571a = this;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3514en
            /* renamed from: a */
            public final zzdzc mo26113a(zzatc zzatcVar2) {
                return this.f12571a.m13930c(zzatcVar2);
            }
        }, C3361an.f12300a);
    }

    /* renamed from: c */
    public final /* synthetic */ zzdzc m13930c(zzatc zzatcVar) {
        return this.f26407c.get().m13927C(zzatcVar.f24457k);
    }

    /* renamed from: d */
    public final /* synthetic */ zzdzc m13929d(zzatc zzatcVar) {
        return this.f26406b.m13938a(zzatcVar.f24457k);
    }

    /* renamed from: e */
    public final /* synthetic */ zzdzc m13928e(zzatc zzatcVar) {
        return this.f26407c.get().m13916b(zzatcVar, Binder.getCallingUid());
    }
}
