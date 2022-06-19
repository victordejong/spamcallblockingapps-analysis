package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.logging.C8416n;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8484g;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.p243c.AbstractC8259a;
import com.criteo.publisher.p244d.C8271a;
import com.criteo.publisher.p246f.C8286ab;
import com.criteo.publisher.p251j0.C8356b;
import com.criteo.publisher.p251j0.C8359c;
import com.criteo.publisher.p251j0.C8361e;
import com.criteo.publisher.p252k.C8368a;
import com.explorestack.iab.vast.VastError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.criteo.publisher.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e.class */
public class C8272e {

    /* renamed from: a */
    final C8507t f29835a;

    /* renamed from: b */
    final C8484g f29836b;

    /* renamed from: c */
    public final C8356b f29837c;

    /* renamed from: e */
    private final C8271a f29839e;

    /* renamed from: h */
    private final AbstractC8336h f29842h;

    /* renamed from: i */
    private final C8361e f29843i;

    /* renamed from: j */
    private final AbstractC8259a f29844j;

    /* renamed from: k */
    private final C8286ab f29845k;

    /* renamed from: l */
    private final C8416n f29846l;

    /* renamed from: m */
    private final C8368a f29847m;

    /* renamed from: d */
    private final C8402g f29838d = C8404h.m25741a(getClass());

    /* renamed from: f */
    private final Object f29840f = new Object();

    /* renamed from: g */
    private final AtomicLong f29841g = new AtomicLong(0);

    /* renamed from: com.criteo.publisher.e$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e$a.class */
    public final class C8273a extends AbstractC8334g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8273a() {
            super(r6.f29844j, r6, r6.f29847m);
            C8272e.this = r6;
        }

        @Override // com.criteo.publisher.AbstractC8334g
        /* renamed from: a */
        public final void mo25371a(AbstractC8499o abstractC8499o, C8502r c8502r) {
            C8272e.this.m25935a(c8502r.m25556b());
            super.mo25371a(abstractC8499o, c8502r);
        }
    }

    public C8272e(C8271a c8271a, C8507t c8507t, AbstractC8336h abstractC8336h, C8484g c8484g, C8356b c8356b, C8361e c8361e, AbstractC8259a abstractC8259a, C8286ab c8286ab, C8416n c8416n, C8368a c8368a) {
        this.f29839e = c8271a;
        this.f29835a = c8507t;
        this.f29842h = abstractC8336h;
        this.f29836b = c8484g;
        this.f29837c = c8356b;
        this.f29843i = c8361e;
        this.f29844j = abstractC8259a;
        this.f29845k = c8286ab;
        this.f29846l = c8416n;
        this.f29847m = c8368a;
    }

    /* renamed from: a */
    private C8498n m25941a(AdUnit adUnit) {
        return this.f29836b.m25597b(adUnit);
    }

    /* renamed from: a */
    private C8503s m25940a(AdUnit adUnit, ContextData contextData) {
        C8498n m25941a;
        C8503s m25929c;
        if (!this.f29835a.m25523h() && (m25941a = m25941a(adUnit)) != null) {
            synchronized (this.f29840f) {
                if (!m25938a(m25941a)) {
                    m25934a(Collections.singletonList(m25941a), contextData);
                }
                m25929c = m25929c(m25941a);
            }
            return m25929c;
        }
        return null;
    }

    /* renamed from: a */
    private boolean m25938a(C8498n c8498n) {
        boolean m25936a;
        if (this.f29841g.get() > this.f29842h.mo25381a()) {
            return true;
        }
        synchronized (this.f29840f) {
            m25936a = m25936a(this.f29839e.m25946a(c8498n));
        }
        return m25936a;
    }

    /* renamed from: b */
    private void m25932b(AdUnit adUnit, ContextData contextData, AbstractC8270d abstractC8270d) {
        if (this.f29835a.m25523h()) {
            abstractC8270d.mo25712a();
            return;
        }
        C8498n m25941a = m25941a(adUnit);
        if (m25941a == null) {
            abstractC8270d.mo25712a();
            return;
        }
        synchronized (this.f29840f) {
            m25931b(m25941a);
            if (m25938a(m25941a)) {
                m25937a(m25941a, abstractC8270d);
            } else {
                this.f29843i.m25793a(m25941a, contextData, new C8528u(abstractC8270d, this.f29844j, this, m25941a, this.f29847m));
            }
            this.f29845k.m25922a();
            this.f29846l.m25715a();
        }
    }

    /* renamed from: b */
    private void m25931b(C8498n c8498n) {
        synchronized (this.f29840f) {
            C8503s m25946a = this.f29839e.m25946a(c8498n);
            if (m25946a != null && m25930b(m25946a)) {
                this.f29839e.m25944b(c8498n);
                this.f29844j.mo25901a(c8498n, m25946a);
            }
        }
    }

    /* renamed from: b */
    private boolean m25930b(C8503s c8503s) {
        return c8503s.m25551a(this.f29842h);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* renamed from: c */
    private static double m25928c(C8503s c8503s) {
        return c8503s.m25549b() == null ? (char) 0 : c8503s.m25549b().doubleValue();
    }

    /* renamed from: c */
    private C8503s m25929c(C8498n c8498n) {
        synchronized (this.f29840f) {
            C8503s m25946a = this.f29839e.m25946a(c8498n);
            if (m25946a != null) {
                boolean m25936a = m25936a(m25946a);
                boolean m25930b = m25930b(m25946a);
                if (!m25936a) {
                    this.f29839e.m25944b(c8498n);
                    this.f29844j.mo25901a(c8498n, m25946a);
                }
                if (!m25936a && !m25930b) {
                    return m25946a;
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    public final void m25943a(int i) {
        if (i > 0) {
            this.f29838d.m25744a(C8281f.m25925a(i));
            this.f29841g.set(this.f29842h.mo25381a() + (i * 1000));
        }
    }

    /* renamed from: a */
    public final void m25939a(AdUnit adUnit, ContextData contextData, AbstractC8270d abstractC8270d) {
        if (adUnit == null) {
            abstractC8270d.mo25712a();
        } else if (this.f29835a.m25522i()) {
            m25932b(adUnit, contextData, abstractC8270d);
        } else {
            C8503s m25940a = m25940a(adUnit, contextData);
            if (m25940a != null) {
                abstractC8270d.mo25711a(m25940a);
            } else {
                abstractC8270d.mo25712a();
            }
        }
    }

    /* renamed from: a */
    public final void m25937a(C8498n c8498n, AbstractC8270d abstractC8270d) {
        C8503s m25929c = m25929c(c8498n);
        if (m25929c != null) {
            abstractC8270d.mo25711a(m25929c);
        } else {
            abstractC8270d.mo25712a();
        }
    }

    /* renamed from: a */
    public final void m25935a(List<C8503s> list) {
        synchronized (this.f29840f) {
            for (C8503s c8503s : list) {
                C8271a c8271a = this.f29839e;
                if (!m25936a(c8271a.m25946a(c8271a.m25945a(c8503s))) && c8503s.m25537n()) {
                    if (m25928c(c8503s) > 0.0d && c8503s.m25541j() == 0) {
                        c8503s.m25553a(VastError.ERROR_CODE_UNKNOWN);
                    }
                    C8271a c8271a2 = this.f29839e;
                    C8498n m25945a = c8271a2.m25945a(c8503s);
                    if (m25945a != null) {
                        c8271a2.f29833a.put(m25945a, c8503s);
                    }
                    this.f29844j.mo25896a(c8503s);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m25934a(List<C8498n> list, ContextData contextData) {
        if (this.f29835a.m25523h()) {
            return;
        }
        C8356b c8356b = this.f29837c;
        C8273a c8273a = new C8273a();
        ArrayList<C8498n> arrayList = new ArrayList(list);
        synchronized (c8356b.f30025f) {
            arrayList.removeAll(c8356b.f30024e.keySet());
            if (!arrayList.isEmpty()) {
                FutureTask futureTask = new FutureTask(new C8356b.RunnableC8357a(new C8359c(c8356b.f30022c, c8356b.f30020a, c8356b.f30021b, arrayList, contextData, c8273a), arrayList), null);
                for (C8498n c8498n : arrayList) {
                    c8356b.f30024e.put(c8498n, futureTask);
                }
                try {
                    c8356b.f30023d.execute(futureTask);
                } catch (Throwable th) {
                    c8356b.m25795a(arrayList);
                    throw th;
                }
            }
        }
        this.f29845k.m25922a();
        this.f29846l.m25715a();
    }

    /* renamed from: a */
    public final boolean m25936a(C8503s c8503s) {
        if (c8503s == null) {
            return false;
        }
        boolean z = false;
        if (c8503s.m25541j() > 0 && m25928c(c8503s) == 0.0d) {
            z = false;
            if (!m25930b(c8503s)) {
                z = true;
            }
        }
        return z;
    }
}
