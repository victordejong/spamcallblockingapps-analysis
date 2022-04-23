package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzca;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.s1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/s1.class */
public final class C4411s1 extends C4406r1<FieldDescriptorType, Object> {
    public C4411s1(int i) {
        super(i, null);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4406r1
    /* renamed from: g */
    public final void mo25645g() {
        if (!m25667a()) {
            for (int i = 0; i < m25661b(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m25666a(i);
                if (((zzca) a.getKey()).mo10713t()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m25658c().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzca) entry.getKey()).mo10713t()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo25645g();
    }
}
