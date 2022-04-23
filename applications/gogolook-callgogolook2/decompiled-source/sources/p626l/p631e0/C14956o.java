package p626l.p631e0;

import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.o */
/* loaded from: classes3-dex2jar.jar:l/e0/o.class */
public class C14956o {
    /* renamed from: a */
    public static final <T> void m736a(Appendable appendable, T t, AbstractC15118l<? super T, ? extends CharSequence> lVar) {
        C15149k.m377b(appendable, "$this$appendElement");
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(t));
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
