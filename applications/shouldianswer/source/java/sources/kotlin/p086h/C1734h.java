package kotlin.p086h;

import java.util.Iterator;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: kotlin.h.h */
/* loaded from: classes-dex2jar.jar:kotlin/h/h.class */
public class C1734h extends C1733g {

    /* renamed from: kotlin.h.h$a */
    /* loaded from: classes-dex2jar.jar:kotlin/h/h$a.class */
    public static final class C1735a implements Iterable<T> {

        /* renamed from: a */
        final /* synthetic */ AbstractC1728b f4406a;

        public C1735a(AbstractC1728b abstractC1728b) {
            this.f4406a = abstractC1728b;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f4406a.mo2994a();
        }
    }

    /* renamed from: a */
    public static final <T, A extends Appendable> A m3069a(AbstractC1728b<? extends T> abstractC1728b, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b<? super T, ? extends CharSequence> abstractC1663b) {
        int i2;
        C1694h.m3117b(abstractC1728b, "$this$joinTo");
        C1694h.m3117b(a, "buffer");
        C1694h.m3117b(charSequence, "separator");
        C1694h.m3117b(charSequence2, "prefix");
        C1694h.m3117b(charSequence3, "postfix");
        C1694h.m3117b(charSequence4, "truncated");
        a.append(charSequence2);
        Iterator<? extends T> mo2994a = abstractC1728b.mo2994a();
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (!mo2994a.hasNext()) {
                break;
            }
            T next = mo2994a.next();
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
            C1747g.m3046a(a, next, abstractC1663b);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    /* renamed from: a */
    public static final <T> String m3068a(AbstractC1728b<? extends T> abstractC1728b, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b<? super T, ? extends CharSequence> abstractC1663b) {
        C1694h.m3117b(abstractC1728b, "$this$joinToString");
        C1694h.m3117b(charSequence, "separator");
        C1694h.m3117b(charSequence2, "prefix");
        C1694h.m3117b(charSequence3, "postfix");
        C1694h.m3117b(charSequence4, "truncated");
        String sb = ((StringBuilder) C1729c.m3069a(abstractC1728b, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, abstractC1663b)).toString();
        C1694h.m3122a((Object) sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    /* renamed from: a */
    public static /* synthetic */ String m3067a(AbstractC1728b abstractC1728b, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b abstractC1663b, int i2, Object obj) {
        if ((i2 & 1) != 0) {
        }
        if ((i2 & 2) != 0) {
        }
        if ((i2 & 4) != 0) {
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
        }
        if ((i2 & 32) != 0) {
            abstractC1663b = null;
        }
        return C1729c.m3068a(abstractC1728b, charSequence, charSequence2, charSequence3, i, charSequence4, abstractC1663b);
    }

    /* renamed from: a */
    public static final <T, R> AbstractC1728b<R> m3066a(AbstractC1728b<? extends T> abstractC1728b, AbstractC1663b<? super T, ? extends R> abstractC1663b) {
        C1694h.m3117b(abstractC1728b, "$this$map");
        C1694h.m3117b(abstractC1663b, "transform");
        return new C1736i(abstractC1728b, abstractC1663b);
    }

    /* renamed from: b */
    public static final <T> Iterable<T> m3065b(AbstractC1728b<? extends T> abstractC1728b) {
        C1694h.m3117b(abstractC1728b, "$this$asIterable");
        return new C1735a(abstractC1728b);
    }
}
