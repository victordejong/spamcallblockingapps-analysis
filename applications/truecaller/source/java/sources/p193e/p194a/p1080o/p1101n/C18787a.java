package p193e.p194a.p1080o.p1101n;

import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.n.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/n/a.class */
public final class C18787a {

    /* renamed from: a */
    public final int f52774a;

    /* renamed from: b */
    public final int f52775b;

    /* renamed from: c */
    public final String f52776c;

    /* renamed from: d */
    public final PredefinedCallReasonType f52777d;

    public C18787a(int i, int i2, String str, PredefinedCallReasonType predefinedCallReasonType) {
        l.e(str, "message");
        l.e(predefinedCallReasonType, "type");
        this.f52774a = i;
        this.f52775b = i2;
        this.f52776c = str;
        this.f52777d = predefinedCallReasonType;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18787a)) {
                return false;
            }
            C18787a c18787a = (C18787a) obj;
            return this.f52774a == c18787a.f52774a && this.f52775b == c18787a.f52775b && l.a(this.f52776c, c18787a.f52776c) && l.a(this.f52777d, c18787a.f52777d);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f52774a;
        int i2 = this.f52775b;
        String str = this.f52776c;
        int i3 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        PredefinedCallReasonType predefinedCallReasonType = this.f52777d;
        if (predefinedCallReasonType != null) {
            i3 = predefinedCallReasonType.hashCode();
        }
        return (((((i * 31) + i2) * 31) + hashCode) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredefinedCallReason(id=");
        m8728C.append(this.f52774a);
        m8728C.append(", index=");
        m8728C.append(this.f52775b);
        m8728C.append(", message=");
        m8728C.append(this.f52776c);
        m8728C.append(", type=");
        m8728C.append(this.f52777d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
