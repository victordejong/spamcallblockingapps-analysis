package p193e.p194a.p1315v4.p1317p0.p1318d;

import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17544g1;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.v4.p0.d.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/p0/d/a.class */
public final class C21064a implements AbstractC19549v {

    /* renamed from: a */
    public final String f59073a;

    /* renamed from: b */
    public final String f59074b;

    /* renamed from: c */
    public final String f59075c;

    public C21064a(String str, String str2, String str3) {
        l.e(str, "sessionId");
        l.e(str3, "interactionType");
        this.f59073a = str;
        this.f59074b = str2;
        this.f59075c = str3;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17544g1.f49331f;
        C17544g1.C17546b c17546b = new C17544g1.C17546b(null);
        String str = this.f59073a;
        c17546b.validate(c17546b.fields()[2], str);
        c17546b.f49340a = str;
        c17546b.fieldSetFlags()[2] = true;
        String str2 = this.f59074b;
        c17546b.validate(c17546b.fields()[4], str2);
        c17546b.f49342c = str2;
        c17546b.fieldSetFlags()[4] = true;
        String str3 = this.f59075c;
        c17546b.validate(c17546b.fields()[3], str3);
        c17546b.f49341b = str3;
        c17546b.fieldSetFlags()[3] = true;
        C17544g1 build = c17546b.build();
        l.d(build, "AppOAuthConsentScreenInt…ype)\n            .build()");
        return new AbstractC19580x.C19584d(build);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21064a)) {
                return false;
            }
            C21064a c21064a = (C21064a) obj;
            return l.a(this.f59073a, c21064a.f59073a) && l.a(this.f59074b, c21064a.f59074b) && l.a(this.f59075c, c21064a.f59075c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59073a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59074b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59075c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConsentScreenInteractionsEvent(sessionId=");
        m8728C.append(this.f59073a);
        m8728C.append(", requestId=");
        m8728C.append(this.f59074b);
        m8728C.append(", interactionType=");
        return C22128a.m8618h(m8728C, this.f59075c, ")");
    }
}
