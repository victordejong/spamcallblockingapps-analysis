package p193e.p194a.p1310v2.p1311v;

import com.truecaller.attestation.AttestationEngine;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import s1.z.c.l;
/* renamed from: e.a.v2.v.g */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/g.class */
public final class C20998g implements AbstractC19549v {

    /* renamed from: a */
    public final AttestationEngine f58997a;

    /* renamed from: b */
    public final boolean f58998b;

    /* renamed from: c */
    public final Long f58999c;

    /* renamed from: d */
    public final Long f59000d;

    /* renamed from: e */
    public final boolean f59001e;

    /* renamed from: f */
    public final Integer f59002f;

    /* renamed from: g */
    public final boolean f59003g;

    public C20998g(AttestationEngine attestationEngine, boolean z, Long l, Long l2, boolean z2, Integer num, boolean z3) {
        this.f58997a = attestationEngine;
        this.f58998b = z;
        this.f58999c = l;
        this.f59000d = l2;
        this.f59001e = z2;
        this.f59002f = num;
        this.f59003g = z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r9 != null) goto L11;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1146q2.AbstractC19580x mo9106a() {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.p1311v.C20998g.mo9106a():e.a.q2.x");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20998g)) {
                return false;
            }
            C20998g c20998g = (C20998g) obj;
            return l.a(this.f58997a, c20998g.f58997a) && this.f58998b == c20998g.f58998b && l.a(this.f58999c, c20998g.f58999c) && l.a(this.f59000d, c20998g.f59000d) && this.f59001e == c20998g.f59001e && l.a(this.f59002f, c20998g.f59002f) && this.f59003g == c20998g.f59003g;
        }
        return true;
    }

    public int hashCode() {
        AttestationEngine attestationEngine = this.f58997a;
        int i = 0;
        int hashCode = attestationEngine != null ? attestationEngine.hashCode() : 0;
        boolean z = this.f58998b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Long l = this.f58999c;
        int hashCode2 = l != null ? l.hashCode() : 0;
        Long l2 = this.f59000d;
        int hashCode3 = l2 != null ? l2.hashCode() : 0;
        boolean z2 = this.f59001e;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        Integer num = this.f59002f;
        if (num != null) {
            i = num.hashCode();
        }
        boolean z3 = this.f59003g;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + i3) * 31) + hashCode2) * 31) + hashCode3) * 31) + i4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AttestationVerifiedEvent(engine=");
        m8728C.append(this.f58997a);
        m8728C.append(", success=");
        m8728C.append(this.f58998b);
        m8728C.append(", latency=");
        m8728C.append(this.f58999c);
        m8728C.append(", fullLatency=");
        m8728C.append(this.f59000d);
        m8728C.append(", verification=");
        m8728C.append(this.f59001e);
        m8728C.append(", errorCode=");
        m8728C.append(this.f59002f);
        m8728C.append(", connectionError=");
        return C22128a.m8590o(m8728C, this.f59003g, ")");
    }
}
