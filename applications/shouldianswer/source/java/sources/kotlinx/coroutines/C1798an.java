package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1642d;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.an */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/an.class */
public final class C1798an {
    /* renamed from: a */
    public static final Object m2945a(long j, AbstractC1641c<? super C1775o> abstractC1641c) {
        if (j <= 0) {
            return C1775o.f4450a;
        }
        C1935l c1935l = new C1935l(C1622b.m3176a(abstractC1641c), 1);
        C1935l c1935l2 = c1935l;
        m2944a(c1935l2.mo2555a()).mo2611a(j, (AbstractC1934k<? super C1775o>) c1935l2);
        Object m2537g = c1935l.m2537g();
        if (m2537g == C1622b.m3174a()) {
            C1636h.m3152c(abstractC1641c);
        }
        return m2537g;
    }

    /* renamed from: a */
    public static final AbstractC1796am m2944a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "receiver$0");
        AbstractC1646f.AbstractC1649b abstractC1649b = abstractC1646f.get(AbstractC1642d.f4366a);
        AbstractC1646f.AbstractC1649b abstractC1649b2 = abstractC1649b;
        if (!(abstractC1649b instanceof AbstractC1796am)) {
            abstractC1649b2 = null;
        }
        AbstractC1796am abstractC1796am = (AbstractC1796am) abstractC1649b2;
        if (abstractC1796am == null) {
            abstractC1796am = C1791ai.m2949a();
        }
        return abstractC1796am;
    }
}
