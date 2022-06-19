package p193e.p194a.p1113o4;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
/* renamed from: e.a.o4.d */
/* loaded from: classes12-dex2jar.jar:e/a/o4/d.class */
public final class C18922d {

    /* renamed from: a */
    public final String f53058a;

    /* renamed from: b */
    public final AbstractC12603e f53059b;

    public C18922d(String str, AbstractC12603e abstractC12603e) {
        l.e(str, AnalyticsConstants.TOKEN);
        l.e(abstractC12603e, "engine");
        this.f53058a = str;
        this.f53059b = abstractC12603e;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18922d)) {
                return false;
            }
            C18922d c18922d = (C18922d) obj;
            return l.a(this.f53058a, c18922d.f53058a) && l.a(this.f53059b, c18922d.f53059b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f53058a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AbstractC12603e abstractC12603e = this.f53059b;
        if (abstractC12603e != null) {
            i = abstractC12603e.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PushId(token=");
        m8728C.append(this.f53058a);
        m8728C.append(", engine=");
        m8728C.append(this.f53059b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
