package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/k.class */
public class C23834k extends AbstractC23836l<Date> {

    /* renamed from: f */
    public static final C23834k f65971f = new C23834k();

    public C23834k() {
        super(Date.class, null, null);
    }

    public C23834k(Boolean bool, DateFormat dateFormat) {
        super(Date.class, bool, dateFormat);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Date date = (Date) obj;
        if (m6023p(abstractC23425a0)) {
            abstractC23372g.mo5878K0(date == null ? (char) 0 : date.getTime());
        } else {
            m6022q(date, abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23836l
    /* renamed from: r */
    public AbstractC23836l<Date> mo6021r(Boolean bool, DateFormat dateFormat) {
        return new C23834k(bool, dateFormat);
    }
}
