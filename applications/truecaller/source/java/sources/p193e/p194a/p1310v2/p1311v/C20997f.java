package p193e.p194a.p1310v2.p1311v;

import com.truecaller.attestation.AttestationEngine;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import s1.z.c.l;
/* renamed from: e.a.v2.v.f */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/f.class */
public final class C20997f implements AbstractC19549v {

    /* renamed from: a */
    public final AttestationEngine f58994a;

    /* renamed from: b */
    public final boolean f58995b;

    /* renamed from: c */
    public final boolean f58996c;

    public C20997f(AttestationEngine attestationEngine, boolean z, boolean z2) {
        this.f58994a = attestationEngine;
        this.f58995b = z;
        this.f58996c = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
        if (r7 != null) goto L11;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1146q2.AbstractC19580x mo9106a() {
        /*
            r5 = this;
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            boolean r0 = r0.f58995b
            if (r0 == 0) goto L15
            java.lang.String r0 = "Success"
            r7 = r0
            goto L18
        L15:
            java.lang.String r0 = "Failure"
            r7 = r0
        L18:
            r0 = r6
            java.lang.String r1 = "Result"
            r2 = r7
            r0.putString(r1, r2)
            r0 = r5
            com.truecaller.attestation.AttestationEngine r0 = r0.f58994a
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L34
            r0 = r7
            java.lang.String r0 = r0.name()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L34
            goto L37
        L34:
            java.lang.String r0 = "None"
            r7 = r0
        L37:
            r0 = r6
            java.lang.String r1 = "Engine"
            r2 = r7
            r0.putString(r1, r2)
            r0 = r6
            java.lang.String r1 = "Verification"
            r2 = r5
            boolean r2 = r2.f58996c
            r0.putBoolean(r1, r2)
            e.a.q2.x$b r0 = new e.a.q2.x$b
            r1 = r0
            java.lang.String r2 = "AttestationTriggered"
            r3 = r6
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1310v2.p1311v.C20997f.mo9106a():e.a.q2.x");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20997f)) {
                return false;
            }
            C20997f c20997f = (C20997f) obj;
            return l.a(this.f58994a, c20997f.f58994a) && this.f58995b == c20997f.f58995b && this.f58996c == c20997f.f58996c;
        }
        return true;
    }

    public int hashCode() {
        AttestationEngine attestationEngine = this.f58994a;
        int hashCode = attestationEngine != null ? attestationEngine.hashCode() : 0;
        boolean z = this.f58995b;
        int i = 1;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        boolean z2 = this.f58996c;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AttestationTriggeredEvent(engine=");
        m8728C.append(this.f58994a);
        m8728C.append(", success=");
        m8728C.append(this.f58995b);
        m8728C.append(", verification=");
        return C22128a.m8590o(m8728C, this.f58996c, ")");
    }
}
