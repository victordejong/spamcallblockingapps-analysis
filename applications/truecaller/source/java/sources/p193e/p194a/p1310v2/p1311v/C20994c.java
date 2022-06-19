package p193e.p194a.p1310v2.p1311v;

import com.truecaller.attestation.AttestationEngine;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import s1.z.c.l;
/* renamed from: e.a.v2.v.c */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/c.class */
public final class C20994c implements AbstractC19549v {

    /* renamed from: a */
    public final AttestationEngine f58983a;

    /* renamed from: b */
    public final boolean f58984b;

    /* renamed from: c */
    public final Long f58985c;

    /* renamed from: d */
    public final Integer f58986d;

    /* renamed from: e */
    public final boolean f58987e;

    public C20994c(AttestationEngine attestationEngine, boolean z, Long l, Integer num, boolean z2) {
        this.f58983a = attestationEngine;
        this.f58984b = z;
        this.f58985c = l;
        this.f58986d = num;
        this.f58987e = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
        if (r8 != null) goto L11;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1146q2.AbstractC19580x mo9106a() {
        /*
            r6 = this;
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            boolean r0 = r0.f58984b
            if (r0 == 0) goto L15
            java.lang.String r0 = "Success"
            r8 = r0
            goto L18
        L15:
            java.lang.String r0 = "Failure"
            r8 = r0
        L18:
            r0 = r7
            java.lang.String r1 = "Result"
            r2 = r8
            r0.putString(r1, r2)
            r0 = r6
            com.truecaller.attestation.AttestationEngine r0 = r0.f58983a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L34
            r0 = r8
            java.lang.String r0 = r0.name()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L34
            goto L37
        L34:
            java.lang.String r0 = "None"
            r8 = r0
        L37:
            r0 = r7
            java.lang.String r1 = "Engine"
            r2 = r8
            r0.putString(r1, r2)
            r0 = r6
            java.lang.Long r0 = r0.f58985c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L66
            r0 = r8
            long r0 = r0.longValue()
            r9 = r0
            r0 = r7
            java.lang.String r1 = "Latency"
            e.a.v2.v.d r2 = p193e.p194a.p1310v2.p1311v.C20995d.f58988a
            r3 = r9
            java.lang.String r2 = r2.m10435a(r3)
            r0.putString(r1, r2)
            r0 = r7
            java.lang.String r1 = "value"
            r2 = r6
            java.lang.Long r2 = r2.f58985c
            long r2 = r2.longValue()
            r0.putLong(r1, r2)
        L66:
            r0 = r6
            boolean r0 = r0.f58984b
            if (r0 != 0) goto L9b
            r0 = r6
            java.lang.Integer r0 = r0.f58986d
            r8 = r0
            r0 = r6
            boolean r0 = r0.f58987e
            if (r0 == 0) goto L7f
            java.lang.String r0 = "ConnectionError"
            r8 = r0
            goto L90
        L7f:
            r0 = r8
            if (r0 == 0) goto L8e
            r0 = r8
            int r0 = r0.intValue()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
            goto L90
        L8e:
            r0 = 0
            r8 = r0
        L90:
            r0 = r8
            if (r0 == 0) goto L9b
            r0 = r7
            java.lang.String r1 = "FailureReason"
            r2 = r8
            r0.putString(r1, r2)
        L9b:
            e.a.q2.x$b r0 = new e.a.q2.x$b
            r1 = r0
            java.lang.String r2 = "AttestationNonceRequested"
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.p1311v.C20994c.mo9106a():e.a.q2.x");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20994c)) {
                return false;
            }
            C20994c c20994c = (C20994c) obj;
            return l.a(this.f58983a, c20994c.f58983a) && this.f58984b == c20994c.f58984b && l.a(this.f58985c, c20994c.f58985c) && l.a(this.f58986d, c20994c.f58986d) && this.f58987e == c20994c.f58987e;
        }
        return true;
    }

    public int hashCode() {
        AttestationEngine attestationEngine = this.f58983a;
        int i = 0;
        int hashCode = attestationEngine != null ? attestationEngine.hashCode() : 0;
        boolean z = this.f58984b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Long l = this.f58985c;
        int hashCode2 = l != null ? l.hashCode() : 0;
        Integer num = this.f58986d;
        if (num != null) {
            i = num.hashCode();
        }
        boolean z2 = this.f58987e;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((hashCode * 31) + i3) * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AttestationNonceRequestedEvent(engine=");
        m8728C.append(this.f58983a);
        m8728C.append(", success=");
        m8728C.append(this.f58984b);
        m8728C.append(", latency=");
        m8728C.append(this.f58985c);
        m8728C.append(", errorCode=");
        m8728C.append(this.f58986d);
        m8728C.append(", connectionError=");
        return C22128a.m8590o(m8728C, this.f58987e, ")");
    }
}
