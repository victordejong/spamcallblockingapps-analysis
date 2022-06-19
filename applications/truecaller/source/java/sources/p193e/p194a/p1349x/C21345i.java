package p193e.p194a.p1349x;

import com.truecaller.ghost_call.ScheduleDuration;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.x.i */
/* loaded from: classes9-dex2jar.jar:e/a/x/i.class */
public final class C21345i {

    /* renamed from: a */
    public final String f59758a;

    /* renamed from: b */
    public final String f59759b;

    /* renamed from: c */
    public final String f59760c;

    /* renamed from: d */
    public final ScheduleDuration f59761d;

    /* renamed from: e */
    public final long f59762e;

    /* renamed from: f */
    public final Integer f59763f;

    public C21345i(String str, String str2, String str3, ScheduleDuration scheduleDuration, long j, Integer num) {
        l.e(str, "phoneNumber");
        l.e(str2, "profileName");
        l.e(scheduleDuration, "delayDuration");
        this.f59758a = str;
        this.f59759b = str2;
        this.f59760c = str3;
        this.f59761d = scheduleDuration;
        this.f59762e = j;
        this.f59763f = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21345i)) {
                return false;
            }
            C21345i c21345i = (C21345i) obj;
            return l.a(this.f59758a, c21345i.f59758a) && l.a(this.f59759b, c21345i.f59759b) && l.a(this.f59760c, c21345i.f59760c) && l.a(this.f59761d, c21345i.f59761d) && this.f59762e == c21345i.f59762e && l.a(this.f59763f, c21345i.f59763f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59758a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59759b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59760c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        ScheduleDuration scheduleDuration = this.f59761d;
        int hashCode4 = scheduleDuration != null ? scheduleDuration.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f59762e);
        Integer num = this.f59763f;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GhostCallConfig(phoneNumber=");
        m8728C.append(this.f59758a);
        m8728C.append(", profileName=");
        m8728C.append(this.f59759b);
        m8728C.append(", profilePicUri=");
        m8728C.append(this.f59760c);
        m8728C.append(", delayDuration=");
        m8728C.append(this.f59761d);
        m8728C.append(", nextScheduledCallTime=");
        m8728C.append(this.f59762e);
        m8728C.append(", cardPosition=");
        return C22128a.m8689L2(m8728C, this.f59763f, ")");
    }
}
