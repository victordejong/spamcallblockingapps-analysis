package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b01.class */
public final class b01<T> {

    /* renamed from: a */
    private final es1 f20221a;

    /* renamed from: b */
    private final xj2 f20222b;

    /* renamed from: c */
    private final yn2 f20223c;

    /* renamed from: d */
    private final nt0 f20224d;

    /* renamed from: e */
    private final i02<T> f20225e;

    /* renamed from: f */
    private final h81 f20226f;

    /* renamed from: g */
    private rj2 f20227g;

    /* renamed from: h */
    private final jt1 f20228h;

    /* renamed from: i */
    private final d21 f20229i;

    /* renamed from: j */
    private final Executor f20230j;

    /* renamed from: k */
    private final xs1 f20231k;

    /* renamed from: l */
    private final uw1 f20232l;

    public b01(es1 es1Var, xj2 xj2Var, yn2 yn2Var, nt0 nt0Var, i02<T> i02Var, h81 h81Var, rj2 rj2Var, jt1 jt1Var, d21 d21Var, Executor executor, xs1 xs1Var, uw1 uw1Var) {
        this.f20221a = es1Var;
        this.f20222b = xj2Var;
        this.f20223c = yn2Var;
        this.f20224d = nt0Var;
        this.f20225e = i02Var;
        this.f20226f = h81Var;
        this.f20227g = rj2Var;
        this.f20228h = jt1Var;
        this.f20229i = d21Var;
        this.f20230j = executor;
        this.f20231k = xs1Var;
        this.f20232l = uw1Var;
    }

    /* renamed from: b */
    public final r03<rj2> m16461b(r03<zzcbj> r03Var) {
        rj2 rj2Var = this.f20227g;
        if (rj2Var == null) {
            C5667s.m18154j().m8786e();
            return this.f20223c.m11366e(zzfem.SERVER_TRANSACTION, r03Var).m11839c(wz0.m9413c(this.f20231k)).m11833i();
        }
        yn2 yn2Var = this.f20223c;
        return kn2.m13844a(k03.m14003a(rj2Var), zzfem.SERVER_TRANSACTION, yn2Var).m11833i();
    }

    /* renamed from: c */
    public final r03<rj2> m16460c() {
        zzbdg zzbdgVar = this.f20222b.f32077d;
        if (zzbdgVar.f33658A == null && zzbdgVar.f33677v == null) {
            return m16461b(this.f20229i.m15960b());
        }
        yn2 yn2Var = this.f20223c;
        return kn2.m13844a(this.f20221a.m15399c(), zzfem.SERVER_TRANSACTION, yn2Var).m11833i();
    }

    /* renamed from: d */
    public final r03<T> m16459d(r03<rj2> r03Var) {
        qn2 m11839c = this.f20223c.m11366e(zzfem.RENDERER, r03Var).m11840b(new cn2(this) { // from class: com.google.android.gms.internal.ads.xz0

            /* renamed from: a */
            private final b01 f32360a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32360a = this;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                rj2 rj2Var = (rj2) obj;
                this.f32360a.m16452k(rj2Var);
                return rj2Var;
            }
        }).m11839c(this.f20225e);
        qn2 qn2Var = m11839c;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25551O3)).booleanValue()) {
            qn2Var = m11839c.m11834h(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25559P3)).intValue(), TimeUnit.SECONDS);
        }
        return qn2Var.m11833i();
    }

    /* renamed from: e */
    public final h81 m16458e() {
        return this.f20226f;
    }

    /* renamed from: f */
    public final r03<zzcbj> m16457f(zzfcj zzfcjVar) {
        en2 m11833i = this.f20223c.m11366e(zzfem.GET_CACHE_KEY, this.f20229i.m15960b()).m11839c(new uz2(this, zzfcjVar) { // from class: com.google.android.gms.internal.ads.yz0

            /* renamed from: a */
            private final b01 f32724a;

            /* renamed from: b */
            private final zzfcj f32725b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32724a = this;
                this.f32725b = zzfcjVar;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f32724a.m16453j(this.f32725b, (zzcbj) obj);
            }
        }).m11833i();
        k03.m13988p(m11833i, new zz0(this), this.f20230j);
        return m11833i;
    }

    /* renamed from: g */
    public final r03<Void> m16456g(zzcbj zzcbjVar) {
        en2 m11833i = this.f20223c.m11366e(zzfem.NOTIFY_CACHE_HIT, this.f20228h.m14047b(zzcbjVar)).m11833i();
        k03.m13988p(m11833i, new a01(this), this.f20230j);
        return m11833i;
    }

    /* renamed from: h */
    public final zzbcz m16455h(Throwable th) {
        return sk2.m10999b(th, this.f20232l);
    }

    /* renamed from: i */
    public final void m16454i(rj2 rj2Var) {
        this.f20227g = rj2Var;
    }

    /* renamed from: j */
    public final /* synthetic */ r03 m16453j(zzfcj zzfcjVar, zzcbj zzcbjVar) {
        zzcbjVar.f33834l = zzfcjVar;
        return this.f20228h.m14048a(zzcbjVar);
    }

    /* renamed from: k */
    public final /* synthetic */ rj2 m16452k(rj2 rj2Var) {
        this.f20224d.m12821a(rj2Var);
        return rj2Var;
    }
}
