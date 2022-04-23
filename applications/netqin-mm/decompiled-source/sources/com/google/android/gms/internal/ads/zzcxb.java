package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcji;
import com.google.android.gms.internal.ads.zzckj;
import com.google.android.gms.internal.ads.zzcxb;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3554fq;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3405bq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxb.class */
public final class zzcxb implements zzcta<zzcjg> {

    /* renamed from: a */
    public final Context f26698a;

    /* renamed from: b */
    public final zzcjt f26699b;

    /* renamed from: c */
    public final zzcjj f26700c;

    /* renamed from: d */
    public final zzdok f26701d;

    /* renamed from: e */
    public final Executor f26702e;

    /* renamed from: f */
    public final zzbbx f26703f;

    public zzcxb(Context context, zzbbx zzbbxVar, zzdok zzdokVar, Executor executor, zzcjj zzcjjVar, zzcjt zzcjtVar) {
        this.f26698a = context;
        this.f26701d = zzdokVar;
        this.f26700c = zzcjjVar;
        this.f26702e = executor;
        this.f26703f = zzbbxVar;
        this.f26699b = zzcjtVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13810a(final zzdnv zzdnvVar, zzdog zzdogVar, zzckj zzckjVar, Object obj) throws Exception {
        zzdzc<?> zzdzcVar;
        final zzbgj a = this.f26699b.m14128a(this.f26701d.f27643e, zzdnvVar, zzdogVar.f27634b.f27630b, zzdnvVar.f27573T);
        a.mo15561f(zzdnvVar.f27570Q);
        zzckjVar.m14114a(this.f26698a, a.getView());
        zzbcg zzbcgVar = new zzbcg();
        final zzcji a2 = this.f26700c.mo14139a(new zzbre(zzdogVar, zzdnvVar, null), new zzcjh(new C3554fq(this.f26698a, this.f26699b, this.f26701d, this.f26703f, zzdnvVar, zzbcgVar, a), a));
        zzbcgVar.m15835a((zzbcg) a2);
        zzahx.m16747a(a, a2.mo14143l());
        a2.mo15160d().m14939a(new zzbuz(a) { // from class: c.d.b.d.g.a.eq

            /* renamed from: a */
            public final zzbgj f12854a;

            {
                this.f12854a = a;
            }

            @Override // com.google.android.gms.internal.ads.zzbuz
            /* renamed from: M */
            public final void mo13728M() {
                zzbgj zzbgjVar = this.f12854a;
                if (zzbgjVar.mo15543z() != null) {
                    zzbgjVar.mo15543z().mo15475e();
                }
            }
        }, zzbbz.f24769f);
        a2.mo14147h().m14122a(a, true);
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue() || !zzdnvVar.f27573T) {
            a2.mo14147h();
            zzdny zzdnyVar = zzdnvVar.f27602r;
            zzdzcVar = zzcjv.m14123a(a, zzdnyVar.f27620b, zzdnyVar.f27619a);
        } else {
            zzdzcVar = zzdyq.m12988a((Object) null);
        }
        return zzdyq.m12993a(zzdzcVar, new zzdvu(this, a, zzdnvVar, a2) { // from class: c.d.b.d.g.a.dq

            /* renamed from: a */
            public final zzbgj f12765a;

            /* renamed from: b */
            public final zzdnv f12766b;

            /* renamed from: c */
            public final zzcji f12767c;

            {
                this.f12765a = a;
                this.f12766b = zzdnvVar;
                this.f12767c = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj2) {
                zzbgj zzbgjVar = this.f12765a;
                zzdnv zzdnvVar2 = this.f12766b;
                zzcji zzcjiVar = this.f12767c;
                if (zzdnvVar2.f27561H) {
                    zzbgjVar.mo15606C();
                }
                zzbgjVar.mo15603F();
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23827i0)).booleanValue()) {
                    zzp.m17967e();
                    zzazd.m16046a(zzbgjVar);
                }
                return zzcjiVar.mo14144k();
            }
        }, this.f26702e);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzcjg> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        final zzckj zzckjVar = new zzckj();
        zzdzc<zzcjg> a = zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, zzdnvVar, zzdogVar, zzckjVar) { // from class: c.d.b.d.g.a.cq

            /* renamed from: a */
            public final zzcxb f12576a;

            /* renamed from: b */
            public final zzdnv f12577b;

            /* renamed from: c */
            public final zzdog f12578c;

            /* renamed from: d */
            public final zzckj f12579d;

            {
                this.f12576a = this;
                this.f12577b = zzdnvVar;
                this.f12578c = zzdogVar;
                this.f12579d = zzckjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12576a.m13810a(this.f12577b, this.f12578c, this.f12579d, obj);
            }
        }, this.f26702e);
        zzckjVar.getClass();
        a.mo12976a(RunnableC3405bq.m27112a(zzckjVar), this.f26702e);
        return a;
    }
}
