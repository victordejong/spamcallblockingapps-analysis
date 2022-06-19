package p1727n3.p1795i.p1799b.p1800h.p1801m;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import n3.i.b.h.e;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.b.h.m.b */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/b.class */
public class C26370b {

    /* renamed from: a */
    public final ArrayList<C26363d> f73778a = new ArrayList<>();

    /* renamed from: b */
    public C26371a f73779b = new C26371a();

    /* renamed from: c */
    public e f73780c;

    /* renamed from: n3.i.b.h.m.b$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/m/b$a.class */
    public static class C26371a {

        /* renamed from: a */
        public C26363d.EnumC26364a f73781a;

        /* renamed from: b */
        public C26363d.EnumC26364a f73782b;

        /* renamed from: c */
        public int f73783c;

        /* renamed from: d */
        public int f73784d;

        /* renamed from: e */
        public int f73785e;

        /* renamed from: f */
        public int f73786f;

        /* renamed from: g */
        public int f73787g;

        /* renamed from: h */
        public boolean f73788h;

        /* renamed from: i */
        public boolean f73789i;

        /* renamed from: j */
        public int f73790j;
    }

    /* renamed from: n3.i.b.h.m.b$b */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/m/b$b.class */
    public interface AbstractC26372b {
    }

    public C26370b(e eVar) {
        this.f73780c = eVar;
    }

    /* renamed from: a */
    public final boolean m2034a(AbstractC26372b abstractC26372b, C26363d c26363d, int i) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.FIXED;
        this.f73779b.f73781a = c26363d.m2067r();
        this.f73779b.f73782b = c26363d.m2063v();
        this.f73779b.f73783c = c26363d.m2062w();
        this.f73779b.f73784d = c26363d.m2068q();
        C26371a c26371a = this.f73779b;
        c26371a.f73789i = false;
        c26371a.f73790j = i;
        C26363d.EnumC26364a enumC26364a2 = c26371a.f73781a;
        C26363d.EnumC26364a enumC26364a3 = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        boolean z = enumC26364a2 == enumC26364a3;
        boolean z2 = c26371a.f73782b == enumC26364a3;
        boolean z3 = z && c26363d.f73687U > 0.0f;
        boolean z4 = z2 && c26363d.f73687U > 0.0f;
        if (z3 && c26363d.f73719n[0] == 4) {
            c26371a.f73781a = enumC26364a;
        }
        if (z4 && c26363d.f73719n[1] == 4) {
            c26371a.f73782b = enumC26364a;
        }
        ((ConstraintLayout.C0113b) abstractC26372b).m43023b(c26363d, c26371a);
        c26363d.m2079S(this.f73779b.f73785e);
        c26363d.m2084N(this.f73779b.f73786f);
        C26371a c26371a2 = this.f73779b;
        c26363d.f73660A = c26371a2.f73788h;
        c26363d.m2087K(c26371a2.f73787g);
        C26371a c26371a3 = this.f73779b;
        c26371a3.f73790j = 0;
        return c26371a3.f73789i;
    }

    /* renamed from: b */
    public final void m2033b(e eVar, int i, int i2) {
        int i3 = eVar.f73700d0;
        int i4 = eVar.f73702e0;
        eVar.m2081Q(0);
        eVar.m2082P(0);
        eVar.f73685S = i;
        int i5 = eVar.f73700d0;
        if (i < i5) {
            eVar.f73685S = i5;
        }
        eVar.f73686T = i2;
        int i6 = eVar.f73702e0;
        if (i2 < i6) {
            eVar.f73686T = i6;
        }
        eVar.m2081Q(i3);
        eVar.m2082P(i4);
        this.f73780c.V();
    }

    /* renamed from: c */
    public void m2032c(e eVar) {
        this.f73778a.clear();
        int size = eVar.f73777H0.size();
        for (int i = 0; i < size; i++) {
            C26363d c26363d = eVar.f73777H0.get(i);
            C26363d.EnumC26364a m2067r = c26363d.m2067r();
            C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_CONSTRAINT;
            if (m2067r == enumC26364a || c26363d.m2063v() == enumC26364a) {
                this.f73778a.add(c26363d);
            }
        }
        eVar.c0();
    }
}
