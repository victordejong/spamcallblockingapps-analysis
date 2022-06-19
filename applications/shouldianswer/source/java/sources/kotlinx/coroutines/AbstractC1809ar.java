package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlinx.coroutines.internal.C1922t;
import kotlinx.coroutines.internal.C1925w;
import kotlinx.coroutines.p090b.AbstractC1834j;
import kotlinx.coroutines.p090b.AbstractRunnableC1833i;
/* renamed from: kotlinx.coroutines.ar */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ar.class */
public abstract class AbstractC1809ar<T> extends AbstractRunnableC1833i {

    /* renamed from: e */
    public int f4499e;

    public AbstractC1809ar(int i) {
        this.f4499e = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public <T> T mo2544b(Object obj) {
        return obj;
    }

    /* renamed from: c */
    public final Throwable m2928c(Object obj) {
        if (!(obj instanceof C1945t)) {
            obj = null;
        }
        C1945t c1945t = (C1945t) obj;
        Throwable th = null;
        if (c1945t != null) {
            th = c1945t.f4697a;
        }
        return th;
    }

    /* renamed from: f */
    public abstract Object mo2538f();

    /* renamed from: i */
    public abstract AbstractC1641c<T> mo2535i();

    @Override // java.lang.Runnable
    public final void run() {
        String sb;
        AbstractC1834j abstractC1834j = this.f4568g;
        try {
            AbstractC1641c<T> mo2535i = mo2535i();
            if (mo2535i == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
            }
            C1806ao c1806ao = (C1806ao) mo2535i;
            AbstractC1641c<T> abstractC1641c = c1806ao.f4495d;
            AbstractC1646f mo2555a = abstractC1641c.mo2555a();
            AbstractC1850bk abstractC1850bk = C1874cb.m2727a(this.f4499e) ? (AbstractC1850bk) mo2555a.get(AbstractC1850bk.f4594b) : null;
            Object mo2538f = mo2538f();
            Object m2581a = C1925w.m2581a(mo2555a, c1806ao.f4493b);
            if (abstractC1850bk == null || abstractC1850bk.mo2762e()) {
                Throwable m2928c = m2928c(mo2538f);
                if (m2928c != null) {
                    C1768j.C1769a c1769a = C1768j.f4443a;
                    abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(C1922t.m2598a(m2928c, (AbstractC1641c<?>) abstractC1641c))));
                } else {
                    T mo2544b = mo2544b(mo2538f);
                    C1768j.C1769a c1769a2 = C1768j.f4443a;
                    abstractC1641c.mo2553a(C1768j.m2981e(mo2544b));
                }
            } else {
                CancellationException mo2754m = abstractC1850bk.mo2754m();
                C1768j.C1769a c1769a3 = C1768j.f4443a;
                abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a((Throwable) mo2754m)));
            }
            C1775o c1775o = C1775o.f4450a;
            C1925w.m2580b(mo2555a, m2581a);
        } finally {
            try {
                throw new DispatchException(sb, th);
            } finally {
            }
        }
    }
}
