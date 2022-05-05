package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.nb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/nb.class */
public final class C8266nb extends C8288ob<FieldDescriptorType, Object> {
    public C8266nb(int i) {
        super(i, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8288ob
    /* renamed from: b */
    public final void mo18231b() {
        if (!m18237a()) {
            if (m18228c() <= 0) {
                Iterator it = m18225d().iterator();
                if (it.hasNext()) {
                    ((AbstractC8127g9) ((Map.Entry) it.next()).getKey()).mo18341R();
                    throw null;
                }
            } else {
                ((AbstractC8127g9) m18236a(0).getKey()).mo18341R();
                throw null;
            }
        }
        super.mo18231b();
    }
}
