package p193e.p194a.p1080o.p1100m;

import com.razorpay.AnalyticsConstants;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17745t;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.o.m.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/m/c.class */
public final class C18786c implements AbstractC19549v {

    /* renamed from: a */
    public final String f52772a;

    /* renamed from: b */
    public final String f52773b;

    public C18786c(String str, String str2) {
        l.e(str, "callContextId");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.f52772a = str;
        this.f52773b = str2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17745t.f50300e;
        C17745t.C17747b c17747b = new C17745t.C17747b(null);
        String str = this.f52772a;
        c17747b.validate(c17747b.fields()[2], str);
        c17747b.f50308a = str;
        c17747b.fieldSetFlags()[2] = true;
        String str2 = this.f52773b;
        c17747b.validate(c17747b.fields()[3], str2);
        c17747b.f50309b = str2;
        c17747b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d(c17747b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18786c)) {
                return false;
            }
            C18786c c18786c = (C18786c) obj;
            return l.a(this.f52772a, c18786c.f52772a) && l.a(this.f52773b, c18786c.f52773b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52772a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52773b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallContextShownEvent(callContextId=");
        m8728C.append(this.f52772a);
        m8728C.append(", context=");
        return C22128a.m8618h(m8728C, this.f52773b, ")");
    }
}
