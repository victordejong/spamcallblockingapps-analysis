package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8663l2;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8672m2;
/* renamed from: h.i.a.e.j.q.l2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/l2.class */
public abstract class AbstractC8663l2<MessageType extends AbstractC8663l2<MessageType, BuilderType>, BuilderType extends AbstractC8672m2<MessageType, BuilderType>> implements AbstractC8648j5 {
    public static boolean zzbts = false;
    public int zzbtr = 0;

    /* renamed from: a */
    public void mo17424a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
    /* renamed from: d */
    public final AbstractC8736t2 mo17423d() {
        try {
            C8549a3 h = AbstractC8736t2.m17169h(mo17434b());
            mo17435a(h.m17844b());
            return h.m17845a();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: f */
    public int mo17422f() {
        throw new UnsupportedOperationException();
    }
}
