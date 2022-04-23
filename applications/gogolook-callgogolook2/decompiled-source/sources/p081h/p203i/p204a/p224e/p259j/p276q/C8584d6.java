package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.d6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d6.class */
public final class C8584d6 extends C8575c6<FieldDescriptorType, Object> {
    public C8584d6(int i) {
        super(i, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8575c6
    /* renamed from: b */
    public final void mo17699b() {
        if (!m17752a()) {
            for (int i = 0; i < m17744c(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m17751a(i);
                if (((AbstractC8755v3) a.getKey()).m17103V()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m17741d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((AbstractC8755v3) entry.getKey()).m17103V()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo17699b();
    }
}
