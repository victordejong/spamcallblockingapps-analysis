package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1922t;
import kotlinx.coroutines.internal.C1923u;
import kotlinx.coroutines.internal.C1925w;
/* renamed from: kotlinx.coroutines.aq */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/aq.class */
public final class C1808aq {

    /* renamed from: a */
    private static final C1923u f4498a = new C1923u("UNDEFINED");

    /* renamed from: a */
    public static final /* synthetic */ C1923u m2936a() {
        return f4498a;
    }

    /* renamed from: a */
    public static final <T> void m2935a(AbstractC1641c<? super T> abstractC1641c, T t) {
        boolean z;
        C1694h.m3117b(abstractC1641c, "receiver$0");
        if (!(abstractC1641c instanceof C1806ao)) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(t));
            return;
        }
        C1806ao c1806ao = (C1806ao) abstractC1641c;
        if (c1806ao.f4494c.mo2513a(c1806ao.mo2555a())) {
            c1806ao.f4492a = t;
            c1806ao.f4499e = 1;
            c1806ao.f4494c.mo2512a(c1806ao.mo2555a(), c1806ao);
            return;
        }
        AbstractC1816ay m2713a = C1879cf.f4619a.m2713a();
        if (m2713a.m2916g()) {
            c1806ao.f4492a = t;
            c1806ao.f4499e = 1;
            m2713a.m2924a((AbstractC1809ar<?>) c1806ao);
            return;
        }
        m2713a.m2922a(true);
        try {
            AbstractC1850bk abstractC1850bk = (AbstractC1850bk) c1806ao.mo2555a().get(AbstractC1850bk.f4594b);
            if (abstractC1850bk == null || abstractC1850bk.mo2762e()) {
                z = false;
            } else {
                CancellationException mo2754m = abstractC1850bk.mo2754m();
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                c1806ao.mo2553a(C1768j.m2981e(C1771k.m2978a((Throwable) mo2754m)));
                z = true;
            }
            if (!z) {
                AbstractC1646f mo2555a = c1806ao.mo2555a();
                Object m2581a = C1925w.m2581a(mo2555a, c1806ao.f4493b);
                AbstractC1641c<T> abstractC1641c2 = c1806ao.f4495d;
                C1768j.C1769a c1769a3 = C1768j.f4443a;
                abstractC1641c2.mo2553a(C1768j.m2981e(t));
                C1775o c1775o = C1775o.f4450a;
                C1925w.m2580b(mo2555a, m2581a);
            }
            do {
            } while (m2713a.m2918e());
        } catch (Throwable th) {
            try {
                throw new DispatchException("Unexpected exception in unconfined event loop", th);
            } finally {
                m2713a.m2920b(true);
            }
        }
    }

    /* renamed from: a */
    public static final <T> void m2934a(AbstractC1641c<? super T> abstractC1641c, Throwable th) {
        boolean z;
        C1694h.m3117b(abstractC1641c, "receiver$0");
        C1694h.m3117b(th, "exception");
        if (!(abstractC1641c instanceof C1806ao)) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(th, abstractC1641c))));
            return;
        }
        C1806ao c1806ao = (C1806ao) abstractC1641c;
        AbstractC1646f mo2555a = c1806ao.f4495d.mo2555a();
        C1945t c1945t = new C1945t(th);
        if (c1806ao.f4494c.mo2513a(mo2555a)) {
            c1806ao.f4492a = new C1945t(th);
            c1806ao.f4499e = 1;
            c1806ao.f4494c.mo2512a(mo2555a, c1806ao);
            return;
        }
        AbstractC1816ay m2713a = C1879cf.f4619a.m2713a();
        if (m2713a.m2916g()) {
            c1806ao.f4492a = c1945t;
            c1806ao.f4499e = 1;
            m2713a.m2924a((AbstractC1809ar<?>) c1806ao);
            return;
        }
        m2713a.m2922a(true);
        try {
            AbstractC1850bk abstractC1850bk = (AbstractC1850bk) c1806ao.mo2555a().get(AbstractC1850bk.f4594b);
            if (abstractC1850bk == null || abstractC1850bk.mo2762e()) {
                z = false;
            } else {
                CancellationException mo2754m = abstractC1850bk.mo2754m();
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                c1806ao.mo2553a(C1768j.m2981e(C1771k.m2978a((Throwable) mo2754m)));
                z = true;
            }
            if (!z) {
                AbstractC1646f mo2555a2 = c1806ao.mo2555a();
                Object m2581a = C1925w.m2581a(mo2555a2, c1806ao.f4493b);
                AbstractC1641c<T> abstractC1641c2 = c1806ao.f4495d;
                C1768j.C1769a c1769a3 = C1768j.f4443a;
                abstractC1641c2.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(th, (AbstractC1641c<?>) abstractC1641c2))));
                C1775o c1775o = C1775o.f4450a;
                C1925w.m2580b(mo2555a2, m2581a);
            }
            do {
            } while (m2713a.m2918e());
        } catch (Throwable th2) {
            try {
                throw new DispatchException("Unexpected exception in unconfined event loop", th2);
            } finally {
                m2713a.m2920b(true);
            }
        }
    }

    /* renamed from: a */
    private static final void m2933a(AbstractC1809ar<?> abstractC1809ar) {
        AbstractC1816ay m2713a = C1879cf.f4619a.m2713a();
        if (m2713a.m2916g()) {
            m2713a.m2924a(abstractC1809ar);
            return;
        }
        m2713a.m2922a(true);
        try {
            m2931a(abstractC1809ar, abstractC1809ar.mo2535i(), 3);
            do {
            } while (m2713a.m2918e());
        } catch (Throwable th) {
            try {
                throw new DispatchException("Unexpected exception in unconfined event loop", th);
            } finally {
                m2713a.m2920b(true);
            }
        }
    }

    /* renamed from: a */
    public static final <T> void m2932a(AbstractC1809ar<? super T> abstractC1809ar, int i) {
        C1694h.m3117b(abstractC1809ar, "receiver$0");
        AbstractC1641c<? super T> mo2535i = abstractC1809ar.mo2535i();
        if (!C1874cb.m2724b(i) || !(mo2535i instanceof C1806ao) || C1874cb.m2727a(i) != C1874cb.m2727a(abstractC1809ar.f4499e)) {
            m2931a(abstractC1809ar, mo2535i, i);
            return;
        }
        AbstractC1950y abstractC1950y = ((C1806ao) mo2535i).f4494c;
        AbstractC1646f mo2555a = mo2535i.mo2555a();
        if (abstractC1950y.mo2513a(mo2555a)) {
            abstractC1950y.mo2512a(mo2555a, abstractC1809ar);
        } else {
            m2933a(abstractC1809ar);
        }
    }

    /* renamed from: a */
    public static final <T> void m2931a(AbstractC1809ar<? super T> abstractC1809ar, AbstractC1641c<? super T> abstractC1641c, int i) {
        C1694h.m3117b(abstractC1809ar, "receiver$0");
        C1694h.m3117b(abstractC1641c, "delegate");
        Object mo2538f = abstractC1809ar.mo2538f();
        Throwable m2928c = abstractC1809ar.m2928c(mo2538f);
        if (m2928c != null) {
            C1874cb.m2725a((AbstractC1641c) abstractC1641c, m2928c, i);
        } else {
            C1874cb.m2726a(abstractC1641c, abstractC1809ar.mo2544b(mo2538f), i);
        }
    }

    /* renamed from: b */
    public static final <T> void m2930b(AbstractC1641c<? super T> abstractC1641c, T t) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        if (!(abstractC1641c instanceof C1806ao)) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(t));
            return;
        }
        AbstractC1641c<T> abstractC1641c2 = ((C1806ao) abstractC1641c).f4495d;
        C1768j.C1769a c1769a2 = C1768j.f4443a;
        abstractC1641c2.mo2553a(C1768j.m2981e(t));
    }

    /* renamed from: b */
    public static final <T> void m2929b(AbstractC1641c<? super T> abstractC1641c, Throwable th) {
        C1694h.m3117b(abstractC1641c, "receiver$0");
        C1694h.m3117b(th, "exception");
        if (!(abstractC1641c instanceof C1806ao)) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(th, abstractC1641c))));
            return;
        }
        AbstractC1641c<T> abstractC1641c2 = ((C1806ao) abstractC1641c).f4495d;
        C1768j.C1769a c1769a2 = C1768j.f4443a;
        abstractC1641c2.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(th, (AbstractC1641c<?>) abstractC1641c2))));
    }
}
