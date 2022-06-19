package p193e.p194a.p294b.p345k.p347b.p349b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.k.b.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/b/b.class */
public final class C7981b {

    /* renamed from: a */
    public long f24651a;

    /* renamed from: b */
    public String f24652b;

    /* renamed from: c */
    public int f24653c;

    /* renamed from: d */
    public long f24654d;

    public C7981b(String str, int i, long j) {
        l.e(str, AnalyticsConstants.NAME);
        this.f24652b = str;
        this.f24653c = i;
        this.f24654d = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C7981b(String str, int i, long j, int i2) {
        i = (i2 & 2) != 0 ? 0 : i;
        ?? r7 = (i2 & 4) != 0 ? 0 : j;
        l.e(str, AnalyticsConstants.NAME);
        this.f24652b = str;
        this.f24653c = i;
        this.f24654d = r7;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7981b)) {
                return false;
            }
            C7981b c7981b = (C7981b) obj;
            return l.a(this.f24652b, c7981b.f24652b) && this.f24653c == c7981b.f24653c && this.f24654d == c7981b.f24654d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f24652b;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f24653c) * 31) + C4876d.m34274a(this.f24654d);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("District(name=");
        m8728C.append(this.f24652b);
        m8728C.append(", contactsCount=");
        m8728C.append(this.f24653c);
        m8728C.append(", stateID=");
        return C22128a.m8693K2(m8728C, this.f24654d, ")");
    }
}
