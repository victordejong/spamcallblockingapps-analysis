package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.y5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y5.class */
public final class C7170y5 {

    /* renamed from: d */
    private final AbstractC7133x5 f32421d;

    /* renamed from: e */
    private final vk3 f32422e;

    /* renamed from: f */
    private final gj2 f32423f;

    /* renamed from: i */
    private boolean f32426i;

    /* renamed from: j */
    private AbstractC6816ol f32427j;

    /* renamed from: k */
    private em3 f32428k = new em3(0);

    /* renamed from: b */
    private final IdentityHashMap<lk3, C7096w5> f32419b = new IdentityHashMap<>();

    /* renamed from: c */
    private final Map<Object, C7096w5> f32420c = new HashMap();

    /* renamed from: a */
    private final List<C7096w5> f32418a = new ArrayList();

    /* renamed from: g */
    private final HashMap<C7096w5, C7059v5> f32424g = new HashMap<>();

    /* renamed from: h */
    private final Set<C7096w5> f32425h = new HashSet();

    public C7170y5(AbstractC7133x5 abstractC7133x5, rz0 rz0Var, Handler handler) {
        this.f32421d = abstractC7133x5;
        vk3 vk3Var = new vk3();
        this.f32422e = vk3Var;
        gj2 gj2Var = new gj2();
        this.f32423f = gj2Var;
        vk3Var.m9952b(handler, rz0Var);
        gj2Var.m14928b(handler, rz0Var);
    }

    /* renamed from: p */
    private final void m8936p() {
        Iterator<C7096w5> it = this.f32425h.iterator();
        while (it.hasNext()) {
            C7096w5 next = it.next();
            if (next.f31456c.isEmpty()) {
                m8935q(next);
                it.remove();
            }
        }
    }

    /* renamed from: q */
    private final void m8935q(C7096w5 c7096w5) {
        C7059v5 c7059v5 = this.f32424g.get(c7096w5);
        if (c7059v5 != null) {
            c7059v5.f31076a.mo12602h(c7059v5.f31077b);
        }
    }

    /* renamed from: r */
    private final void m8934r(int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i3 >= i) {
                C7096w5 remove = this.f32418a.remove(i3);
                this.f32420c.remove(remove.f31455b);
                m8933s(i3, -remove.f31454a.m14357D().mo11687a());
                remove.f31458e = true;
                i2 = i3;
                if (this.f32426i) {
                    m8931u(remove);
                    i2 = i3;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: s */
    private final void m8933s(int i, int i2) {
        while (i < this.f32418a.size()) {
            this.f32418a.get(i).f31457d += i2;
            i++;
        }
    }

    /* renamed from: t */
    private final void m8932t(C7096w5 c7096w5) {
        ik3 ik3Var = c7096w5.f31454a;
        nk3 nk3Var = new nk3(this) { // from class: com.google.android.gms.internal.ads.t5

            /* renamed from: a */
            private final C7170y5 f29809a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29809a = this;
            }

            @Override // com.google.android.gms.internal.ads.nk3
            /* renamed from: a */
            public final void mo10644a(ok3 ok3Var, AbstractC6839p7 abstractC6839p7) {
                this.f29809a.m8943i(ok3Var, abstractC6839p7);
            }
        };
        C7022u5 c7022u5 = new C7022u5(this, c7096w5);
        this.f32424g.put(c7096w5, new C7059v5(ik3Var, nk3Var, c7022u5));
        ik3Var.mo12606b(new Handler(C7101wa.m9712P(), null), c7022u5);
        ik3Var.mo12601i(new Handler(C7101wa.m9712P(), null), c7022u5);
        ik3Var.mo12607a(nk3Var, this.f32427j);
    }

    /* renamed from: u */
    private final void m8931u(C7096w5 c7096w5) {
        if (!c7096w5.f31458e || !c7096w5.f31456c.isEmpty()) {
            return;
        }
        C7059v5 remove = this.f32424g.remove(c7096w5);
        Objects.requireNonNull(remove);
        remove.f31076a.mo12605d(remove.f31077b);
        remove.f31076a.mo12604f(remove.f31078c);
        remove.f31076a.mo12603g(remove.f31078c);
        this.f32425h.remove(c7096w5);
    }

    /* renamed from: c */
    public final boolean m8949c() {
        return this.f32426i;
    }

    /* renamed from: d */
    public final int m8948d() {
        return this.f32418a.size();
    }

    /* renamed from: e */
    public final void m8947e(AbstractC6816ol abstractC6816ol) {
        C7173y8.m8895d(!this.f32426i);
        this.f32427j = abstractC6816ol;
        for (int i = 0; i < this.f32418a.size(); i++) {
            C7096w5 c7096w5 = this.f32418a.get(i);
            m8932t(c7096w5);
            this.f32425h.add(c7096w5);
        }
        this.f32426i = true;
    }

    /* renamed from: f */
    public final void m8946f(lk3 lk3Var) {
        C7096w5 remove = this.f32419b.remove(lk3Var);
        Objects.requireNonNull(remove);
        remove.f31454a.mo10991c(lk3Var);
        remove.f31456c.remove(((ek3) lk3Var).f22260d);
        if (!this.f32419b.isEmpty()) {
            m8936p();
        }
        m8931u(remove);
    }

    /* renamed from: g */
    public final void m8945g() {
        for (C7059v5 c7059v5 : this.f32424g.values()) {
            try {
                c7059v5.f31076a.mo12605d(c7059v5.f31077b);
            } catch (RuntimeException e) {
                C6952s9.m11098b("MediaSourceList", "Failed to release child source.", e);
            }
            c7059v5.f31076a.mo12604f(c7059v5.f31078c);
            c7059v5.f31076a.mo12603g(c7059v5.f31078c);
        }
        this.f32424g.clear();
        this.f32425h.clear();
        this.f32426i = false;
    }

    /* renamed from: h */
    public final AbstractC6839p7 m8944h() {
        if (!this.f32418a.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < this.f32418a.size(); i2++) {
                C7096w5 c7096w5 = this.f32418a.get(i2);
                c7096w5.f31457d = i;
                i += c7096w5.f31454a.m14357D().mo11687a();
            }
            return new C6912r6(this.f32418a, this.f32428k, null);
        }
        return AbstractC6839p7.f27885a;
    }

    /* renamed from: i */
    public final /* synthetic */ void m8943i(ok3 ok3Var, AbstractC6839p7 abstractC6839p7) {
        this.f32421d.mo9354i();
    }

    /* renamed from: j */
    public final AbstractC6839p7 m8942j(List<C7096w5> list, em3 em3Var) {
        m8934r(0, this.f32418a.size());
        return m8941k(this.f32418a.size(), list, em3Var);
    }

    /* renamed from: k */
    public final AbstractC6839p7 m8941k(int i, List<C7096w5> list, em3 em3Var) {
        if (!list.isEmpty()) {
            this.f32428k = em3Var;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                C7096w5 c7096w5 = list.get(i2 - i);
                if (i2 > 0) {
                    C7096w5 c7096w52 = this.f32418a.get(i2 - 1);
                    c7096w5.m9782a(c7096w52.f31457d + c7096w52.f31454a.m14357D().mo11687a());
                } else {
                    c7096w5.m9782a(0);
                }
                m8933s(i2, c7096w5.f31454a.m14357D().mo11687a());
                this.f32418a.add(i2, c7096w5);
                this.f32420c.put(c7096w5.f31455b, c7096w5);
                if (this.f32426i) {
                    m8932t(c7096w5);
                    if (this.f32419b.isEmpty()) {
                        this.f32425h.add(c7096w5);
                    } else {
                        m8935q(c7096w5);
                    }
                }
            }
        }
        return m8944h();
    }

    /* renamed from: l */
    public final AbstractC6839p7 m8940l(int i, int i2, em3 em3Var) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= i2) {
                z = false;
                if (i2 <= m8948d()) {
                    z = true;
                }
            }
        }
        C7173y8.m8898a(z);
        this.f32428k = em3Var;
        m8934r(i, i2);
        return m8944h();
    }

    /* renamed from: m */
    public final AbstractC6839p7 m8939m(int i, int i2, int i3, em3 em3Var) {
        C7173y8.m8898a(m8948d() >= 0);
        this.f32428k = null;
        return m8944h();
    }

    /* renamed from: n */
    public final AbstractC6839p7 m8938n(em3 em3Var) {
        int m8948d = m8948d();
        em3 em3Var2 = em3Var;
        if (em3Var.m15432a() != m8948d) {
            em3Var2 = em3Var.m15425h().m15427f(0, m8948d);
        }
        this.f32428k = em3Var2;
        return m8944h();
    }

    /* renamed from: o */
    public final lk3 m8937o(mk3 mk3Var, tn3 tn3Var, long j) {
        Object obj = mk3Var.f20100a;
        Object obj2 = ((Pair) obj).first;
        mk3 m13170c = mk3Var.m13170c(((Pair) obj).second);
        C7096w5 c7096w5 = this.f32420c.get(obj2);
        Objects.requireNonNull(c7096w5);
        this.f32425h.add(c7096w5);
        C7059v5 c7059v5 = this.f32424g.get(c7096w5);
        if (c7059v5 != null) {
            c7059v5.f31076a.mo12600k(c7059v5.f31077b);
        }
        c7096w5.f31456c.add(m13170c);
        ek3 mo10990e = c7096w5.f31454a.mo10990e(m13170c, tn3Var, j);
        this.f32419b.put(mo10990e, c7096w5);
        m8936p();
        return mo10990e;
    }
}
