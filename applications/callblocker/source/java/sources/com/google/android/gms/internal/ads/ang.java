package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ang.class */
public final class ang<T> {

    /* renamed from: a */
    private final bjr f10041a;

    /* renamed from: b */
    private final bjy f10042b;

    /* renamed from: c */
    private final chh f10043c;

    /* renamed from: d */
    private final ckz f10044d;

    /* renamed from: e */
    private final aif f10045e;

    /* renamed from: f */
    private final bqb<T> f10046f;

    /* renamed from: g */
    private final ass f10047g;

    /* renamed from: h */
    private final chd f10048h;

    /* renamed from: i */
    private final bkq f10049i;

    /* renamed from: j */
    private final aou f10050j;

    /* renamed from: k */
    private final Executor f10051k;

    public ang(bjr bjrVar, bjy bjyVar, chh chhVar, ckz ckzVar, aif aifVar, bqb<T> bqbVar, ass assVar, chd chdVar, bkq bkqVar, aou aouVar, Executor executor) {
        this.f10041a = bjrVar;
        this.f10042b = bjyVar;
        this.f10043c = chhVar;
        this.f10044d = ckzVar;
        this.f10045e = aifVar;
        this.f10046f = bqbVar;
        this.f10047g = assVar;
        this.f10048h = chdVar;
        this.f10049i = bkqVar;
        this.f10050j = aouVar;
        this.f10051k = executor;
    }

    /* renamed from: b */
    private final crt<chd> m12890b(crt<C3423pw> crtVar) {
        cki m11153a;
        if (this.f10048h != null) {
            m11153a = this.f10044d.m11163a((ckz) ckw.SERVER_TRANSACTION).m11156a(crg.m10778a(this.f10048h)).m11153a();
        } else {
            C2341q.m14738i().m8503a();
            m11153a = this.f10043c.f13040d.f16085s != null ? this.f10044d.m11163a((ckz) ckw.SERVER_TRANSACTION).m11156a(this.f10042b.m11840a()).m11153a() : this.f10044d.m11162a((ckz) ckw.SERVER_TRANSACTION, (crt) crtVar).m11150a((cqt<I, O2>) this.f10041a).m11153a();
        }
        return m11153a;
    }

    /* renamed from: a */
    public final crt<chd> m12897a() {
        return m12890b(this.f10050j.m12856b());
    }

    /* renamed from: a */
    public final crt<C3423pw> m12895a(ciu ciuVar) {
        cki m11153a = this.f10044d.m11162a((ckz) ckw.GET_CACHE_KEY, (crt) this.f10050j.m12856b()).m11150a((cqt<I, O2>) new cqt(this, ciuVar) { // from class: com.google.android.gms.internal.ads.anj

            /* renamed from: a */
            private final ang f10055a;

            /* renamed from: b */
            private final ciu f10056b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10055a = this;
                this.f10056b = ciuVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f10055a.m12894a(this.f10056b, (C3423pw) obj);
            }
        }).m11153a();
        crg.m10781a(m11153a, new ani(this), this.f10051k);
        return m11153a;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12894a(ciu ciuVar, C3423pw c3423pw) {
        c3423pw.f17207j = ciuVar;
        return this.f10049i.m11826a(c3423pw);
    }

    /* renamed from: a */
    public final crt<T> m12893a(crt<chd> crtVar) {
        cki m11153a;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16496cw)).booleanValue()) {
            m11153a = this.f10044d.m11162a((ckz) ckw.RENDERER, (crt) crtVar).m11150a((cqt<I, O2>) this.f10045e).m11150a((cqt) this.f10046f).m11153a();
        } else {
            m11153a = this.f10044d.m11162a((ckz) ckw.RENDERER, (crt) crtVar).m11150a((cqt<I, O2>) this.f10045e).m11150a((cqt) this.f10046f).m11152a(((Integer) dyx.m8158e().m7876a(edi.f16497cx)).intValue(), TimeUnit.SECONDS).m11153a();
        }
        return m11153a;
    }

    /* renamed from: a */
    public final crt<chd> m12892a(C3423pw c3423pw) {
        return m12890b(crg.m10778a(c3423pw));
    }

    /* renamed from: b */
    public final crt<T> m12891b() {
        return m12893a(m12897a());
    }

    /* renamed from: b */
    public final crt<T> m12889b(C3423pw c3423pw) {
        return m12893a(m12892a(c3423pw));
    }

    /* renamed from: c */
    public final ass m12888c() {
        return this.f10047g;
    }

    /* renamed from: c */
    public final crt<Void> m12887c(C3423pw c3423pw) {
        cki m11153a = this.f10044d.m11162a((ckz) ckw.NOTIFY_CACHE_HIT, (crt) this.f10049i.m11824b(c3423pw)).m11153a();
        crg.m10781a(m11153a, new anl(this), this.f10051k);
        return m11153a;
    }
}
