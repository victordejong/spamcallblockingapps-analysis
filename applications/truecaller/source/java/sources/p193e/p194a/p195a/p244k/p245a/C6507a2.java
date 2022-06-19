package p193e.p194a.p195a.p244k.p245a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.models.UserTypingKind;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.p1;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a2 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a2.class */
public final class C6507a2 {

    /* renamed from: a */
    public final String f21545a;

    /* renamed from: b */
    public final UserTypingKind f21546b;

    /* renamed from: c */
    public final p1 f21547c;

    public C6507a2(String str, UserTypingKind userTypingKind, p1 p1Var) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(userTypingKind, "kind");
        l.e(p1Var, "expiryJob");
        this.f21545a = str;
        this.f21546b = userTypingKind;
        this.f21547c = p1Var;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6507a2)) {
                return false;
            }
            C6507a2 c6507a2 = (C6507a2) obj;
            return l.a(this.f21545a, c6507a2.f21545a) && l.a(this.f21546b, c6507a2.f21546b) && l.a(this.f21547c, c6507a2.f21547c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f21545a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        UserTypingKind userTypingKind = this.f21546b;
        int hashCode2 = userTypingKind != null ? userTypingKind.hashCode() : 0;
        p1 p1Var = this.f21547c;
        if (p1Var != null) {
            i = p1Var.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TypingParticipant(name=");
        m8728C.append(this.f21545a);
        m8728C.append(", kind=");
        m8728C.append(this.f21546b);
        m8728C.append(", expiryJob=");
        m8728C.append(this.f21547c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
