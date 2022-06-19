package p193e.p1545k.p1546a.p1556c.p1562e0;

import java.util.Collection;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23374h;
/* renamed from: e.k.a.c.e0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/e0/g.class */
public abstract class AbstractC23621g extends C23620f {

    /* renamed from: d */
    public final Collection<Object> f65476d;

    /* renamed from: e */
    public transient String f65477e;

    public AbstractC23621g(AbstractC23376j abstractC23376j, String str, C23374h c23374h, Class<?> cls, String str2, Collection<Object> collection) {
        super(abstractC23376j, str, c23374h);
        this.f65476d = collection;
    }

    @Override // p193e.p1545k.p1546a.p1548b.C23379k
    /* renamed from: a */
    public String mo6520a() {
        String str = this.f65477e;
        String str2 = str;
        if (str == null) {
            str2 = str;
            if (this.f65476d != null) {
                StringBuilder sb = new StringBuilder(100);
                int size = this.f65476d.size();
                if (size != 1) {
                    sb.append(" (");
                    sb.append(size);
                    sb.append(" known properties: ");
                    Iterator<Object> it = this.f65476d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        sb.append('\"');
                        sb.append(String.valueOf(it.next()));
                        sb.append('\"');
                        if (sb.length() > 1000) {
                            sb.append(" [truncated]");
                            break;
                        } else if (it.hasNext()) {
                            sb.append(", ");
                        }
                    }
                } else {
                    sb.append(" (one known property: \"");
                    sb.append(String.valueOf(this.f65476d.iterator().next()));
                    sb.append('\"');
                }
                sb.append("])");
                str2 = sb.toString();
                this.f65477e = str2;
            }
        }
        return str2;
    }
}
