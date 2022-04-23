package p573f.p575b0;

import java.util.Iterator;
import p573f.p576c0.C9922n;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.b0.h */
/* loaded from: classes2-dex2jar.jar:f/b0/h.class */
public class C9902h extends C9901g {

    /* renamed from: f.b0.h$a */
    /* loaded from: classes2-dex2jar.jar:f/b0/h$a.class */
    public static final class C9903a implements Iterable<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9896b f37106a;

        public C9903a(AbstractC9896b bVar) {
            this.f37106a = bVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f37106a.iterator();
        }
    }

    /* renamed from: a */
    public static final <T, R> AbstractC9896b<R> m1810a(AbstractC9896b<? extends T> bVar, AbstractC10031l<? super T, ? extends R> lVar) {
        C10059q.m1637b(bVar, "$this$map");
        C10059q.m1637b(lVar, "transform");
        return new C9905j(bVar, lVar);
    }

    /* renamed from: a */
    public static final <T, A extends Appendable> A m1809a(AbstractC9896b<? extends T> bVar, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l<? super T, ? extends CharSequence> lVar) {
        int i2;
        C10059q.m1637b(bVar, "$this$joinTo");
        C10059q.m1637b(a, "buffer");
        C10059q.m1637b(charSequence, "separator");
        C10059q.m1637b(charSequence2, "prefix");
        C10059q.m1637b(charSequence3, "postfix");
        C10059q.m1637b(charSequence4, "truncated");
        a.append(charSequence2);
        Iterator<? extends T> it = bVar.iterator();
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            i3++;
            if (i3 > 1) {
                a.append(charSequence);
            }
            if (i >= 0) {
                i2 = i3;
                if (i3 > i) {
                    break;
                }
            }
            C9922n.m1786a(a, next, lVar);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    /* renamed from: a */
    public static final <T> Iterable<T> m1811a(AbstractC9896b<? extends T> bVar) {
        C10059q.m1637b(bVar, "$this$asIterable");
        return new C9903a(bVar);
    }

    /* renamed from: a */
    public static final <T> String m1808a(AbstractC9896b<? extends T> bVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l<? super T, ? extends CharSequence> lVar) {
        C10059q.m1637b(bVar, "$this$joinToString");
        C10059q.m1637b(charSequence, "separator");
        C10059q.m1637b(charSequence2, "prefix");
        C10059q.m1637b(charSequence3, "postfix");
        C10059q.m1637b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        m1809a(bVar, sb, charSequence, charSequence2, charSequence3, i, charSequence4, lVar);
        String sb2 = sb.toString();
        C10059q.m1642a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    /* renamed from: a */
    public static /* synthetic */ String m1807a(AbstractC9896b bVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l lVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        charSequence3 = "";
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i2 & 32) != 0) {
            lVar = null;
        }
        return m1808a(bVar, charSequence, charSequence2, charSequence3, i, charSequence4, lVar);
    }
}
