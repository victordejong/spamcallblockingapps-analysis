package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aoz;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cep.class */
final class cep<R extends aoz<? extends amh>> {

    /* renamed from: a */
    private final cir f12834a;

    /* renamed from: b */
    private final ceu f12835b;

    /* renamed from: c */
    private final cex<R> f12836c;

    /* renamed from: d */
    private final Executor f12837d;

    /* renamed from: e */
    private cet f12838e;

    public cep(cir cirVar, ceu ceuVar, cex<R> cexVar, Executor executor) {
        this.f12834a = cirVar;
        this.f12835b = ceuVar;
        this.f12836c = cexVar;
        this.f12837d = executor;
    }

    @Deprecated
    /* renamed from: b */
    public final cjb m11432b() {
        chh mo12849a = this.f12836c.mo11387a(this.f12835b).mo12850b().mo12849a();
        return this.f12834a.mo11230a(mo12849a.f13040d, mo12849a.f13042f, mo12849a.f13046j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.google.android.gms.internal.ads.crt] */
    /* renamed from: a */
    public final crt<cet> m11435a() {
        crb m10790a;
        crt<cet> m10783a;
        if (this.f12838e != null) {
            m10783a = crg.m10778a(this.f12838e);
        } else {
            if (!C2794ar.f10233a.mo13599a().booleanValue()) {
                this.f12838e = new cet(null, m11432b(), null);
                m10790a = crg.m10778a(this.f12838e);
            } else {
                m10790a = crb.m10789c((crt) this.f12836c.mo11387a(this.f12835b).mo12853a(new cef(this.f12834a.mo11233a().f13133f)).mo12850b().mo12051c().m12895a(this.f12834a.mo11233a())).m10792a(new ceq(this), this.f12837d).m10790a(zzclc.class, new cer(this), this.f12837d);
            }
            m10783a = crg.m10783a(m10790a, ceo.f12833a, this.f12837d);
        }
        return m10783a;
    }
}
