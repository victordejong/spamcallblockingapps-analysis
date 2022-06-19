package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.Serializable;
import java.math.BigDecimal;
/* renamed from: e.k.a.c.k0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/l.class */
public class C23746l implements Serializable {

    /* renamed from: a */
    public static final C23746l f65808a;

    /* renamed from: b */
    public static final C23746l f65809b;

    static {
        C23746l c23746l = new C23746l(false);
        f65808a = c23746l;
        f65809b = c23746l;
    }

    public C23746l(boolean z) {
    }

    /* renamed from: a */
    public C23739e m6151a(boolean z) {
        return z ? C23739e.f65791b : C23739e.f65792c;
    }

    /* renamed from: b */
    public AbstractC23756v m6150b(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return C23751q.f65823a;
        }
        return bigDecimal.compareTo(BigDecimal.ZERO) == 0 ? C23741g.f65795b : new C23741g(bigDecimal.stripTrailingZeros());
    }
}
