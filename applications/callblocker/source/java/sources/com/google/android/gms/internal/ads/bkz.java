package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkz.class */
public final class bkz extends AbstractBinderC3412pl {

    /* renamed from: a */
    private final Context f11449a;

    /* renamed from: b */
    private final Executor f11450b;

    /* renamed from: c */
    private final AbstractC3442qo f11451c;

    /* renamed from: d */
    private final AbstractC3438qk f11452d;

    /* renamed from: e */
    private final aig f11453e;

    /* renamed from: f */
    private final HashMap<String, blo> f11454f;

    public bkz(Context context, Executor executor, AbstractC3442qo abstractC3442qo, aig aigVar, AbstractC3438qk abstractC3438qk, HashMap<String, blo> hashMap) {
        edi.m7866a(context);
        this.f11449a = context;
        this.f11450b = executor;
        this.f11451c = abstractC3442qo;
        this.f11452d = abstractC3438qk;
        this.f11453e = aigVar;
        this.f11454f = hashMap;
    }

    /* renamed from: a */
    private static crt<C3430qc> m11817a(crt<JSONObject> crtVar, ckz ckzVar, C3252jn c3252jn) {
        return ckzVar.m11162a((ckz) ckw.BUILD_URL, (crt) crtVar).m11150a((cqt<I, O2>) c3252jn.m7725a("AFMA_getAdDictionary", C3247ji.f16804a, ble.f11471a)).m11153a();
    }

    /* renamed from: a */
    private static crt<JSONObject> m11813a(C3423pw c3423pw, ckz ckzVar, cba cbaVar) {
        cqt cqtVar = new cqt(cbaVar) { // from class: com.google.android.gms.internal.ads.blc

            /* renamed from: a */
            private final cba f11468a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11468a = cbaVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11468a.mo11500a().m11511a(C2341q.m14744c().m6998a((Bundle) obj));
            }
        };
        return ckzVar.m11162a((ckz) ckw.GMS_SIGNALS, crg.m10778a(c3423pw.f17198a)).m11150a((cqt<I, O2>) cqtVar).m11151a(blf.f11472a).m11153a();
    }

    /* renamed from: a */
    private final void m11815a(crt<InputStream> crtVar, AbstractC3417pq abstractC3417pq) {
        crg.m10781a(crg.m10782a(crtVar, new cqt(this) { // from class: com.google.android.gms.internal.ads.bli

            /* renamed from: a */
            private final bkz f11477a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11477a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return crg.m10778a(chu.m11265a((InputStream) obj));
            }
        }, C3650yg.f17642a), new bll(this, abstractC3417pq), C3650yg.f17647f);
    }

    /* renamed from: a */
    public final crt<InputStream> m11814a(C3423pw c3423pw, int i) {
        blo bloVar;
        cki m11153a;
        C3252jn m7731a = C2341q.m14731p().m7731a(this.f11449a, C3647yd.m6741a());
        cba mo13098a = this.f11453e.mo13098a(c3423pw, i);
        AbstractC3244jf m7725a = m7731a.m7725a("google.afma.response.normalize", bln.f11488d, C3247ji.f16805b);
        bls blsVar = new bls(this.f11449a, c3423pw.f17199b.f17636a, this.f11451c, c3423pw.f17204g);
        ckz mo11498c = mo13098a.mo11498c();
        if (!C2794ar.f10233a.mo13599a().booleanValue()) {
            bloVar = null;
            if (c3423pw.f17208k != null) {
                bloVar = null;
                if (!c3423pw.f17208k.isEmpty()) {
                    C3556uu.m7052a("Request contained a PoolKey but split request is disabled.");
                    bloVar = null;
                }
            }
        } else if (c3423pw.f17208k == null || c3423pw.f17208k.isEmpty()) {
            bloVar = null;
        } else {
            blo remove = this.f11454f.remove(c3423pw.f17208k);
            bloVar = remove;
            if (remove == null) {
                C3556uu.m7052a("Request contained a PoolKey but no matching parameters were found.");
                bloVar = remove;
            }
        }
        if (bloVar == null) {
            crt<JSONObject> m11813a = m11813a(c3423pw, mo11498c, mo13098a);
            crt<C3430qc> m11817a = m11817a(m11813a, mo11498c, m7731a);
            cki m11153a2 = mo11498c.m11161a((ckz) ckw.HTTP, m11817a, m11813a).m11158a(new Callable(m11813a, m11817a) { // from class: com.google.android.gms.internal.ads.blb

                /* renamed from: a */
                private final crt f11466a;

                /* renamed from: b */
                private final crt f11467b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11466a = m11813a;
                    this.f11467b = m11817a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new blr((JSONObject) this.f11466a.get(), (C3430qc) this.f11467b.get());
                }
            }).m11151a((ckg) blsVar).m11153a();
            m11153a = mo11498c.m11161a((ckz) ckw.PRE_PROCESS, m11813a, m11817a, m11153a2).m11158a(new Callable(m11153a2, m11813a, m11817a) { // from class: com.google.android.gms.internal.ads.bla

                /* renamed from: a */
                private final crt f11463a;

                /* renamed from: b */
                private final crt f11464b;

                /* renamed from: c */
                private final crt f11465c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11463a = m11153a2;
                    this.f11464b = m11813a;
                    this.f11465c = m11817a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new bln((blu) this.f11463a.get(), (JSONObject) this.f11464b.get(), (C3430qc) this.f11465c.get());
                }
            }).m11150a((cqt) m7725a).m11153a();
        } else {
            cki m11153a3 = mo11498c.m11162a((ckz) ckw.HTTP, crg.m10778a(new blr(bloVar.f11493b, bloVar.f11492a))).m11151a((ckg<I, O2>) blsVar).m11153a();
            crt<?> m10778a = crg.m10778a(bloVar);
            m11153a = mo11498c.m11161a((ckz) ckw.PRE_PROCESS, m11153a3, m10778a).m11158a(new Callable(m11153a3, m10778a) { // from class: com.google.android.gms.internal.ads.bld

                /* renamed from: a */
                private final crt f11469a;

                /* renamed from: b */
                private final crt f11470b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11469a = m11153a3;
                    this.f11470b = m10778a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    crt crtVar = this.f11469a;
                    crt crtVar2 = this.f11470b;
                    return new bln((blu) crtVar.get(), ((blo) crtVar2.get()).f11493b, ((blo) crtVar2.get()).f11492a);
                }
            }).m11150a((cqt) m7725a).m11153a();
        }
        return m11153a;
    }

    /* renamed from: a */
    public final crt<InputStream> m11812a(String str) {
        crt<InputStream> m10778a;
        if (!C2794ar.f10233a.mo13599a().booleanValue()) {
            m10778a = crg.m10777a((Throwable) new Exception("Split request is disabled."));
        } else {
            blm blmVar = new blm(this);
            if (this.f11454f.remove(str) == null) {
                String valueOf = String.valueOf(str);
                m10778a = crg.m10777a((Throwable) new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
            } else {
                m10778a = crg.m10778a(blmVar);
            }
        }
        return m10778a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final C3409pi mo7338a(C3407pg c3407pg) {
        return null;
    }

    /* renamed from: a */
    public final /* synthetic */ InputStream m11816a(crt crtVar, crt crtVar2) {
        String m7319h = ((C3430qc) crtVar.get()).m7319h();
        this.f11454f.put(m7319h, new blo((C3430qc) crtVar.get(), (JSONObject) crtVar2.get()));
        return new ByteArrayInputStream(m7319h.getBytes(coc.f13431a));
    }

    /* renamed from: a */
    public final /* synthetic */ void m11818a() {
        C3654yk.m6736a(this.f11452d.mo7306a(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7337a(C3407pg c3407pg, AbstractC3415po abstractC3415po) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7336a(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        crt<InputStream> m11814a = m11814a(c3423pw, Binder.getCallingUid());
        m11815a(m11814a, abstractC3417pq);
        m11814a.mo6734a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.blh

            /* renamed from: a */
            private final bkz f11476a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11476a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11476a.m11818a();
            }
        }, this.f11450b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7335a(String str, AbstractC3417pq abstractC3417pq) {
        m11815a(m11812a(str), abstractC3417pq);
    }

    /* renamed from: b */
    public final crt<InputStream> m11811b(C3423pw c3423pw, int i) {
        cki m10777a;
        if (!C2794ar.f10233a.mo13599a().booleanValue()) {
            m10777a = crg.m10777a((Throwable) new Exception("Split request is disabled."));
        } else if (c3423pw.f17207j == null) {
            m10777a = crg.m10777a((Throwable) new Exception("Pool configuration missing from request."));
        } else if (c3423pw.f17207j.f13130c == 0 || c3423pw.f17207j.f13131d == 0) {
            m10777a = crg.m10777a((Throwable) new Exception("Caching is disabled."));
        } else {
            C3252jn m7731a = C2341q.m14731p().m7731a(this.f11449a, C3647yd.m6741a());
            cba mo13098a = this.f11453e.mo13098a(c3423pw, i);
            ckz mo11498c = mo13098a.mo11498c();
            crt<JSONObject> m11813a = m11813a(c3423pw, mo11498c, mo13098a);
            crt<C3430qc> m11817a = m11817a(m11813a, mo11498c, m7731a);
            m10777a = mo11498c.m11161a((ckz) ckw.GET_URL_AND_CACHE_KEY, m11813a, m11817a).m11158a(new Callable(this, m11817a, m11813a) { // from class: com.google.android.gms.internal.ads.blg

                /* renamed from: a */
                private final bkz f11473a;

                /* renamed from: b */
                private final crt f11474b;

                /* renamed from: c */
                private final crt f11475c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11473a = this;
                    this.f11474b = m11817a;
                    this.f11475c = m11813a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f11473a.m11816a(this.f11474b, this.f11475c);
                }
            }).m11153a();
        }
        return m10777a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: b */
    public final void mo7334b(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        cki m11153a;
        int callingUid = Binder.getCallingUid();
        C3252jn m7731a = C2341q.m14731p().m7731a(this.f11449a, C3647yd.m6741a());
        if (!C2820ax.f10489a.mo13599a().booleanValue()) {
            m11153a = crg.m10777a((Throwable) new Exception("Signal collection disabled."));
        } else {
            cba mo13098a = this.f11453e.mo13098a(c3423pw, callingUid);
            cag<JSONObject> mo11499b = mo13098a.mo11499b();
            m11153a = mo13098a.mo11498c().m11162a((ckz) ckw.GET_SIGNALS, crg.m10778a(c3423pw.f17198a)).m11150a((cqt<I, O2>) new cqt(mo11499b) { // from class: com.google.android.gms.internal.ads.blj

                /* renamed from: a */
                private final cag f11478a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11478a = mo11499b;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    return this.f11478a.m11511a(C2341q.m14744c().m6998a((Bundle) obj));
                }
            }).m11145a((ckr) ckw.JS_SIGNALS).m11150a((cqt) m7731a.m7725a("google.afma.request.getSignals", C3247ji.f16804a, C3247ji.f16805b)).m11153a();
        }
        m11815a(m11153a, abstractC3417pq);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: c */
    public final void mo7333c(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        m11815a(m11811b(c3423pw, Binder.getCallingUid()), abstractC3417pq);
    }
}
