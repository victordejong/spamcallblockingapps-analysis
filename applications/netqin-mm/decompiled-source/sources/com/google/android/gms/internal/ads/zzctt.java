package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbop;
import com.google.android.gms.internal.ads.zzctt;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3923po;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4000ro;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctt.class */
public final class zzctt implements zzcta<zzboq> {

    /* renamed from: a */
    public final zzbpm f26518a;

    /* renamed from: b */
    public final Context f26519b;

    /* renamed from: c */
    public final zzcjt f26520c;

    /* renamed from: d */
    public final zzdok f26521d;

    /* renamed from: e */
    public final Executor f26522e;

    /* renamed from: f */
    public final zzdvu<zzdnv, zzazp> f26523f;

    public zzctt(zzbpm zzbpmVar, Context context, Executor executor, zzcjt zzcjtVar, zzdok zzdokVar, zzdvu<zzdnv, zzazp> zzdvuVar) {
        this.f26519b = context;
        this.f26518a = zzbpmVar;
        this.f26522e = executor;
        this.f26520c = zzcjtVar;
        this.f26521d = zzdokVar;
        this.f26523f = zzdvuVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13860a(zzdog zzdogVar, zzdnv zzdnvVar, Object obj) throws Exception {
        zzvn a = zzdoq.m13403a(this.f26519b, zzdnvVar.f27604t);
        final zzbgj a2 = this.f26520c.m14128a(a, zzdnvVar, zzdogVar.f27634b.f27630b, zzdnvVar.f27573T);
        a2.mo15561f(zzdnvVar.f27570Q);
        View zzckkVar = (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23742S3)).booleanValue() || !zzdnvVar.f27585c0) ? new zzckk(this.f26519b, a2.getView(), this.f26523f.apply(zzdnvVar)) : zzbqe.m15179a(this.f26519b, a2.getView(), zzdnvVar);
        zzbpm zzbpmVar = this.f26518a;
        zzbre zzbreVar = new zzbre(zzdogVar, zzdnvVar, null);
        a2.getClass();
        final zzbop a3 = zzbpmVar.mo15206a(zzbreVar, new zzbot(zzckkVar, a2, C3923po.m26541a(a2), zzdoq.m13402a(a)));
        a3.mo15232h().m14122a(a2, false);
        a3.mo15160d().m14939a(new zzbuz(a2) { // from class: c.d.b.d.g.a.so

            /* renamed from: a */
            public final zzbgj f15316a;

            {
                this.f15316a = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzbuz
            /* renamed from: M */
            public final void mo13728M() {
                zzbgj zzbgjVar = this.f15316a;
                if (zzbgjVar.mo15543z() != null) {
                    zzbgjVar.mo15543z().mo15475e();
                }
            }
        }, zzbbz.f24769f);
        a3.mo15232h();
        zzdny zzdnyVar = zzdnvVar.f27602r;
        zzdzc<?> a4 = zzcjv.m14123a(a2, zzdnyVar.f27620b, zzdnyVar.f27619a);
        if (zzdnvVar.f27561H) {
            a2.getClass();
            a4.mo12976a(RunnableC4000ro.m26404a(a2), this.f26522e);
        }
        a4.mo12976a(new Runnable(this, a2) { // from class: c.d.b.d.g.a.uo

            /* renamed from: a */
            public final zzctt f15659a;

            /* renamed from: b */
            public final zzbgj f15660b;

            {
                this.f15659a = this;
                this.f15660b = a2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15659a.m13861a(this.f15660b);
            }
        }, this.f26522e);
        return zzdyq.m12993a(a4, new zzdvu(a3) { // from class: c.d.b.d.g.a.to

            /* renamed from: a */
            public final zzbop f15418a;

            {
                this.f15418a = a3;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj2) {
                return this.f15418a.mo15231i();
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: a */
    public final /* synthetic */ void m13861a(zzbgj zzbgjVar) {
        zzbgjVar.mo15603F();
        zzbhd i = zzbgjVar.mo15558i();
        zzaak zzaakVar = this.f26521d.f27640b;
        if (zzaakVar != null && i != null) {
            i.m15531b(zzaakVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzboq> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.qo

            /* renamed from: a */
            public final zzctt f14829a;

            /* renamed from: b */
            public final zzdog f14830b;

            /* renamed from: c */
            public final zzdnv f14831c;

            {
                this.f14829a = this;
                this.f14830b = zzdogVar;
                this.f14831c = zzdnvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14829a.m13860a(this.f14830b, this.f14831c, obj);
            }
        }, this.f26522e);
    }
}
