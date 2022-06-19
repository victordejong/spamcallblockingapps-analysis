package p193e.p194a.p1080o.p1100m;

import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17801x;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.o.m.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/m/a.class */
public final class C18784a implements AbstractC19549v {

    /* renamed from: a */
    public final String f52769a;

    public C18784a(String str) {
        l.e(str, "messageId");
        this.f52769a = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17801x.f50611d;
        C17801x.C17803b c17803b = new C17801x.C17803b(null);
        String str = this.f52769a;
        c17803b.validate(c17803b.fields()[2], str);
        c17803b.f50618a = str;
        c17803b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d(c17803b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C18784a) && l.a(this.f52769a, ((C18784a) obj).f52769a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52769a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("CallContextMidCallReceivedEvent(messageId="), this.f52769a, ")");
    }
}
