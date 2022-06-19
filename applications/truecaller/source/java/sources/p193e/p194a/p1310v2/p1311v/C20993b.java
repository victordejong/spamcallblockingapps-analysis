package p193e.p194a.p1310v2.p1311v;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.attestation.AttestationEngine;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.v2.v.b */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/b.class */
public final class C20993b implements AbstractC20992a {

    /* renamed from: a */
    public Long f58979a;

    /* renamed from: b */
    public Long f58980b;

    /* renamed from: c */
    public final AbstractC19462a f58981c;

    /* renamed from: d */
    public final AbstractC19222c f58982d;

    @Inject
    public C20993b(AbstractC19462a abstractC19462a, AbstractC19222c abstractC19222c) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19222c, "clock");
        this.f58981c = abstractC19462a;
        this.f58982d = abstractC19222c;
    }

    /* renamed from: a */
    public void m10438a(AttestationEngine attestationEngine, boolean z, boolean z2, Integer num) {
        l.e(attestationEngine, "engine");
        AbstractC19462a abstractC19462a = this.f58981c;
        Long l = this.f58980b;
        abstractC19462a.mo13274b(new C20996e(attestationEngine, z, l != null ? Long.valueOf(m10436c(l.longValue())) : null, z2, num));
        this.f58980b = Long.valueOf(this.f58982d.mo13821a());
    }

    /* renamed from: b */
    public void m10437b(AttestationEngine attestationEngine, boolean z, boolean z2) {
        Long valueOf = Long.valueOf(this.f58982d.mo13821a());
        this.f58979a = valueOf;
        this.f58980b = valueOf;
        this.f58981c.mo13274b(new C20997f(attestationEngine, z, z2));
    }

    /* renamed from: c */
    public final long m10436c(long j) {
        return this.f58982d.mo13821a() - j;
    }
}
