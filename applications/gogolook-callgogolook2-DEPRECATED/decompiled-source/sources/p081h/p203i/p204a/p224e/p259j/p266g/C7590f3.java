package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.f3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f3.class */
public final class C7590f3 extends C7578e3<FieldDescriptorType, Object> {
    public C7590f3(int i) {
        super(i, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7578e3
    /* renamed from: g */
    public final void mo20161g() {
        if (!m20207a()) {
            for (int i = 0; i < m20201b(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m20206a(i);
                if (((AbstractC7735z0) a.getKey()).mo19637Q()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m20198c().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((AbstractC7735z0) entry.getKey()).mo19637Q()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo20161g();
    }
}
