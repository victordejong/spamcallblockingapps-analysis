package p1727n3.p1795i.p1799b.p1800h.p1801m;

import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
/* renamed from: n3.i.b.h.m.f */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/f.class */
public class C26375f implements AbstractC26373d {

    /* renamed from: d */
    public AbstractC26381o f73802d;

    /* renamed from: f */
    public int f73804f;

    /* renamed from: g */
    public int f73805g;

    /* renamed from: a */
    public AbstractC26373d f73799a = null;

    /* renamed from: b */
    public boolean f73800b = false;

    /* renamed from: c */
    public boolean f73801c = false;

    /* renamed from: e */
    public EnumC26376a f73803e = EnumC26376a.UNKNOWN;

    /* renamed from: h */
    public int f73806h = 1;

    /* renamed from: i */
    public g f73807i = null;

    /* renamed from: j */
    public boolean f73808j = false;

    /* renamed from: k */
    public List<AbstractC26373d> f73809k = new ArrayList();

    /* renamed from: l */
    public List<C26375f> f73810l = new ArrayList();

    /* renamed from: n3.i.b.h.m.f$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/m/f$a.class */
    public enum EnumC26376a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public C26375f(AbstractC26381o abstractC26381o) {
        this.f73802d = abstractC26381o;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.p1801m.AbstractC26373d
    /* renamed from: a */
    public void mo2009a(AbstractC26373d abstractC26373d) {
        for (C26375f c26375f : this.f73810l) {
            if (!c26375f.f73808j) {
                return;
            }
        }
        this.f73801c = true;
        AbstractC26373d abstractC26373d2 = this.f73799a;
        if (abstractC26373d2 != null) {
            abstractC26373d2.mo2009a(this);
        }
        if (this.f73800b) {
            this.f73802d.mo2009a(this);
            return;
        }
        C26375f c26375f2 = null;
        int i = 0;
        for (C26375f c26375f3 : this.f73810l) {
            if (!(c26375f3 instanceof g)) {
                i++;
                c26375f2 = c26375f3;
            }
        }
        if (c26375f2 != null && i == 1 && c26375f2.f73808j) {
            g gVar = this.f73807i;
            if (gVar != null) {
                if (!gVar.f73808j) {
                    return;
                }
                this.f73804f = this.f73806h * gVar.f73805g;
            }
            m2023c(c26375f2.f73805g + this.f73804f);
        }
        AbstractC26373d abstractC26373d3 = this.f73799a;
        if (abstractC26373d3 == null) {
            return;
        }
        abstractC26373d3.mo2009a(this);
    }

    /* renamed from: b */
    public void m2024b() {
        this.f73810l.clear();
        this.f73809k.clear();
        this.f73808j = false;
        this.f73805g = 0;
        this.f73801c = false;
        this.f73800b = false;
    }

    /* renamed from: c */
    public void m2023c(int i) {
        if (this.f73808j) {
            return;
        }
        this.f73808j = true;
        this.f73805g = i;
        for (AbstractC26373d abstractC26373d : this.f73809k) {
            abstractC26373d.mo2009a(abstractC26373d);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f73802d.f73831b.f73714k0);
        sb.append(StringConstant.COLON);
        sb.append(this.f73803e);
        sb.append("(");
        sb.append(this.f73808j ? Integer.valueOf(this.f73805g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f73810l.size());
        sb.append(":d=");
        sb.append(this.f73809k.size());
        sb.append(">");
        return sb.toString();
    }
}
