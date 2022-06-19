package p193e.p194a.p1310v2.p1311v;

import com.truecaller.attestation.AttestationEngine;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import s1.z.c.l;
/* renamed from: e.a.v2.v.e */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/e.class */
public final class C20996e implements AbstractC19549v {

    /* renamed from: a */
    public final AttestationEngine f58989a;

    /* renamed from: b */
    public final boolean f58990b;

    /* renamed from: c */
    public final Long f58991c;

    /* renamed from: d */
    public final boolean f58992d;

    /* renamed from: e */
    public final Integer f58993e;

    public C20996e(AttestationEngine attestationEngine, boolean z, Long l, boolean z2, Integer num) {
        this.f58989a = attestationEngine;
        this.f58990b = z;
        this.f58991c = l;
        this.f58992d = z2;
        this.f58993e = num;
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
            boolean r0 = r0.f58990b
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
            com.truecaller.attestation.AttestationEngine r0 = r0.f58989a
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
            r0 = r7
            java.lang.String r1 = "Verification"
            r2 = r6
            boolean r2 = r2.f58992d
            r0.putBoolean(r1, r2)
            r0 = r6
            java.lang.Long r0 = r0.f58991c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L70
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
            java.lang.Long r2 = r2.f58991c
            long r2 = r2.longValue()
            r0.putLong(r1, r2)
        L70:
            r0 = r6
            boolean r0 = r0.f58990b
            if (r0 != 0) goto L98
            r0 = r6
            java.lang.Integer r0 = r0.f58993e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L8b
            r0 = r8
            int r0 = r0.intValue()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
            goto L8d
        L8b:
            r0 = 0
            r8 = r0
        L8d:
            r0 = r8
            if (r0 == 0) goto L98
            r0 = r7
            java.lang.String r1 = "FailureReason"
            r2 = r8
            r0.putString(r1, r2)
        L98:
            e.a.q2.x$b r0 = new e.a.q2.x$b
            r1 = r0
            java.lang.String r2 = "AttestationPerformed"
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.p1311v.C20996e.mo9106a():e.a.q2.x");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20996e)) {
                return false;
            }
            C20996e c20996e = (C20996e) obj;
            return l.a(this.f58989a, c20996e.f58989a) && this.f58990b == c20996e.f58990b && l.a(this.f58991c, c20996e.f58991c) && this.f58992d == c20996e.f58992d && l.a(this.f58993e, c20996e.f58993e);
        }
        return true;
    }

    public int hashCode() {
        AttestationEngine attestationEngine = this.f58989a;
        int i = 0;
        int hashCode = attestationEngine != null ? attestationEngine.hashCode() : 0;
        boolean z = this.f58990b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Long l = this.f58991c;
        int hashCode2 = l != null ? l.hashCode() : 0;
        boolean z2 = this.f58992d;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        Integer num = this.f58993e;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((hashCode * 31) + i3) * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AttestationPerformedEvent(engine=");
        m8728C.append(this.f58989a);
        m8728C.append(", success=");
        m8728C.append(this.f58990b);
        m8728C.append(", latency=");
        m8728C.append(this.f58991c);
        m8728C.append(", verification=");
        m8728C.append(this.f58992d);
        m8728C.append(", errorCode=");
        return C22128a.m8689L2(m8728C, this.f58993e, ")");
    }
}
