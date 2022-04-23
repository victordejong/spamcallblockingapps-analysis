package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzbrl;
import com.google.android.gms.internal.ads.zzdqg;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3504ed;
import p131c.p161d.p170b.p224d.p252g.p253a.C3541fd;
import p131c.p161d.p170b.p224d.p252g.p253a.C3578gd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrl.class */
public final class zzbrl<T> {

    /* renamed from: a */
    public final zzcpf f25406a;

    /* renamed from: b */
    public final zzcpp f25407b;

    /* renamed from: c */
    public final zzdok f25408c;

    /* renamed from: d */
    public final zzdsi f25409d;

    /* renamed from: e */
    public final zzblx f25410e;

    /* renamed from: f */
    public final zzcwq<T> f25411f;

    /* renamed from: g */
    public final zzbyg f25412g;

    /* renamed from: h */
    public final zzdog f25413h;

    /* renamed from: i */
    public final zzcql f25414i;

    /* renamed from: j */
    public final zzbtm f25415j;

    /* renamed from: k */
    public final Executor f25416k;

    /* renamed from: l */
    public final zzcqi f25417l;

    /* renamed from: m */
    public final zzctd f25418m;

    public zzbrl(zzcpf zzcpfVar, zzcpp zzcppVar, zzdok zzdokVar, zzdsi zzdsiVar, zzblx zzblxVar, zzcwq<T> zzcwqVar, zzbyg zzbygVar, zzdog zzdogVar, zzcql zzcqlVar, zzbtm zzbtmVar, Executor executor, zzcqi zzcqiVar, zzctd zzctdVar) {
        this.f25406a = zzcpfVar;
        this.f25407b = zzcppVar;
        this.f25408c = zzdokVar;
        this.f25409d = zzdsiVar;
        this.f25410e = zzblxVar;
        this.f25411f = zzcwqVar;
        this.f25412g = zzbygVar;
        this.f25413h = zzdogVar;
        this.f25414i = zzcqlVar;
        this.f25415j = zzbtmVar;
        this.f25416k = executor;
        this.f25417l = zzcqiVar;
        this.f25418m = zzctdVar;
    }

    /* renamed from: a */
    public final zzdzc<zzdog> m15130a() {
        return m15125a(this.f25415j.m15076b());
    }

    /* renamed from: a */
    public final zzdzc<zzdog> m15129a(zzatc zzatcVar) {
        return m15125a(zzdyq.m12988a(zzatcVar));
    }

    /* renamed from: a */
    public final zzdzc<zzatc> m15127a(final zzdqg zzdqgVar) {
        zzdrr a = this.f25409d.m13272a((zzdsi) zzdsf.GET_CACHE_KEY, (zzdzc) this.f25415j.m15076b()).m13260a((zzdya<I, O2>) new zzdya(this, zzdqgVar) { // from class: c.d.b.d.g.a.dd

            /* renamed from: a */
            public final zzbrl f12734a;

            /* renamed from: b */
            public final zzdqg f12735b;

            {
                this.f12734a = this;
                this.f12735b = zzdqgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12734a.m15126a(this.f12735b, (zzatc) obj);
            }
        }).m13263a();
        zzdyq.m12991a(a, new C3578gd(this), this.f25416k);
        return a;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m15126a(zzdqg zzdqgVar, zzatc zzatcVar) throws Exception {
        zzatcVar.f24456j = zzdqgVar;
        return this.f25414i.m13933a(zzatcVar);
    }

    /* renamed from: a */
    public final zzdzc<zzdog> m15125a(zzdzc<zzatc> zzdzcVar) {
        if (this.f25413h != null) {
            return this.f25409d.m13273a((zzdsi) zzdsf.SERVER_TRANSACTION).m13266a(zzdyq.m12988a(this.f25413h)).m13263a();
        }
        zzp.m17963i().m11449c();
        if (this.f25408c.f27642d.f29019s != null) {
            return this.f25409d.m13273a((zzdsi) zzdsf.SERVER_TRANSACTION).m13266a(this.f25407b.m13947a()).m13263a();
        }
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23825h4)).booleanValue()) {
            return this.f25409d.m13272a((zzdsi) zzdsf.SERVER_TRANSACTION, (zzdzc) zzdzcVar).m13260a((zzdya<I, O2>) this.f25406a).m13263a();
        }
        zzdsa<I> a = this.f25409d.m13272a((zzdsi) zzdsf.SERVER_TRANSACTION, (zzdzc) zzdzcVar);
        zzcqi zzcqiVar = this.f25417l;
        zzcqiVar.getClass();
        return a.m13260a((zzdya<I, O2>) C3504ed.m27029a(zzcqiVar)).m13263a();
    }

    /* renamed from: a */
    public final zzva m15124a(Throwable th) {
        return zzdpe.m13337a(th, this.f25418m);
    }

    /* renamed from: b */
    public final zzdzc<T> m15123b() {
        return m15121b(m15130a());
    }

    /* renamed from: b */
    public final zzdzc<T> m15122b(zzatc zzatcVar) {
        return m15121b(m15129a(zzatcVar));
    }

    /* renamed from: b */
    public final zzdzc<T> m15121b(zzdzc<zzdog> zzdzcVar) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23671E2)).booleanValue()) {
            return this.f25409d.m13272a((zzdsi) zzdsf.RENDERER, (zzdzc) zzdzcVar).m13260a((zzdya<I, O2>) this.f25410e).m13260a((zzdya) this.f25411f).m13263a();
        }
        return this.f25409d.m13272a((zzdsi) zzdsf.RENDERER, (zzdzc) zzdzcVar).m13260a((zzdya<I, O2>) this.f25410e).m13260a((zzdya) this.f25411f).m13262a(((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS).m13263a();
    }

    /* renamed from: c */
    public final zzbyg m15120c() {
        return this.f25412g;
    }

    /* renamed from: c */
    public final zzdzc<Void> m15119c(zzatc zzatcVar) {
        zzdrr a = this.f25409d.m13272a((zzdsi) zzdsf.NOTIFY_CACHE_HIT, (zzdzc) this.f25414i.m13931b(zzatcVar)).m13263a();
        zzdyq.m12991a(a, new C3541fd(this), this.f25416k);
        return a;
    }
}
