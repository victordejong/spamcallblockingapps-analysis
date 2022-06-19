package p193e.p194a.p1315v4.p1317p0.p1318d;

import java.util.List;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17580i1;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.v4.p0.d.c */
/* loaded from: classes12-dex2jar.jar:e/a/v4/p0/d/c.class */
public final class C21066c implements AbstractC19549v {

    /* renamed from: a */
    public final String f59086a;

    /* renamed from: b */
    public final String f59087b;

    /* renamed from: c */
    public final String f59088c;

    /* renamed from: d */
    public final String f59089d;

    /* renamed from: e */
    public final String f59090e;

    /* renamed from: f */
    public final String f59091f;

    /* renamed from: g */
    public final List<String> f59092g;

    public C21066c(String str, String str2, String str3, String str4, String str5, String str6, List<String> list) {
        C22128a.m8703I0(str, "sessionId", str2, "screenState", str3, "orientation");
        this.f59086a = str;
        this.f59087b = str2;
        this.f59088c = str3;
        this.f59089d = str4;
        this.f59090e = str5;
        this.f59091f = str6;
        this.f59092g = list;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17580i1.f49483j;
        C17580i1.C17582b c17582b = new C17580i1.C17582b(null);
        String str = this.f59086a;
        c17582b.validate(c17582b.fields()[2], str);
        c17582b.f49496a = str;
        c17582b.fieldSetFlags()[2] = true;
        String str2 = this.f59087b;
        c17582b.validate(c17582b.fields()[3], str2);
        c17582b.f49497b = str2;
        c17582b.fieldSetFlags()[3] = true;
        String str3 = this.f59088c;
        c17582b.validate(c17582b.fields()[4], str3);
        c17582b.f49498c = str3;
        c17582b.fieldSetFlags()[4] = true;
        String str4 = this.f59089d;
        c17582b.validate(c17582b.fields()[5], str4);
        c17582b.f49499d = str4;
        c17582b.fieldSetFlags()[5] = true;
        String str5 = this.f59090e;
        c17582b.validate(c17582b.fields()[7], str5);
        c17582b.f49501f = str5;
        c17582b.fieldSetFlags()[7] = true;
        String str6 = this.f59091f;
        c17582b.validate(c17582b.fields()[6], str6);
        c17582b.f49500e = str6;
        c17582b.fieldSetFlags()[6] = true;
        List<String> list = this.f59092g;
        c17582b.validate(c17582b.fields()[8], list);
        c17582b.f49502g = list;
        c17582b.fieldSetFlags()[8] = true;
        C17580i1 build = c17582b.build();
        l.d(build, "AppOAuthConsentScreenSta…pes)\n            .build()");
        return new AbstractC19580x.C19584d(build);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21066c)) {
                return false;
            }
            C21066c c21066c = (C21066c) obj;
            return l.a(this.f59086a, c21066c.f59086a) && l.a(this.f59087b, c21066c.f59087b) && l.a(this.f59088c, c21066c.f59088c) && l.a(this.f59089d, c21066c.f59089d) && l.a(this.f59090e, c21066c.f59090e) && l.a(this.f59091f, c21066c.f59091f) && l.a(this.f59092g, c21066c.f59092g);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59086a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59087b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59088c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f59089d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f59090e;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f59091f;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        List<String> list = this.f59092g;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConsentScreenStagesEvent(sessionId=");
        m8728C.append(this.f59086a);
        m8728C.append(", screenState=");
        m8728C.append(this.f59087b);
        m8728C.append(", orientation=");
        m8728C.append(this.f59088c);
        m8728C.append(", requestId=");
        m8728C.append(this.f59089d);
        m8728C.append(", language=");
        m8728C.append(this.f59090e);
        m8728C.append(", dismissReason=");
        m8728C.append(this.f59091f);
        m8728C.append(", grantedScopes=");
        return C22128a.m8602l(m8728C, this.f59092g, ")");
    }
}
