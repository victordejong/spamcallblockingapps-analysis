package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bu1.class */
public final class bu1 extends qc0 {

    /* renamed from: d */
    private final Context f20965d;

    /* renamed from: e */
    private final Executor f20966e;

    /* renamed from: f */
    private final id0 f20967f;

    /* renamed from: g */
    private final lt0 f20968g;

    /* renamed from: h */
    private final ArrayDeque<yt1> f20969h;

    /* renamed from: i */
    private final jd0 f20970i;

    /* renamed from: j */
    private final gu1 f20971j;

    /* JADX WARN: Multi-variable type inference failed */
    public bu1(Context context, Context context2, Executor executor, jd0 jd0Var, lt0 lt0Var, id0 id0Var, ArrayDeque<yt1> arrayDeque, gu1 gu1Var) {
        C6679kw.m13770a(context);
        this.f20965d = context;
        this.f20966e = context2;
        this.f20970i = executor;
        this.f20967f = lt0Var;
        this.f20968g = jd0Var;
        this.f20969h = id0Var;
        this.f20971j = arrayDeque;
    }

    /* renamed from: J6 */
    private static r03<JSONObject> m16200J6(zzcbj zzcbjVar, yn2 yn2Var, pb2 pb2Var) {
        uz2 uz2Var = new uz2(pb2Var) { // from class: com.google.android.gms.internal.ads.pt1

            /* renamed from: a */
            private final pb2 f28134a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28134a = pb2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f28134a.mo9894a().m16652a(C5667s.m18160d().m18089S((Bundle) obj));
            }
        };
        return yn2Var.m11366e(zzfem.GMS_SIGNALS, k03.m14003a(zzcbjVar.f33826d)).m11839c(uz2Var).m11840b(qt1.f28627a).m11833i();
    }

    /* renamed from: K6 */
    private static r03<ad0> m16199K6(r03<JSONObject> r03Var, yn2 yn2Var, r60 r60Var) {
        return yn2Var.m11366e(zzfem.BUILD_URL, r03Var).m11839c(r60Var.m11677a("AFMA_getAdDictionary", o60.f27442b, rt1.f29221a)).m11833i();
    }

    /* renamed from: L6 */
    private final void m16198L6(r03<InputStream> r03Var, vc0 vc0Var) {
        k03.m13988p(k03.m13995i(r03Var, new uz2(this) { // from class: com.google.android.gms.internal.ads.vt1

            /* renamed from: a */
            private final bu1 f31345a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31345a = this;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return k03.m14003a(rk2.m11432a((InputStream) obj));
            }
        }, qi0.f28495a), new xt1(this, vc0Var), qi0.f28500f);
    }

    /* renamed from: M6 */
    private final void m16197M6(yt1 yt1Var) {
        synchronized (this) {
            m16193n();
            this.f20969h.addLast(yt1Var);
        }
    }

    /* renamed from: N6 */
    private final yt1 m16196N6(String str) {
        yt1 next;
        synchronized (this) {
            Iterator<yt1> it = this.f20969h.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.f32646c.equals(str));
            it.remove();
            return next;
        }
    }

    /* renamed from: O6 */
    private final yt1 m16195O6(String str) {
        yt1 next;
        synchronized (this) {
            Iterator<yt1> it = this.f20969h.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.f32647d.equals(str));
            it.remove();
            return next;
        }
    }

    /* renamed from: n */
    private final void m16193n() {
        synchronized (this) {
            int intValue = C6458ey.f22613c.m12799e().intValue();
            while (this.f20969h.size() >= intValue) {
                this.f20969h.removeFirst();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: E1 */
    public final void mo11614E1(String str, vc0 vc0Var) {
        m16198L6(m16203G6(str), vc0Var);
    }

    /* renamed from: E6 */
    public final r03<InputStream> m16205E6(zzcbj zzcbjVar, int i) {
        yt1 yt1Var;
        yt1 yt1Var2;
        r60 m14748a = C5667s.m18147q().m14748a(this.f20965d, zzcgz.m8066k0());
        pb2 mo10965a = this.f20968g.mo10965a(zzcbjVar, i);
        g60 m11677a = m14748a.m11677a("google.afma.response.normalize", au1.f20124a, o60.f27443c);
        iu1 iu1Var = new iu1(zzcbjVar.f33832j);
        fu1 fu1Var = new fu1(this.f20965d, zzcbjVar.f33827e.f33854d, this.f20970i, i, null);
        yn2 mo9892c = mo10965a.mo9892c();
        if (!C6458ey.f22611a.m12799e().booleanValue()) {
            String str = zzcbjVar.f33835m;
            yt1Var = null;
            if (str != null) {
                yt1Var = null;
                if (!str.isEmpty()) {
                    C5722o1.m17990k("Request contained a PoolKey but split request is disabled.");
                    yt1Var = null;
                }
            }
        } else {
            if (C6458ey.f22614d.m12799e().booleanValue()) {
                yt1Var2 = m16196N6(zzcbjVar.f33833k);
            } else {
                yt1Var2 = null;
                if (!TextUtils.isEmpty(zzcbjVar.f33835m)) {
                    yt1Var2 = m16195O6(zzcbjVar.f33835m);
                }
            }
            yt1Var = yt1Var2;
            if (yt1Var2 == null) {
                C5722o1.m17990k("Request contained a PoolKey but no matching parameters were found.");
                yt1Var = yt1Var2;
            }
        }
        if (yt1Var != null) {
            en2 m11833i = mo9892c.m11366e(zzfem.HTTP, k03.m14003a(new hu1(yt1Var.f32645b, yt1Var.f32644a))).m11840b(iu1Var).m11840b(fu1Var).m11833i();
            r03<?> m14003a = k03.m14003a(yt1Var);
            return mo9892c.m11365f(zzfem.PRE_PROCESS, m11833i, m14003a).m14585a(new Callable(m11833i, m14003a) { // from class: com.google.android.gms.internal.ads.ot1

                /* renamed from: a */
                private final r03 f27708a;

                /* renamed from: b */
                private final r03 f27709b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27708a = m11833i;
                    this.f27709b = m14003a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    r03 r03Var = this.f27708a;
                    r03 r03Var2 = this.f27709b;
                    return new au1((eu1) r03Var.get(), ((yt1) r03Var2.get()).f32645b, ((yt1) r03Var2.get()).f32644a);
                }
            }).m11839c(m11677a).m11833i();
        }
        r03<JSONObject> m16200J6 = m16200J6(zzcbjVar, mo9892c, mo10965a);
        r03<ad0> m16199K6 = m16199K6(m16200J6, mo9892c, m14748a);
        en2 m11833i2 = mo9892c.m11365f(zzfem.HTTP, m16199K6, m16200J6).m14585a(new Callable(m16200J6, m16199K6) { // from class: com.google.android.gms.internal.ads.mt1

            /* renamed from: a */
            private final r03 f26865a;

            /* renamed from: b */
            private final r03 f26866b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26865a = m16200J6;
                this.f26866b = m16199K6;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new hu1((JSONObject) this.f26865a.get(), (ad0) this.f26866b.get());
            }
        }).m11840b(iu1Var).m11840b(fu1Var).m11833i();
        return mo9892c.m11365f(zzfem.PRE_PROCESS, m16200J6, m16199K6, m11833i2).m14585a(new Callable(m11833i2, m16200J6, m16199K6) { // from class: com.google.android.gms.internal.ads.nt1

            /* renamed from: a */
            private final r03 f27288a;

            /* renamed from: b */
            private final r03 f27289b;

            /* renamed from: c */
            private final r03 f27290c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27288a = m11833i2;
                this.f27289b = m16200J6;
                this.f27290c = m16199K6;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new au1((eu1) this.f27288a.get(), (JSONObject) this.f27289b.get(), (ad0) this.f27290c.get());
            }
        }).m11839c(m11677a).m11833i();
    }

    /* renamed from: F6 */
    public final r03<InputStream> m16204F6(zzcbj zzcbjVar, int i) {
        if (!C6458ey.f22611a.m12799e().booleanValue()) {
            return k03.m14001c(new Exception("Split request is disabled."));
        }
        zzfcj zzfcjVar = zzcbjVar.f33834l;
        if (zzfcjVar == null) {
            return k03.m14001c(new Exception("Pool configuration missing from request."));
        }
        if (zzfcjVar.f33945h == 0 || zzfcjVar.f33946i == 0) {
            return k03.m14001c(new Exception("Caching is disabled."));
        }
        r60 m14748a = C5667s.m18147q().m14748a(this.f20965d, zzcgz.m8066k0());
        pb2 mo10965a = this.f20968g.mo10965a(zzcbjVar, i);
        yn2 mo9892c = mo10965a.mo9892c();
        r03<JSONObject> m16200J6 = m16200J6(zzcbjVar, mo9892c, mo10965a);
        r03<ad0> m16199K6 = m16199K6(m16200J6, mo9892c, m14748a);
        return mo9892c.m11365f(zzfem.GET_URL_AND_CACHE_KEY, m16200J6, m16199K6).m14585a(new Callable(this, m16199K6, m16200J6, zzcbjVar) { // from class: com.google.android.gms.internal.ads.tt1

            /* renamed from: a */
            private final bu1 f30349a;

            /* renamed from: b */
            private final r03 f30350b;

            /* renamed from: c */
            private final r03 f30351c;

            /* renamed from: d */
            private final zzcbj f30352d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30349a = this;
                this.f30350b = m16199K6;
                this.f30351c = m16200J6;
                this.f30352d = zzcbjVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30349a.m16201I6(this.f30350b, this.f30351c, this.f30352d);
            }
        }).m11833i();
    }

    /* renamed from: G6 */
    public final r03<InputStream> m16203G6(String str) {
        if (!C6458ey.f22611a.m12799e().booleanValue()) {
            return k03.m14001c(new Exception("Split request is disabled."));
        }
        wt1 wt1Var = new wt1(this);
        if ((C6458ey.f22614d.m12799e().booleanValue() ? m16196N6(str) : m16195O6(str)) != null) {
            return k03.m14003a(wt1Var);
        }
        String valueOf = String.valueOf(str);
        return k03.m14001c(new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    /* renamed from: H6 */
    public final r03<InputStream> m16202H6(zzcbj zzcbjVar, int i) {
        r60 m14748a = C5667s.m18147q().m14748a(this.f20965d, zzcgz.m8066k0());
        if (!C6644jy.f25028a.m12799e().booleanValue()) {
            return k03.m14001c(new Exception("Signal collection disabled."));
        }
        pb2 mo10965a = this.f20968g.mo10965a(zzcbjVar, i);
        ab2<JSONObject> mo9893b = mo10965a.mo9893b();
        return mo10965a.mo9892c().m11366e(zzfem.GET_SIGNALS, k03.m14003a(zzcbjVar.f33826d)).m11839c(new uz2(mo9893b) { // from class: com.google.android.gms.internal.ads.ut1

            /* renamed from: a */
            private final ab2 f30961a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30961a = mo9893b;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f30961a.m16652a(C5667s.m18160d().m18089S((Bundle) obj));
            }
        }).m11832j(zzfem.JS_SIGNALS).m11839c(m14748a.m11677a("google.afma.request.getSignals", o60.f27442b, o60.f27443c)).m11833i();
    }

    /* renamed from: I6 */
    public final /* synthetic */ InputStream m16201I6(r03 r03Var, r03 r03Var2, zzcbj zzcbjVar) {
        String m16638i = ((ad0) r03Var.get()).m16638i();
        m16197M6(new yt1((ad0) r03Var.get(), (JSONObject) r03Var2.get(), zzcbjVar.f33833k, m16638i));
        return new ByteArrayInputStream(m16638i.getBytes(lu2.f26280c));
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: X0 */
    public final void mo11613X0(zzcbj zzcbjVar, vc0 vc0Var) {
        m16198L6(m16202H6(zzcbjVar, Binder.getCallingUid()), vc0Var);
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: Z2 */
    public final void mo11612Z2(zzcbj zzcbjVar, vc0 vc0Var) {
        m16198L6(m16204F6(zzcbjVar, Binder.getCallingUid()), vc0Var);
    }

    /* renamed from: h */
    public final /* synthetic */ void m16194h() {
        ti0.m10655a(this.f20967f.mo14449a(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: v1 */
    public final void mo11611v1(zzcbj zzcbjVar, vc0 vc0Var) {
        r03<InputStream> m16205E6 = m16205E6(zzcbjVar, Binder.getCallingUid());
        m16198L6(m16205E6, vc0Var);
        m16205E6.mo10015d(new Runnable(this) { // from class: com.google.android.gms.internal.ads.st1

            /* renamed from: d */
            private final bu1 f29658d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29658d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29658d.m16194h();
            }
        }, this.f20966e);
    }
}
