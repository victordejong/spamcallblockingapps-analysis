package p573f.p577r;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p573f.p575b0.AbstractC9896b;
import p573f.p576c0.C9922n;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.v */
/* loaded from: classes2-dex2jar.jar:f/r/v.class */
public class C9986v extends C9985u {

    /* renamed from: f.r.v$a */
    /* loaded from: classes2-dex2jar.jar:f/r/v$a.class */
    public static final class C9987a implements AbstractC9896b<T> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f37155a;

        public C9987a(Iterable iterable) {
            this.f37155a = iterable;
        }

        @Override // p573f.p575b0.AbstractC9896b
        public Iterator<T> iterator() {
            return this.f37155a.iterator();
        }
    }

    /* renamed from: a */
    public static final <T> AbstractC9896b<T> m1701a(Iterable<? extends T> iterable) {
        C10059q.m1637b(iterable, "$this$asSequence");
        return new C9987a(iterable);
    }

    /* renamed from: a */
    public static final <T, A extends Appendable> A m1700a(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l<? super T, ? extends CharSequence> lVar) {
        int i2;
        C10059q.m1637b(iterable, "$this$joinTo");
        C10059q.m1637b(a, "buffer");
        C10059q.m1637b(charSequence, "separator");
        C10059q.m1637b(charSequence2, "prefix");
        C10059q.m1637b(charSequence3, "postfix");
        C10059q.m1637b(charSequence4, "truncated");
        a.append(charSequence2);
        Iterator<? extends T> it = iterable.iterator();
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
    public static final <T> String m1699a(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l<? super T, ? extends CharSequence> lVar) {
        C10059q.m1637b(iterable, "$this$joinToString");
        C10059q.m1637b(charSequence, "separator");
        C10059q.m1637b(charSequence2, "prefix");
        C10059q.m1637b(charSequence3, "postfix");
        C10059q.m1637b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        m1700a(iterable, sb, charSequence, charSequence2, charSequence3, i, charSequence4, lVar);
        String sb2 = sb.toString();
        C10059q.m1642a((Object) sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    /* renamed from: a */
    public static /* synthetic */ String m1698a(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC10031l lVar, int i2, Object obj) {
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
        return m1699a(iterable, charSequence, charSequence2, charSequence3, i, charSequence4, lVar);
    }

    /* renamed from: a */
    public static final <T> boolean m1697a(Iterable<? extends T> iterable, T t) {
        C10059q.m1637b(iterable, "$this$contains");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        return m1695b(iterable, t) >= 0;
    }

    /* renamed from: b */
    public static final <T> int m1695b(Iterable<? extends T> iterable, T t) {
        C10059q.m1637b(iterable, "$this$indexOf");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t);
        }
        int i = 0;
        for (Object obj : iterable) {
            if (i < 0) {
                C9978n.m1706b();
                throw null;
            } else if (C10059q.m1643a(t, obj)) {
                return i;
            } else {
                i++;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static final <T> T m1696b(Iterable<? extends T> iterable) {
        C10059q.m1637b(iterable, "$this$single");
        if (iterable instanceof List) {
            return (T) m1693c((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T t = (T) it.next();
            if (!it.hasNext()) {
                return t;
            }
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    /* renamed from: b */
    public static final <T> T m1694b(List<? extends T> list) {
        C10059q.m1637b(list, "$this$firstOrNull");
        return list.isEmpty() ? null : (T) list.get(0);
    }

    /* renamed from: c */
    public static final <T> T m1693c(List<? extends T> list) {
        C10059q.m1637b(list, "$this$single");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        } else if (size == 1) {
            return (T) list.get(0);
        } else {
            throw new IllegalArgumentException("List has more than one element.");
        }
    }
}
