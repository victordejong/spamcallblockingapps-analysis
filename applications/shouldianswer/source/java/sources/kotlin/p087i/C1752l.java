package kotlin.p087i;

import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.i.l */
/* loaded from: classes-dex2jar.jar:kotlin/i/l.class */
public class C1752l extends C1751k {
    /* renamed from: a */
    public static final <T> void m3046a(Appendable appendable, T t, AbstractC1663b<? super T, ? extends CharSequence> abstractC1663b) {
        C1694h.m3117b(appendable, "$this$appendElement");
        if (abstractC1663b != null) {
            appendable.append(abstractC1663b.mo138a(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }
}
