package p193e.p194a.p294b.p345k.p347b.p349b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.k.b.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/b/c.class */
public final class C7982c {

    /* renamed from: a */
    public String f24655a;

    /* renamed from: b */
    public int f24656b;

    public C7982c(String str, int i, int i2) {
        i = (i2 & 2) != 0 ? 0 : i;
        l.e(str, AnalyticsConstants.NAME);
        this.f24655a = str;
        this.f24656b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7982c)) {
                return false;
            }
            C7982c c7982c = (C7982c) obj;
            return l.a(this.f24655a, c7982c.f24655a) && this.f24656b == c7982c.f24656b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f24655a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f24656b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("State(name=");
        m8728C.append(this.f24655a);
        m8728C.append(", generalCount=");
        return C22128a.m8697J2(m8728C, this.f24656b, ")");
    }
}
