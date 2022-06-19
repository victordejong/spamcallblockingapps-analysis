package p193e.p194a.p195a.p244k.p245a.p249h2;

import com.truecaller.data.entity.messaging.Participant;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.h2.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/h2/a.class */
public final class C6568a {

    /* renamed from: a */
    public final String f21662a;

    /* renamed from: b */
    public final long f21663b;

    /* renamed from: c */
    public final String f21664c;

    /* renamed from: d */
    public final Participant f21665d;

    public C6568a(String str, long j, String str2, Participant participant) {
        l.e(str, "rawMessageId");
        l.e(participant, "participant");
        this.f21662a = str;
        this.f21663b = j;
        this.f21664c = str2;
        this.f21665d = participant;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6568a)) {
                return false;
            }
            C6568a c6568a = (C6568a) obj;
            return l.a(this.f21662a, c6568a.f21662a) && this.f21663b == c6568a.f21663b && l.a(this.f21664c, c6568a.f21664c) && l.a(this.f21665d, c6568a.f21665d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f21662a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f21663b);
        String str2 = this.f21664c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Participant participant = this.f21665d;
        if (participant != null) {
            i = participant.f11590w;
        }
        return (((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImReportMessage(rawMessageId=");
        m8728C.append(this.f21662a);
        m8728C.append(", sequenceNumber=");
        m8728C.append(this.f21663b);
        m8728C.append(", groupId=");
        m8728C.append(this.f21664c);
        m8728C.append(", participant=");
        m8728C.append(this.f21665d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
