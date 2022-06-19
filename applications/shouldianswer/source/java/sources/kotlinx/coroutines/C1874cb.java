package kotlinx.coroutines;

import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1922t;
import kotlinx.coroutines.internal.C1925w;
/* renamed from: kotlinx.coroutines.cb */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cb.class */
public final class C1874cb {
    /* renamed from: a */
    public static final <T> void m2726a(AbstractC1641c<? super T> abstractC1641c, T t, int i) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        if (i == 0) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(t));
        } else if (i == 1) {
            C1808aq.m2935a(abstractC1641c, t);
        } else if (i == 2) {
            C1808aq.m2930b(abstractC1641c, t);
        } else if (i != 3) {
            if (i == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else {
            C1806ao c1806ao = (C1806ao) abstractC1641c;
            AbstractC1646f mo2555a = c1806ao.mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a, c1806ao.f4493b);
            try {
                AbstractC1641c<T> abstractC1641c2 = c1806ao.f4495d;
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                abstractC1641c2.mo2553a(C1768j.m2981e(t));
                C1775o c1775o = C1775o.f4450a;
            } finally {
                C1925w.m2580b(mo2555a, m2581a);
            }
        }
    }

    /* renamed from: a */
    public static final <T> void m2725a(AbstractC1641c<? super T> abstractC1641c, Throwable th, int i) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        C1694h.m3117b(th, "exception");
        if (i == 0) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
        } else if (i == 1) {
            C1808aq.m2934a((AbstractC1641c) abstractC1641c, th);
        } else if (i == 2) {
            C1808aq.m2929b((AbstractC1641c) abstractC1641c, th);
        } else if (i != 3) {
            if (i == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else {
            C1806ao c1806ao = (C1806ao) abstractC1641c;
            AbstractC1646f mo2555a = c1806ao.mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a, c1806ao.f4493b);
            try {
                AbstractC1641c<T> abstractC1641c2 = c1806ao.f4495d;
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                abstractC1641c2.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(th, (AbstractC1641c<?>) abstractC1641c2))));
                C1775o c1775o = C1775o.f4450a;
            } finally {
                C1925w.m2580b(mo2555a, m2581a);
            }
        }
    }

    /* renamed from: a */
    public static final boolean m2727a(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static final <T> void m2723b(AbstractC1641c<? super T> abstractC1641c, T t, int i) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        if (i == 0) {
            AbstractC1641c a = C1622b.m3176a(abstractC1641c);
            C1768j.C1769a c1769a = C1768j.f4443a;
            a.mo2553a(C1768j.m2981e(t));
        } else if (i == 1) {
            C1808aq.m2935a(C1622b.m3176a(abstractC1641c), t);
        } else if (i == 2) {
            C1768j.C1769a c1769a2 = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(t));
        } else if (i != 3) {
            if (i == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else {
            AbstractC1646f mo2555a = abstractC1641c.mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a, null);
            try {
                C1768j.C1769a c1769a3 = C1768j.f4443a;
                abstractC1641c.mo2553a(C1768j.m2981e(t));
                C1775o c1775o = C1775o.f4450a;
            } finally {
                C1925w.m2580b(mo2555a, m2581a);
            }
        }
    }

    /* renamed from: b */
    public static final <T> void m2722b(AbstractC1641c<? super T> abstractC1641c, Throwable th, int i) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        C1694h.m3117b(th, "exception");
        if (i == 0) {
            AbstractC1641c a = C1622b.m3176a(abstractC1641c);
            C1768j.C1769a c1769a = C1768j.f4443a;
            a.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
        } else if (i == 1) {
            C1808aq.m2934a(C1622b.m3176a(abstractC1641c), th);
        } else if (i == 2) {
            C1768j.C1769a c1769a2 = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
        } else if (i != 3) {
            if (i == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else {
            AbstractC1646f mo2555a = abstractC1641c.mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a, null);
            try {
                C1768j.C1769a c1769a3 = C1768j.f4443a;
                abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
                C1775o c1775o = C1775o.f4450a;
            } finally {
                C1925w.m2580b(mo2555a, m2581a);
            }
        }
    }

    /* renamed from: b */
    public static final boolean m2724b(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }
}
