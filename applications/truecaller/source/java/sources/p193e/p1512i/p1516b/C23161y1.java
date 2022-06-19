package p193e.p1512i.p1516b;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import p193e.p1512i.p1516b.p1522i2.C22961c;
import p193e.p1512i.p1516b.p1522i2.C22963d;
import p193e.p1512i.p1516b.p1522i2.C22965f;
import p193e.p1512i.p1516b.p1522i2.RunnableC22960b;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1528q2.C23033o;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1532u1.C23099a;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.C23124i;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1537z1.C23187g0;
/* renamed from: e.i.b.y1 */
/* loaded from: classes-dex2jar.jar:e/i/b/y1.class */
public class C23161y1 {

    /* renamed from: b */
    public final C23099a f64130b;

    /* renamed from: e */
    public final C23132x f64133e;

    /* renamed from: f */
    public final AbstractC22939e2 f64134f;

    /* renamed from: g */
    public final C23124i f64135g;

    /* renamed from: h */
    public final C22961c f64136h;

    /* renamed from: i */
    public final C22965f f64137i;

    /* renamed from: j */
    public final AbstractC23068a f64138j;

    /* renamed from: k */
    public final C23187g0 f64139k;

    /* renamed from: l */
    public final C23033o f64140l;

    /* renamed from: m */
    public final C22977a f64141m;

    /* renamed from: a */
    public final C23021h f64129a = C23023i.m7583a(C23161y1.class);

    /* renamed from: c */
    public final Object f64131c = new Object();

    /* renamed from: d */
    public final AtomicLong f64132d = new AtomicLong(0);

    /* renamed from: e.i.b.y1$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/y1$a.class */
    public class C23162a extends AbstractC22928c2 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23162a() {
            super(r6.f64138j, r6, r6.f64141m);
            C23161y1.this = r6;
        }

        @Override // p193e.p1512i.p1516b.AbstractC22928c2
        /* renamed from: a */
        public void mo7428a(AbstractC23127q abstractC23127q, C23130t c23130t) {
            C23161y1.this.m7432f(c23130t.f64063a);
            super.mo7428a(abstractC23127q, c23130t);
        }
    }

    public C23161y1(C23099a c23099a, C23132x c23132x, AbstractC22939e2 abstractC22939e2, C23124i c23124i, C22961c c22961c, C22965f c22965f, AbstractC23068a abstractC23068a, C23187g0 c23187g0, C23033o c23033o, C22977a c22977a) {
        this.f64130b = c23099a;
        this.f64133e = c23132x;
        this.f64134f = abstractC22939e2;
        this.f64135g = c23124i;
        this.f64136h = c22961c;
        this.f64137i = c22965f;
        this.f64138j = abstractC23068a;
        this.f64139k = c23187g0;
        this.f64140l = c23033o;
        this.f64141m = c22977a;
    }

    /* renamed from: a */
    public C23126p m7437a(AdUnit adUnit) {
        C23124i c23124i = this.f64135g;
        Objects.requireNonNull(c23124i);
        List<List<C23126p>> m7499a = c23124i.m7499a(Collections.singletonList(adUnit));
        return (m7499a.isEmpty() || m7499a.get(0).isEmpty()) ? null : m7499a.get(0).get(0);
    }

    /* renamed from: b */
    public final C23131w m7436b(C23126p c23126p) {
        synchronized (this.f64131c) {
            C23131w c23131w = this.f64130b.f63932a.get(c23126p);
            if (c23131w != null) {
                boolean m7429i = m7429i(c23131w);
                boolean m7481d = c23131w.m7481d(this.f64134f);
                if (!m7429i) {
                    this.f64130b.f63932a.remove(c23126p);
                    this.f64138j.mo7385b(c23126p, c23131w);
                }
                if (!m7429i && !m7481d) {
                    return c23131w;
                }
            }
            return null;
        }
    }

    /* renamed from: c */
    public void m7435c(AdUnit adUnit, ContextData contextData, AbstractC23156x1 abstractC23156x1) {
        C23131w c23131w;
        if (adUnit == null) {
            abstractC23156x1.mo7463a();
        } else if (!((Boolean) C23088k.m7561a(this.f64133e.f64080b.mo7510i(), Boolean.FALSE)).booleanValue()) {
            if (m7431g()) {
                c23131w = null;
            } else {
                C23126p m7437a = m7437a(adUnit);
                if (m7437a == null) {
                    c23131w = null;
                } else {
                    synchronized (this.f64131c) {
                        if (!m7430h(m7437a)) {
                            m7434d(Collections.singletonList(m7437a), contextData);
                        }
                        c23131w = m7436b(m7437a);
                    }
                }
            }
            if (c23131w != null) {
                abstractC23156x1.mo7462a(c23131w);
            } else {
                abstractC23156x1.mo7463a();
            }
        } else if (m7431g()) {
            abstractC23156x1.mo7463a();
        } else {
            C23126p m7437a2 = m7437a(adUnit);
            if (m7437a2 == null) {
                abstractC23156x1.mo7463a();
                return;
            }
            synchronized (this.f64131c) {
                m7433e(m7437a2);
                if (m7430h(m7437a2)) {
                    C23131w m7436b = m7436b(m7437a2);
                    if (m7436b != null) {
                        abstractC23156x1.mo7462a(m7436b);
                    } else {
                        abstractC23156x1.mo7463a();
                    }
                } else {
                    this.f64137i.m7612a(m7437a2, contextData, new C22925b3(abstractC23156x1, this.f64138j, this, m7437a2, this.f64141m));
                }
                this.f64139k.m7420a();
                this.f64140l.m7578a();
            }
        }
    }

    /* renamed from: d */
    public final void m7434d(List<C23126p> list, ContextData contextData) {
        if (m7431g()) {
            return;
        }
        C22961c c22961c = this.f64136h;
        C23162a c23162a = new C23162a();
        Objects.requireNonNull(c22961c);
        ArrayList arrayList = new ArrayList(list);
        synchronized (c22961c.f63672g) {
            arrayList.removeAll(c22961c.f63671f.keySet());
            if (!arrayList.isEmpty()) {
                FutureTask futureTask = new FutureTask(new RunnableC22960b(c22961c, new C22963d(c22961c.f63669d, c22961c.f63666a, c22961c.f63668c, arrayList, contextData, c23162a), arrayList), null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c22961c.f63671f.put((C23126p) it.next(), futureTask);
                }
                try {
                    c22961c.f63670e.execute(futureTask);
                } catch (Throwable th) {
                    c22961c.m7613a(arrayList);
                    throw th;
                }
            }
        }
        this.f64139k.m7420a();
        this.f64140l.m7578a();
    }

    /* renamed from: e */
    public final void m7433e(C23126p c23126p) {
        synchronized (this.f64131c) {
            C23131w c23131w = this.f64130b.f63932a.get(c23126p);
            if (c23131w != null && c23131w.m7481d(this.f64134f)) {
                this.f64130b.f63932a.remove(c23126p);
                this.f64138j.mo7385b(c23126p, c23131w);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* renamed from: f */
    public void m7432f(List<C23131w> list) {
        synchronized (this.f64131c) {
            for (C23131w c23131w : list) {
                C23099a c23099a = this.f64130b;
                if (!m7429i(c23099a.m7553a(c23099a.m7552b(c23131w))) && c23131w.m7471n()) {
                    if ((c23131w.m7480e() == null ? (char) 0 : c23131w.m7480e().doubleValue()) > PlaceLikelihood.LIKELIHOOD_MIN_VALUE && c23131w.m7474k() == 0) {
                        c23131w.m7482c(900);
                    }
                    C23099a c23099a2 = this.f64130b;
                    C23126p m7552b = c23099a2.m7552b(c23131w);
                    if (m7552b != null) {
                        c23099a2.f63932a.put(m7552b, c23131w);
                    }
                    this.f64138j.mo7386a(c23131w);
                }
            }
        }
    }

    /* renamed from: g */
    public final boolean m7431g() {
        return ((Boolean) C23088k.m7561a(this.f64133e.f64080b.mo7511h(), Boolean.FALSE)).booleanValue();
    }

    /* renamed from: h */
    public final boolean m7430h(C23126p c23126p) {
        boolean m7429i;
        if (this.f64132d.get() > this.f64134f.mo7355a()) {
            return true;
        }
        synchronized (this.f64131c) {
            m7429i = m7429i(this.f64130b.f63932a.get(c23126p));
        }
        return m7429i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7429i(p193e.p1512i.p1516b.p1533u2.C23131w r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r6
            int r0 = r0.m7474k()
            if (r0 <= 0) goto L2f
            r0 = r6
            java.lang.Double r0 = r0.m7480e()
            if (r0 != 0) goto L1b
            r0 = 0
            r8 = r0
            goto L23
        L1b:
            r0 = r6
            java.lang.Double r0 = r0.m7480e()
            double r0 = r0.doubleValue()
            r8 = r0
        L23:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2f
            r0 = 1
            r10 = r0
            goto L32
        L2f:
            r0 = 0
            r10 = r0
        L32:
            r0 = r7
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L4b
            r0 = r7
            r11 = r0
            r0 = r6
            r1 = r5
            e.i.b.e2 r1 = r1.f64134f
            boolean r0 = r0.m7481d(r1)
            if (r0 != 0) goto L4b
            r0 = 1
            r11 = r0
        L4b:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.C23161y1.m7429i(e.i.b.u2.w):boolean");
    }
}
