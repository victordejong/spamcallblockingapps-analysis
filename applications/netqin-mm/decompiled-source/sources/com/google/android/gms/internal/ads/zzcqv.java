package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzati;
import com.google.android.gms.internal.ads.zzcqv;
import com.google.android.gms.internal.ads.zzcrj;
import com.google.android.gms.internal.ads.zzcrk;
import com.google.android.gms.internal.ads.zzcrn;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzdgw;
import com.google.android.gms.internal.ads.zzdhp;
import com.google.android.gms.internal.ads.zzdpc;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3737kn;
import p131c.p161d.p170b.p224d.p252g.p253a.C3774ln;
import p131c.p161d.p170b.p224d.p252g.p253a.C3959qn;
import p131c.p161d.p170b.p224d.p252g.p253a.C3999rn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqv.class */
public final class zzcqv extends zzass {

    /* renamed from: a */
    public final Context f26408a;

    /* renamed from: b */
    public final Executor f26409b;

    /* renamed from: c */
    public final zzatt f26410c;

    /* renamed from: d */
    public final zzatq f26411d;

    /* renamed from: e */
    public final zzbly f26412e;

    /* renamed from: f */
    public final HashMap<String, zzcrk> f26413f;

    public zzcqv(Context context, Executor executor, zzatt zzattVar, zzbly zzblyVar, zzatq zzatqVar, HashMap<String, zzcrk> hashMap) {
        zzabb.m16916a(context);
        this.f26408a = context;
        this.f26409b = executor;
        this.f26410c = zzattVar;
        this.f26411d = zzatqVar;
        this.f26412e = zzblyVar;
        this.f26413f = hashMap;
    }

    /* renamed from: a */
    public static zzdzc<JSONObject> m13921a(zzatc zzatcVar, zzdsi zzdsiVar, final zzdhp zzdhpVar) {
        zzdya hnVar = new zzdya(zzdhpVar) { // from class: c.d.b.d.g.a.hn

            /* renamed from: a */
            public final zzdhp f13471a;

            {
                this.f13471a = zzdhpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f13471a.mo13596a().m13602a(zzp.m17969c().m16134a((Bundle) obj));
            }
        };
        return zzdsiVar.m13272a((zzdsi) zzdsf.GMS_SIGNALS, zzdyq.m12988a(zzatcVar.f24447a)).m13260a((zzdya<I, O2>) hnVar).m13261a(C3774ln.f13987a).m13263a();
    }

    /* renamed from: a */
    public static zzdzc<zzati> m13919a(zzdzc<JSONObject> zzdzcVar, zzdsi zzdsiVar, zzamb zzambVar) {
        return zzdsiVar.m13272a((zzdsi) zzdsf.BUILD_URL, (zzdzc) zzdzcVar).m13260a((zzdya<I, O2>) zzambVar.m16663a("AFMA_getAdDictionary", zzama.f24180b, C3737kn.f13900a)).m13263a();
    }

    /* renamed from: C */
    public final zzdzc<InputStream> m13927C(String str) {
        if (!zzada.f24002a.mo16862a().booleanValue()) {
            return zzdyq.m12987a((Throwable) new Exception("Split request is disabled."));
        }
        C3999rn rnVar = new C3999rn(this);
        if (this.f26413f.remove(str) != null) {
            return zzdyq.m12988a(rnVar);
        }
        String valueOf = String.valueOf(str);
        return zzdyq.m12987a((Throwable) new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    /* renamed from: Q1 */
    public final /* synthetic */ void m13926Q1() {
        zzbcc.m15837a(this.f26411d.mo16355a(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final zzasp mo13925a(zzasn zzasnVar) throws RemoteException {
        return null;
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13923a(zzatc zzatcVar, int i) {
        zzcrk zzcrkVar;
        zzamb a = zzp.m17956p().m16667a(this.f26408a, zzbbx.m15844f());
        zzdhp a2 = this.f26412e.mo15328a(zzatcVar, i);
        zzalt a3 = a.m16663a("google.afma.response.normalize", zzcrj.f26414d, zzama.f24181c);
        zzcro zzcroVar = new zzcro(this.f26408a, zzatcVar.f24448b.f24759a, this.f26410c, zzatcVar.f24453g, i);
        zzdsi c = a2.mo13594c();
        if (!zzada.f24002a.mo16862a().booleanValue()) {
            String str = zzatcVar.f24457k;
            zzcrkVar = null;
            if (str != null) {
                zzcrkVar = null;
                if (!str.isEmpty()) {
                    zzayp.m16153g("Request contained a PoolKey but split request is disabled.");
                    zzcrkVar = null;
                }
            }
        } else {
            String str2 = zzatcVar.f24457k;
            zzcrkVar = null;
            if (str2 != null) {
                zzcrkVar = null;
                if (!str2.isEmpty()) {
                    zzcrk remove = this.f26413f.remove(zzatcVar.f24457k);
                    zzcrkVar = remove;
                    if (remove == null) {
                        zzayp.m16153g("Request contained a PoolKey but no matching parameters were found.");
                        zzcrkVar = remove;
                    }
                }
            }
        }
        if (zzcrkVar == null) {
            final zzdzc<JSONObject> a4 = m13921a(zzatcVar, c, a2);
            final zzdzc<zzati> a5 = m13919a(a4, c, a);
            final zzdrr a6 = c.m13271a((zzdsi) zzdsf.HTTP, a5, a4).m13268a(new Callable(a4, a5) { // from class: c.d.b.d.g.a.gn

                /* renamed from: a */
                public final zzdzc f13216a;

                /* renamed from: b */
                public final zzdzc f13217b;

                {
                    this.f13216a = a4;
                    this.f13217b = a5;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzcrn((JSONObject) this.f13216a.get(), (zzati) this.f13217b.get());
                }
            }).m13261a((zzdrp) zzcroVar).m13263a();
            return c.m13271a((zzdsi) zzdsf.PRE_PROCESS, a4, a5, a6).m13268a(new Callable(a6, a4, a5) { // from class: c.d.b.d.g.a.fn

                /* renamed from: a */
                public final zzdzc f12985a;

                /* renamed from: b */
                public final zzdzc f12986b;

                /* renamed from: c */
                public final zzdzc f12987c;

                {
                    this.f12985a = a6;
                    this.f12986b = a4;
                    this.f12987c = a5;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzcrj((zzcrq) this.f12985a.get(), (JSONObject) this.f12986b.get(), (zzati) this.f12987c.get());
                }
            }).m13260a((zzdya) a3).m13263a();
        }
        final zzdrr a7 = c.m13272a((zzdsi) zzdsf.HTTP, zzdyq.m12988a(new zzcrn(zzcrkVar.f26419b, zzcrkVar.f26418a))).m13261a((zzdrp<I, O2>) zzcroVar).m13263a();
        final zzdzc<?> a8 = zzdyq.m12988a(zzcrkVar);
        return c.m13271a((zzdsi) zzdsf.PRE_PROCESS, a7, a8).m13268a(new Callable(a7, a8) { // from class: c.d.b.d.g.a.jn

            /* renamed from: a */
            public final zzdzc f13799a;

            /* renamed from: b */
            public final zzdzc f13800b;

            {
                this.f13799a = a7;
                this.f13800b = a8;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdzc zzdzcVar = this.f13799a;
                zzdzc zzdzcVar2 = this.f13800b;
                return new zzcrj((zzcrq) zzdzcVar.get(), ((zzcrk) zzdzcVar2.get()).f26419b, ((zzcrk) zzdzcVar2.get()).f26418a);
            }
        }).m13260a((zzdya) a3).m13263a();
    }

    /* renamed from: a */
    public final /* synthetic */ InputStream m13918a(zzdzc zzdzcVar, zzdzc zzdzcVar2) throws Exception {
        String h = ((zzati) zzdzcVar.get()).m16368h();
        this.f26413f.put(h, new zzcrk((zzati) zzdzcVar.get(), (JSONObject) zzdzcVar2.get()));
        return new ByteArrayInputStream(h.getBytes(zzdvs.f27900a));
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13924a(zzasn zzasnVar, zzasu zzasuVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13922a(zzatc zzatcVar, zzasw zzaswVar) {
        zzdzc<InputStream> a = m13923a(zzatcVar, Binder.getCallingUid());
        m13920a(a, zzaswVar);
        a.mo12976a(new Runnable(this) { // from class: c.d.b.d.g.a.nn

            /* renamed from: a */
            public final zzcqv f14262a;

            {
                this.f14262a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14262a.m13926Q1();
            }
        }, this.f26409b);
    }

    /* renamed from: a */
    public final void m13920a(zzdzc<InputStream> zzdzcVar, zzasw zzaswVar) {
        zzdyq.m12991a(zzdyq.m12992a(zzdzcVar, new zzdya(this) { // from class: c.d.b.d.g.a.on
            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return zzdyq.m12988a(zzdpc.m13341a((InputStream) obj));
            }
        }, zzbbz.f24764a), new C3959qn(this, zzaswVar), zzbbz.f24769f);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13917a(String str, zzasw zzaswVar) {
        m13920a(m13927C(str), zzaswVar);
    }

    /* renamed from: b */
    public final zzdzc<InputStream> m13916b(zzatc zzatcVar, int i) {
        if (!zzada.f24002a.mo16862a().booleanValue()) {
            return zzdyq.m12987a((Throwable) new Exception("Split request is disabled."));
        }
        zzdqg zzdqgVar = zzatcVar.f24456j;
        if (zzdqgVar == null) {
            return zzdyq.m12987a((Throwable) new Exception("Pool configuration missing from request."));
        }
        if (zzdqgVar.f27728g == 0 || zzdqgVar.f27729h == 0) {
            return zzdyq.m12987a((Throwable) new Exception("Caching is disabled."));
        }
        zzamb a = zzp.m17956p().m16667a(this.f26408a, zzbbx.m15844f());
        zzdhp a2 = this.f26412e.mo15328a(zzatcVar, i);
        zzdsi c = a2.mo13594c();
        final zzdzc<JSONObject> a3 = m13921a(zzatcVar, c, a2);
        final zzdzc<zzati> a4 = m13919a(a3, c, a);
        return c.m13271a((zzdsi) zzdsf.GET_URL_AND_CACHE_KEY, a3, a4).m13268a(new Callable(this, a4, a3) { // from class: c.d.b.d.g.a.mn

            /* renamed from: a */
            public final zzcqv f14186a;

            /* renamed from: b */
            public final zzdzc f14187b;

            /* renamed from: c */
            public final zzdzc f14188c;

            {
                this.f14186a = this;
                this.f14187b = a4;
                this.f14188c = a3;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f14186a.m13918a(this.f14187b, this.f14188c);
            }
        }).m13263a();
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: b */
    public final void mo13915b(zzatc zzatcVar, zzasw zzaswVar) {
        m13920a(m13914c(zzatcVar, Binder.getCallingUid()), zzaswVar);
    }

    /* renamed from: c */
    public final zzdzc<InputStream> m13914c(zzatc zzatcVar, int i) {
        zzamb a = zzp.m17956p().m16667a(this.f26408a, zzbbx.m15844f());
        if (!zzadg.f24014a.mo16862a().booleanValue()) {
            return zzdyq.m12987a((Throwable) new Exception("Signal collection disabled."));
        }
        zzdhp a2 = this.f26412e.mo15328a(zzatcVar, i);
        final zzdgw<JSONObject> b = a2.mo13595b();
        return a2.mo13594c().m13272a((zzdsi) zzdsf.GET_SIGNALS, zzdyq.m12988a(zzatcVar.f24447a)).m13260a((zzdya<I, O2>) new zzdya(b) { // from class: c.d.b.d.g.a.pn

            /* renamed from: a */
            public final zzdgw f14554a;

            {
                this.f14554a = b;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14554a.m13602a(zzp.m17969c().m16134a((Bundle) obj));
            }
        }).m13255a((zzdsa) zzdsf.JS_SIGNALS).m13260a((zzdya) a.m16663a("google.afma.request.getSignals", zzama.f24180b, zzama.f24181c)).m13263a();
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: c */
    public final void mo13913c(zzatc zzatcVar, zzasw zzaswVar) {
        m13920a(m13916b(zzatcVar, Binder.getCallingUid()), zzaswVar);
    }
}
