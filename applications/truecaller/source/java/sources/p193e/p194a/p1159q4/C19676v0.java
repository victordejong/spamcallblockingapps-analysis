package p193e.p194a.p1159q4;

import javax.inject.Inject;
import org.apache.avro.Schema;
import p193e.p194a.p1050l5.p1051a.C17781v1;
import p193e.p194a.p1050l5.p1051a.C17794w1;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
/* renamed from: e.a.q4.v0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/v0.class */
public final class C19676v0 implements AbstractC19647j0 {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f54658a;

    @Inject
    public C19676v0(AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19854f, "eventTracker");
        this.f54658a = abstractC19854f;
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: a */
    public void mo13000a(String str) {
        AbstractC19463a0 mo11854a = this.f54658a.mo11854a();
        Schema schema = C17794w1.f50584d;
        C17794w1.C17796b c17796b = new C17794w1.C17796b(null);
        c17796b.validate(c17796b.fields()[2], str);
        c17796b.f50591a = str;
        c17796b.fieldSetFlags()[2] = true;
        mo11854a.mo13111a(c17796b.build());
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: b */
    public void mo12999b(String str, String str2) {
        AbstractC19463a0 mo11854a = this.f54658a.mo11854a();
        Schema schema = C17781v1.f50510e;
        C17781v1.C17783b c17783b = new C17781v1.C17783b(null);
        c17783b.validate(c17783b.fields()[3], str);
        c17783b.f50519b = str;
        c17783b.fieldSetFlags()[3] = true;
        c17783b.validate(c17783b.fields()[2], str2);
        c17783b.f50518a = str2;
        c17783b.fieldSetFlags()[2] = true;
        mo11854a.mo13111a(c17783b.build());
    }
}
