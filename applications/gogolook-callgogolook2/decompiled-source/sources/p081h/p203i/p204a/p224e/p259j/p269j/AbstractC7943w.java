package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7943w;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7950x;
/* renamed from: h.i.a.e.j.j.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/w.class */
public abstract class AbstractC7943w<MessageType extends AbstractC7943w<MessageType, BuilderType>, BuilderType extends AbstractC7950x<MessageType, BuilderType>> implements AbstractC7925t2 {
    public static boolean zzhh = false;
    public int zzhg = 0;

    /* renamed from: a */
    public void mo18854a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
    /* renamed from: c */
    public final AbstractC7791e0 mo18853c() {
        try {
            C7854l0 h = AbstractC7791e0.m19470h(mo18882d());
            mo18884a(h.m19263b());
            return h.m19264a();
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

    /* renamed from: e */
    public int mo18852e() {
        throw new UnsupportedOperationException();
    }
}
