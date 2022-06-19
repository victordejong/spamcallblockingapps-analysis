package p1727n3.p1789g0;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1789g0.AbstractC26214m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.g0.s */
/* loaded from: classes-dex2jar.jar:n3/g0/s.class */
public class C26225s extends AbstractC26214m {

    /* renamed from: A */
    public int f73115A;

    /* renamed from: y */
    public ArrayList<AbstractC26214m> f73118y = new ArrayList<>();

    /* renamed from: z */
    public boolean f73119z = true;

    /* renamed from: B */
    public boolean f73116B = false;

    /* renamed from: C */
    public int f73117C = 0;

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: A */
    public void mo2520A(View view) {
        super.mo2520A(view);
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            this.f73118y.get(i).mo2520A(view);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: B */
    public void mo2519B() {
        if (this.f73118y.isEmpty()) {
            m2540J();
            m2534o();
            return;
        }
        AbstractC26214m.AbstractC26218d bVar = new b(this);
        Iterator<AbstractC26214m> it = this.f73118y.iterator();
        while (it.hasNext()) {
            it.next().mo2506a(bVar);
        }
        this.f73115A = this.f73118y.size();
        if (this.f73119z) {
            Iterator<AbstractC26214m> it2 = this.f73118y.iterator();
            while (it2.hasNext()) {
                it2.next().mo2519B();
            }
            return;
        }
        for (int i = 1; i < this.f73118y.size(); i++) {
            this.f73118y.get(i - 1).mo2506a(new a(this, this.f73118y.get(i)));
        }
        AbstractC26214m abstractC26214m = this.f73118y.get(0);
        if (abstractC26214m == null) {
            return;
        }
        abstractC26214m.mo2519B();
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: C */
    public /* bridge */ /* synthetic */ AbstractC26214m mo2518C(long j) {
        m2508O(j);
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: D */
    public void mo2517D(AbstractC26214m.AbstractC26217c abstractC26217c) {
        this.f73100t = abstractC26217c;
        this.f73117C |= 8;
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            this.f73118y.get(i).mo2517D(abstractC26217c);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: E */
    public AbstractC26214m mo2516E(TimeInterpolator timeInterpolator) {
        this.f73117C |= 1;
        ArrayList<AbstractC26214m> arrayList = this.f73118y;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f73118y.get(i).mo2516E(timeInterpolator);
            }
        }
        this.f73084d = timeInterpolator;
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: F */
    public void mo2515F(AbstractC26205h abstractC26205h) {
        if (abstractC26205h == null) {
            this.f73101u = AbstractC26214m.f73079w;
        } else {
            this.f73101u = abstractC26205h;
        }
        this.f73117C |= 4;
        if (this.f73118y != null) {
            for (int i = 0; i < this.f73118y.size(); i++) {
                this.f73118y.get(i).mo2515F(abstractC26205h);
            }
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: G */
    public void mo2514G(AbstractC26224r abstractC26224r) {
        this.f73099s = abstractC26224r;
        this.f73117C |= 2;
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            this.f73118y.get(i).mo2514G(abstractC26224r);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: H */
    public AbstractC26214m mo2513H(long j) {
        this.f73082b = j;
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: K */
    public String mo2512K(String str) {
        String mo2512K = super.mo2512K(str);
        for (int i = 0; i < this.f73118y.size(); i++) {
            StringBuilder m8696K = C22128a.m8696K(mo2512K, StringConstant.NEW_LINE);
            m8696K.append(this.f73118y.get(i).mo2512K(str + "  "));
            mo2512K = m8696K.toString();
        }
        return mo2512K;
    }

    /* renamed from: L */
    public C26225s m2511L(AbstractC26214m.AbstractC26218d abstractC26218d) {
        super.mo2506a(abstractC26218d);
        return this;
    }

    /* renamed from: M */
    public C26225s m2510M(AbstractC26214m abstractC26214m) {
        this.f73118y.add(abstractC26214m);
        abstractC26214m.f73089i = this;
        long j = this.f73083c;
        if (j >= 0) {
            abstractC26214m.mo2518C(j);
        }
        if ((this.f73117C & 1) != 0) {
            abstractC26214m.mo2516E(this.f73084d);
        }
        if ((this.f73117C & 2) != 0) {
            abstractC26214m.mo2514G(this.f73099s);
        }
        if ((this.f73117C & 4) != 0) {
            abstractC26214m.mo2515F(this.f73101u);
        }
        if ((this.f73117C & 8) != 0) {
            abstractC26214m.mo2517D(this.f73100t);
        }
        return this;
    }

    /* renamed from: N */
    public AbstractC26214m m2509N(int i) {
        if (i < 0 || i >= this.f73118y.size()) {
            return null;
        }
        return this.f73118y.get(i);
    }

    /* renamed from: O */
    public C26225s m2508O(long j) {
        ArrayList<AbstractC26214m> arrayList;
        this.f73083c = j;
        if (j >= 0 && (arrayList = this.f73118y) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f73118y.get(i).mo2518C(j);
            }
        }
        return this;
    }

    /* renamed from: P */
    public C26225s m2507P(int i) {
        if (i == 0) {
            this.f73119z = true;
        } else if (i != 1) {
            throw new AndroidRuntimeException(C22128a.m8611i2("Invalid parameter for TransitionSet ordering: ", i));
        } else {
            this.f73119z = false;
        }
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: a */
    public AbstractC26214m mo2506a(AbstractC26214m.AbstractC26218d abstractC26218d) {
        super.mo2506a(abstractC26218d);
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: b */
    public AbstractC26214m mo2505b(int i) {
        for (int i2 = 0; i2 < this.f73118y.size(); i2++) {
            this.f73118y.get(i2).mo2505b(i);
        }
        super.mo2505b(i);
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: c */
    public AbstractC26214m mo2504c(View view) {
        for (int i = 0; i < this.f73118y.size(); i++) {
            this.f73118y.get(i).mo2504c(view);
        }
        this.f73086f.add(view);
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: f */
    public void mo2503f(C26227u c26227u) {
        if (m2527v(c26227u.f73124b)) {
            Iterator<AbstractC26214m> it = this.f73118y.iterator();
            while (it.hasNext()) {
                AbstractC26214m next = it.next();
                if (next.m2527v(c26227u.f73124b)) {
                    next.mo2503f(c26227u);
                    c26227u.f73125c.add(next);
                }
            }
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: h */
    public void mo2502h(C26227u c26227u) {
        super.mo2502h(c26227u);
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            this.f73118y.get(i).mo2502h(c26227u);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: i */
    public void mo2501i(C26227u c26227u) {
        if (m2527v(c26227u.f73124b)) {
            Iterator<AbstractC26214m> it = this.f73118y.iterator();
            while (it.hasNext()) {
                AbstractC26214m next = it.next();
                if (next.m2527v(c26227u.f73124b)) {
                    next.mo2501i(c26227u);
                    c26227u.f73125c.add(next);
                }
            }
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: l */
    public AbstractC26214m clone() {
        C26225s c26225s = (C26225s) super.clone();
        c26225s.f73118y = new ArrayList<>();
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            AbstractC26214m clone = this.f73118y.get(i).clone();
            c26225s.f73118y.add(clone);
            clone.f73089i = c26225s;
        }
        return c26225s;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: n */
    public void mo2499n(ViewGroup viewGroup, C26228v c26228v, C26228v c26228v2, ArrayList<C26227u> arrayList, ArrayList<C26227u> arrayList2) {
        long j = this.f73082b;
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            AbstractC26214m abstractC26214m = this.f73118y.get(i);
            if (j > 0 && (this.f73119z || i == 0)) {
                long j2 = abstractC26214m.f73082b;
                if (j2 > 0) {
                    abstractC26214m.mo2513H(j2 + j);
                } else {
                    abstractC26214m.mo2513H(j);
                }
            }
            abstractC26214m.mo2499n(viewGroup, c26228v, c26228v2, arrayList, arrayList2);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: x */
    public void mo2498x(View view) {
        super.mo2498x(view);
        int size = this.f73118y.size();
        for (int i = 0; i < size; i++) {
            this.f73118y.get(i).mo2498x(view);
        }
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: y */
    public AbstractC26214m mo2497y(AbstractC26214m.AbstractC26218d abstractC26218d) {
        super.mo2497y(abstractC26218d);
        return this;
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: z */
    public AbstractC26214m mo2496z(View view) {
        for (int i = 0; i < this.f73118y.size(); i++) {
            this.f73118y.get(i).mo2496z(view);
        }
        this.f73086f.remove(view);
        return this;
    }
}
