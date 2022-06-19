package p170m7;

import java.util.Iterator;
import java.util.Objects;
import p229s2.C4280b;
import p303z2.C5052m;
/* renamed from: m7.e */
/* loaded from: classes2-dex2jar.jar:m7/e.class */
public class C3657e {
    /* renamed from: a */
    public static <T, F> void m1928a(Iterator<F> it2, AbstractC3665i<T, F> abstractC3665i, C3661g<T> c3661g, Exception e) {
        while (it2.hasNext()) {
            try {
                AbstractFutureC3655c<T> then = abstractC3665i.then(it2.next());
                Objects.requireNonNull(c3661g);
                ((C3661g) ((C3661g) then).m1912r(new C4280b(c3661g))).m1924f(new C5052m(it2, abstractC3665i, c3661g));
                return;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e == null) {
            c3661g.m1914p(new Exception("empty list"), null, null);
        } else {
            c3661g.m1914p(e, null, null);
        }
    }
}
