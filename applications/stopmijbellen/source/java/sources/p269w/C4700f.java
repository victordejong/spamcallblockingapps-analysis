package p269w;

import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: w.f */
/* loaded from: classes-dex2jar.jar:w/f.class */
public class C4700f implements AbstractC4698d {

    /* renamed from: d */
    public AbstractC4711p f14529d;

    /* renamed from: f */
    public int f14531f;

    /* renamed from: g */
    public int f14532g;

    /* renamed from: a */
    public AbstractC4698d f14526a = null;

    /* renamed from: b */
    public boolean f14527b = false;

    /* renamed from: c */
    public boolean f14528c = false;

    /* renamed from: e */
    public int f14530e = 1;

    /* renamed from: h */
    public int f14533h = 1;

    /* renamed from: i */
    public C4701g f14534i = null;

    /* renamed from: j */
    public boolean f14535j = false;

    /* renamed from: k */
    public List<AbstractC4698d> f14536k = new ArrayList();

    /* renamed from: l */
    public List<C4700f> f14537l = new ArrayList();

    public C4700f(AbstractC4711p abstractC4711p) {
        this.f14529d = abstractC4711p;
    }

    @Override // p269w.AbstractC4698d
    /* renamed from: a */
    public void mo561a(AbstractC4698d abstractC4698d) {
        for (C4700f c4700f : this.f14537l) {
            if (!c4700f.f14535j) {
                return;
            }
        }
        this.f14528c = true;
        AbstractC4698d abstractC4698d2 = this.f14526a;
        if (abstractC4698d2 != null) {
            abstractC4698d2.mo561a(this);
        }
        if (this.f14527b) {
            this.f14529d.mo561a(this);
            return;
        }
        C4700f c4700f2 = null;
        int i = 0;
        for (C4700f c4700f3 : this.f14537l) {
            if (!(c4700f3 instanceof C4701g)) {
                i++;
                c4700f2 = c4700f3;
            }
        }
        if (c4700f2 != null && i == 1 && c4700f2.f14535j) {
            C4701g c4701g = this.f14534i;
            if (c4701g != null) {
                if (!c4701g.f14535j) {
                    return;
                }
                this.f14531f = this.f14533h * c4701g.f14532g;
            }
            mo583c(c4700f2.f14532g + this.f14531f);
        }
        AbstractC4698d abstractC4698d3 = this.f14526a;
        if (abstractC4698d3 == null) {
            return;
        }
        abstractC4698d3.mo561a(this);
    }

    /* renamed from: b */
    public void m584b() {
        this.f14537l.clear();
        this.f14536k.clear();
        this.f14535j = false;
        this.f14532g = 0;
        this.f14528c = false;
        this.f14527b = false;
    }

    /* renamed from: c */
    public void mo583c(int i) {
        if (this.f14535j) {
            return;
        }
        this.f14535j = true;
        this.f14532g = i;
        for (AbstractC4698d abstractC4698d : this.f14536k) {
            abstractC4698d.mo561a(abstractC4698d);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14529d.f14555b.f14093j0);
        sb.append(":");
        sb.append(C0608b.m7620o(this.f14530e));
        sb.append("(");
        sb.append(this.f14535j ? Integer.valueOf(this.f14532g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f14537l.size());
        sb.append(":d=");
        sb.append(this.f14536k.size());
        sb.append(">");
        return sb.toString();
    }
}
