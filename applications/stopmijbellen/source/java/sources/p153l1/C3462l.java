package p153l1;

import android.animation.TimeInterpolator;
import android.support.p012v4.media.AbstractC0081a;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.Iterator;
import p007a6.C0033h;
import p153l1.AbstractC3451g;
import p260v1.C4586g;
/* renamed from: l1.l */
/* loaded from: classes-dex2jar.jar:l1/l.class */
public class C3462l extends AbstractC3451g {

    /* renamed from: z */
    public int f11560z;

    /* renamed from: x */
    public ArrayList<AbstractC3451g> f11558x = new ArrayList<>();

    /* renamed from: y */
    public boolean f11559y = true;

    /* renamed from: A */
    public boolean f11556A = false;

    /* renamed from: B */
    public int f11557B = 0;

    /* renamed from: l1.l$a */
    /* loaded from: classes-dex2jar.jar:l1/l$a.class */
    public class C3463a extends C3458j {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3451g f11561a;

        public C3463a(C3462l c3462l, AbstractC3451g abstractC3451g) {
            this.f11561a = abstractC3451g;
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            this.f11561a.mo2248y();
            abstractC3451g.mo2251v(this);
        }
    }

    /* renamed from: l1.l$b */
    /* loaded from: classes-dex2jar.jar:l1/l$b.class */
    public static class C3464b extends C3458j {

        /* renamed from: a */
        public C3462l f11562a;

        public C3464b(C3462l c3462l) {
            this.f11562a = c3462l;
        }

        @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: b */
        public void mo2235b(AbstractC3451g abstractC3451g) {
            C3462l c3462l = this.f11562a;
            if (!c3462l.f11556A) {
                c3462l.m2281F();
                this.f11562a.f11556A = true;
            }
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            C3462l c3462l = this.f11562a;
            int i = c3462l.f11560z - 1;
            c3462l.f11560z = i;
            if (i == 0) {
                c3462l.f11556A = false;
                c3462l.m2276m();
            }
            abstractC3451g.mo2251v(this);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: A */
    public void mo2267A(AbstractC3451g.AbstractC3454c abstractC3454c) {
        this.f11539s = abstractC3454c;
        this.f11557B |= 8;
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            this.f11558x.get(i).mo2267A(abstractC3454c);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: B */
    public AbstractC3451g mo2266B(TimeInterpolator timeInterpolator) {
        this.f11557B |= 1;
        ArrayList<AbstractC3451g> arrayList = this.f11558x;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f11558x.get(i).mo2266B(timeInterpolator);
            }
        }
        this.f11524d = timeInterpolator;
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: C */
    public void mo2265C(AbstractC0081a abstractC0081a) {
        if (abstractC0081a == null) {
            this.f11540t = AbstractC3451g.f11519v;
        } else {
            this.f11540t = abstractC0081a;
        }
        this.f11557B |= 4;
        if (this.f11558x != null) {
            for (int i = 0; i < this.f11558x.size(); i++) {
                this.f11558x.get(i).mo2265C(abstractC0081a);
            }
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: D */
    public void mo2264D(AbstractC0081a abstractC0081a) {
        this.f11557B |= 2;
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            this.f11558x.get(i).mo2264D(abstractC0081a);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: E */
    public AbstractC3451g mo2263E(long j) {
        this.f11522b = j;
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: G */
    public String mo2262G(String str) {
        String mo2262G = super.mo2262G(str);
        for (int i = 0; i < this.f11558x.size(); i++) {
            StringBuilder m7624k = C0608b.m7624k(mo2262G, "\n");
            m7624k.append(this.f11558x.get(i).mo2262G(str + "  "));
            mo2262G = m7624k.toString();
        }
        return mo2262G;
    }

    /* renamed from: H */
    public C3462l m2261H(AbstractC3451g abstractC3451g) {
        this.f11558x.add(abstractC3451g);
        abstractC3451g.f11529i = this;
        long j = this.f11523c;
        if (j >= 0) {
            abstractC3451g.mo2247z(j);
        }
        if ((this.f11557B & 1) != 0) {
            abstractC3451g.mo2266B(this.f11524d);
        }
        if ((this.f11557B & 2) != 0) {
            abstractC3451g.mo2264D(null);
        }
        if ((this.f11557B & 4) != 0) {
            abstractC3451g.mo2265C(this.f11540t);
        }
        if ((this.f11557B & 8) != 0) {
            abstractC3451g.mo2267A(this.f11539s);
        }
        return this;
    }

    /* renamed from: I */
    public AbstractC3451g m2260I(int i) {
        if (i < 0 || i >= this.f11558x.size()) {
            return null;
        }
        return this.f11558x.get(i);
    }

    /* renamed from: J */
    public C3462l m2259J(int i) {
        if (i == 0) {
            this.f11559y = true;
        } else if (i != 1) {
            throw new AndroidRuntimeException(C0033h.m8886k("Invalid parameter for TransitionSet ordering: ", i));
        } else {
            this.f11559y = false;
        }
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: a */
    public AbstractC3451g mo2258a(AbstractC3451g.AbstractC3455d abstractC3455d) {
        super.mo2258a(abstractC3455d);
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: b */
    public AbstractC3451g mo2257b(View view) {
        for (int i = 0; i < this.f11558x.size(); i++) {
            this.f11558x.get(i).mo2257b(view);
        }
        this.f11526f.add(view);
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: d */
    public void mo2240d(C3466n c3466n) {
        if (m2272s(c3466n.f11567b)) {
            Iterator<AbstractC3451g> it2 = this.f11558x.iterator();
            while (it2.hasNext()) {
                AbstractC3451g next = it2.next();
                if (next.m2272s(c3466n.f11567b)) {
                    next.mo2240d(c3466n);
                    c3466n.f11568c.add(next);
                }
            }
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: f */
    public void mo2256f(C3466n c3466n) {
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            this.f11558x.get(i).mo2256f(c3466n);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: g */
    public void mo2255g(C3466n c3466n) {
        if (m2272s(c3466n.f11567b)) {
            Iterator<AbstractC3451g> it2 = this.f11558x.iterator();
            while (it2.hasNext()) {
                AbstractC3451g next = it2.next();
                if (next.m2272s(c3466n.f11567b)) {
                    next.mo2255g(c3466n);
                    c3466n.f11568c.add(next);
                }
            }
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: j */
    public AbstractC3451g clone() {
        C3462l c3462l = (C3462l) super.clone();
        c3462l.f11558x = new ArrayList<>();
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            AbstractC3451g clone = this.f11558x.get(i).clone();
            c3462l.f11558x.add(clone);
            clone.f11529i = c3462l;
        }
        return c3462l;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: l */
    public void mo2253l(ViewGroup viewGroup, C4586g c4586g, C4586g c4586g2, ArrayList<C3466n> arrayList, ArrayList<C3466n> arrayList2) {
        long j = this.f11522b;
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            AbstractC3451g abstractC3451g = this.f11558x.get(i);
            if (j > 0 && (this.f11559y || i == 0)) {
                long j2 = abstractC3451g.f11522b;
                if (j2 > 0) {
                    abstractC3451g.mo2263E(j2 + j);
                } else {
                    abstractC3451g.mo2263E(j);
                }
            }
            abstractC3451g.mo2253l(viewGroup, c4586g, c4586g2, arrayList, arrayList2);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: u */
    public void mo2252u(View view) {
        super.mo2252u(view);
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            this.f11558x.get(i).mo2252u(view);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: v */
    public AbstractC3451g mo2251v(AbstractC3451g.AbstractC3455d abstractC3455d) {
        super.mo2251v(abstractC3455d);
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: w */
    public AbstractC3451g mo2250w(View view) {
        for (int i = 0; i < this.f11558x.size(); i++) {
            this.f11558x.get(i).mo2250w(view);
        }
        this.f11526f.remove(view);
        return this;
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: x */
    public void mo2249x(View view) {
        super.mo2249x(view);
        int size = this.f11558x.size();
        for (int i = 0; i < size; i++) {
            this.f11558x.get(i).mo2249x(view);
        }
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: y */
    public void mo2248y() {
        if (this.f11558x.isEmpty()) {
            m2281F();
            m2276m();
            return;
        }
        C3464b c3464b = new C3464b(this);
        Iterator<AbstractC3451g> it2 = this.f11558x.iterator();
        while (it2.hasNext()) {
            it2.next().mo2258a(c3464b);
        }
        this.f11560z = this.f11558x.size();
        if (this.f11559y) {
            Iterator<AbstractC3451g> it3 = this.f11558x.iterator();
            while (it3.hasNext()) {
                it3.next().mo2248y();
            }
            return;
        }
        for (int i = 1; i < this.f11558x.size(); i++) {
            this.f11558x.get(i - 1).mo2258a(new C3463a(this, this.f11558x.get(i)));
        }
        AbstractC3451g abstractC3451g = this.f11558x.get(0);
        if (abstractC3451g == null) {
            return;
        }
        abstractC3451g.mo2248y();
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: z */
    public AbstractC3451g mo2247z(long j) {
        ArrayList<AbstractC3451g> arrayList;
        this.f11523c = j;
        if (j >= 0 && (arrayList = this.f11558x) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f11558x.get(i).mo2247z(j);
            }
        }
        return this;
    }
}
