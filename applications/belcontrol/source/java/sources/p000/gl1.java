package p000;

import java.util.Iterator;
/* renamed from: gl1 */
/* loaded from: classes3-dex2jar.jar:gl1.class */
public class gl1 extends fl1 {

    /* renamed from: gl1$a */
    /* loaded from: classes3-dex2jar.jar:gl1$a.class */
    public static final class C1441a implements Iterable<T> {

        /* renamed from: a */
        public final /* synthetic */ bl1 f6705a;

        public C1441a(bl1 bl1Var) {
            this.f6705a = bl1Var;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f6705a.iterator();
        }
    }

    /* renamed from: a */
    public static final <T> Iterable<T> m1655a(bl1<? extends T> bl1Var) {
        qk1.m744c(bl1Var, "$this$asIterable");
        return new C1441a(bl1Var);
    }

    /* renamed from: b */
    public static final <T, A extends Appendable> A m1654b(bl1<? extends T> bl1Var, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, jk1<? super T, ? extends CharSequence> jk1Var) {
        int i2;
        qk1.m744c(bl1Var, "$this$joinTo");
        qk1.m744c(a, "buffer");
        qk1.m744c(charSequence, "separator");
        qk1.m744c(charSequence2, "prefix");
        qk1.m744c(charSequence3, "postfix");
        qk1.m744c(charSequence4, "truncated");
        a.append(charSequence2);
        Iterator<? extends T> it = bl1Var.iterator();
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (!it.hasNext()) {
                break;
            }
            T next = it.next();
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
            pl1.m917a(a, next, jk1Var);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    /* renamed from: c */
    public static final <T> String m1653c(bl1<? extends T> bl1Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, jk1<? super T, ? extends CharSequence> jk1Var) {
        qk1.m744c(bl1Var, "$this$joinToString");
        qk1.m744c(charSequence, "separator");
        qk1.m744c(charSequence2, "prefix");
        qk1.m744c(charSequence3, "postfix");
        qk1.m744c(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        m1654b(bl1Var, sb, charSequence, charSequence2, charSequence3, i, charSequence4, jk1Var);
        String sb2 = sb.toString();
        qk1.m745b(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    /* renamed from: d */
    public static /* synthetic */ String m1652d(bl1 bl1Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, jk1 jk1Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i2 & 32) != 0) {
            jk1Var = null;
        }
        return m1653c(bl1Var, charSequence, charSequence2, charSequence3, i, charSequence4, jk1Var);
    }

    /* renamed from: e */
    public static final <T, R> bl1<R> m1651e(bl1<? extends T> bl1Var, jk1<? super T, ? extends R> jk1Var) {
        qk1.m744c(bl1Var, "$this$map");
        qk1.m744c(jk1Var, "transform");
        return new hl1(bl1Var, jk1Var);
    }
}
