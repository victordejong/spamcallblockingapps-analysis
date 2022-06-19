package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/y40.class */
public final class y40<T> {

    /* renamed from: a */
    private final sv0 f9200a;

    /* renamed from: b */
    private final sl1 f9201b;

    /* renamed from: c */
    private final qp1 f9202c;

    /* renamed from: d */
    private final C1985uy f9203d;

    /* renamed from: e */
    private final p31<T> f9204e;

    /* renamed from: f */
    private final nc0 f9205f;

    /* renamed from: g */
    private final ml1 f9206g;

    /* renamed from: h */
    private final tw0 f9207h;

    /* renamed from: i */
    private final x60 f9208i;

    /* renamed from: j */
    private final Executor f9209j;

    /* renamed from: k */
    private final iw0 f9210k;

    /* renamed from: l */
    private final a01 f9211l;

    y40(sv0 sv0Var, sl1 sl1Var, qp1 qp1Var, C1985uy c1985uy, p31<T> p31Var, nc0 nc0Var, ml1 ml1Var, tw0 tw0Var, x60 x60Var, Executor executor, iw0 iw0Var, a01 a01Var) {
        this.f9200a = sv0Var;
        this.f9201b = sl1Var;
        this.f9202c = qp1Var;
        this.f9203d = c1985uy;
        this.f9204e = p31Var;
        this.f9205f = nc0Var;
        this.f9206g = ml1Var;
        this.f9207h = tw0Var;
        this.f9208i = x60Var;
        this.f9209j = executor;
        this.f9210k = iw0Var;
        this.f9211l = a01Var;
    }

    /* renamed from: a */
    public final rz1<ml1> m4808a(rz1<zzawc> rz1Var) {
        hp1 m7257c;
        ml1 ml1Var = this.f9206g;
        if (ml1Var != null) {
            qp1 qp1Var = this.f9202c;
            m7257c = bp1.m7932a(kz1.a(ml1Var), zzduy.SERVER_TRANSACTION, qp1Var);
        } else {
            C1407r.m8914j().m7438b();
            if (this.f9201b.f8499d.t != null) {
                qp1 qp1Var2 = this.f9202c;
                m7257c = bp1.m7932a(this.f9200a.m5569a(), zzduy.SERVER_TRANSACTION, qp1Var2);
            } else {
                m7257c = this.f9202c.m7121a(zzduy.SERVER_TRANSACTION, rz1Var).m7257c(t40.c(this.f9210k));
            }
        }
        return m7257c.m7251i();
    }

    /* renamed from: b */
    public final rz1<ml1> m4807b() {
        return m4808a(this.f9208i.m4963b());
    }

    /* renamed from: c */
    public final rz1<T> m4806c(rz1<ml1> rz1Var) {
        hp1 m7257c = this.f9202c.m7121a(zzduy.RENDERER, rz1Var).m7258b(new u40(this)).m7257c(this.f9204e);
        hp1 hp1Var = m7257c;
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7430i3)).booleanValue()) {
            hp1Var = m7257c.m7252h(((Integer) C1674c.m7906c().m6878b(C1842m3.f7437j3)).intValue(), TimeUnit.SECONDS);
        }
        return hp1Var.m7251i();
    }

    /* renamed from: d */
    public final nc0 m4805d() {
        return this.f9205f;
    }

    /* renamed from: e */
    public final rz1<zzawc> m4804e(zzdsy zzdsyVar) {
        wo1 m7251i = this.f9202c.m7121a(zzduy.GET_CACHE_KEY, this.f9208i.m4963b()).m7257c(new v40(this, zzdsyVar)).m7251i();
        kz1.o(m7251i, new w40(this), this.f9209j);
        return m7251i;
    }

    /* renamed from: f */
    public final rz1<Void> m4803f(zzawc zzawcVar) {
        wo1 m7251i = this.f9202c.m7121a(zzduy.NOTIFY_CACHE_HIT, this.f9207h.m5459b(zzawcVar)).m7251i();
        kz1.o(m7251i, new x40(this), this.f9209j);
        return m7251i;
    }

    /* renamed from: g */
    public final zzym m4802g(Throwable th) {
        return nm1.m6427b(th, this.f9211l);
    }

    /* renamed from: h */
    final /* synthetic */ rz1 m4801h(zzdsy zzdsyVar, zzawc zzawcVar) {
        zzawcVar.j = zzdsyVar;
        return this.f9207h.m5460a(zzawcVar);
    }

    /* renamed from: i */
    final /* synthetic */ ml1 m4800i(ml1 ml1Var) {
        this.f9203d.m5334a(ml1Var);
        return ml1Var;
    }
}
