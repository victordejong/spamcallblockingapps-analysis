package p1727n3.p1758e.p1759a.p1760d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26058y0;
/* renamed from: n3.e.a.d.c */
/* loaded from: classes-dex2jar.jar:n3/e/a/d/c.class */
public final class C25709c extends AbstractC26058y0<AbstractC25708b> {

    /* renamed from: n3.e.a.d.c$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/d/c$a.class */
    public static final class C25710a {

        /* renamed from: a */
        public final List<AbstractC25708b> f71999a = new ArrayList();

        public C25710a(List<AbstractC25708b> list) {
            for (AbstractC25708b abstractC25708b : list) {
                this.f71999a.add(abstractC25708b);
            }
        }
    }

    public C25709c(AbstractC25708b... abstractC25708bArr) {
        this.f72730a.addAll(Arrays.asList(abstractC25708bArr));
    }

    /* renamed from: d */
    public static C25709c m3038d() {
        return new C25709c(new AbstractC25708b[0]);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26058y0
    /* renamed from: a */
    public AbstractC26058y0<AbstractC25708b> clone() {
        C25709c m3038d = m3038d();
        m3038d.f72730a.addAll(m2767b());
        return m3038d;
    }

    /* renamed from: c */
    public C25710a m3039c() {
        return new C25710a(m2767b());
    }
}
