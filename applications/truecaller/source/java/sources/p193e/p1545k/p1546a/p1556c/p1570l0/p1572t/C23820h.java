package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Calendar;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/h.class */
public class C23820h extends AbstractC23836l<Calendar> {

    /* renamed from: f */
    public static final C23820h f65965f = new C23820h();

    public C23820h() {
        super(Calendar.class, null, null);
    }

    public C23820h(Boolean bool, DateFormat dateFormat) {
        super(Calendar.class, bool, dateFormat);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Calendar calendar = (Calendar) obj;
        if (m6023p(abstractC23425a0)) {
            abstractC23372g.mo5878K0(calendar == null ? (char) 0 : calendar.getTimeInMillis());
        } else {
            m6022q(calendar.getTime(), abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23836l
    /* renamed from: r */
    public AbstractC23836l<Calendar> mo6021r(Boolean bool, DateFormat dateFormat) {
        return new C23820h(bool, dateFormat);
    }
}
