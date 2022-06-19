package p193e.p194a.p294b.p336i.p340j.p342b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.i.j.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/j/b/a.class */
public final class C7943a {

    /* renamed from: a */
    public String f24573a;

    /* renamed from: b */
    public boolean f24574b;

    /* renamed from: c */
    public String f24575c;

    /* renamed from: d */
    public String f24576d;

    public C7943a(String str, boolean z, String str2, String str3) {
        l.e(str, AnalyticsConstants.PHONE);
        this.f24573a = str;
        this.f24574b = z;
        this.f24575c = str2;
        this.f24576d = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7943a)) {
                return false;
            }
            C7943a c7943a = (C7943a) obj;
            return l.a(this.f24573a, c7943a.f24573a) && this.f24574b == c7943a.f24574b && l.a(this.f24575c, c7943a.f24575c) && l.a(this.f24576d, c7943a.f24576d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f24573a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f24574b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        String str2 = this.f24575c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f24576d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallMeBack(phone=");
        m8728C.append(this.f24573a);
        m8728C.append(", enabled=");
        m8728C.append(this.f24574b);
        m8728C.append(", message=");
        m8728C.append(this.f24575c);
        m8728C.append(", buttonText=");
        return C22128a.m8618h(m8728C, this.f24576d, ")");
    }
}
