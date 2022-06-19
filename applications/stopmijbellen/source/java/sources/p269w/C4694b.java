package p269w;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import p258v.C4566d;
import p258v.C4567e;
/* renamed from: w.b */
/* loaded from: classes-dex2jar.jar:w/b.class */
public class C4694b {

    /* renamed from: a */
    public final ArrayList<C4566d> f14503a = new ArrayList<>();

    /* renamed from: b */
    public C4695a f14504b = new C4695a();

    /* renamed from: c */
    public C4567e f14505c;

    /* renamed from: w.b$a */
    /* loaded from: classes-dex2jar.jar:w/b$a.class */
    public static class C4695a {

        /* renamed from: a */
        public int f14506a;

        /* renamed from: b */
        public int f14507b;

        /* renamed from: c */
        public int f14508c;

        /* renamed from: d */
        public int f14509d;

        /* renamed from: e */
        public int f14510e;

        /* renamed from: f */
        public int f14511f;

        /* renamed from: g */
        public int f14512g;

        /* renamed from: h */
        public boolean f14513h;

        /* renamed from: i */
        public boolean f14514i;

        /* renamed from: j */
        public int f14515j;
    }

    /* renamed from: w.b$b */
    /* loaded from: classes-dex2jar.jar:w/b$b.class */
    public interface AbstractC4696b {
    }

    public C4694b(C4567e c4567e) {
        this.f14505c = c4567e;
    }

    /* renamed from: a */
    public final boolean m596a(AbstractC4696b abstractC4696b, C4566d c4566d, int i) {
        this.f14504b.f14506a = c4566d.m802m();
        this.f14504b.f14507b = c4566d.m796t();
        this.f14504b.f14508c = c4566d.m795u();
        this.f14504b.f14509d = c4566d.m803l();
        C4695a c4695a = this.f14504b;
        c4695a.f14514i = false;
        c4695a.f14515j = i;
        boolean z = c4695a.f14506a == 3;
        boolean z2 = c4695a.f14507b == 3;
        boolean z3 = z && c4566d.f14072Y > 0.0f;
        boolean z4 = z2 && c4566d.f14072Y > 0.0f;
        if (z3 && c4566d.f14110t[0] == 4) {
            c4695a.f14506a = 1;
        }
        if (z4 && c4566d.f14110t[1] == 4) {
            c4695a.f14507b = 1;
        }
        ((ConstraintLayout.C0307b) abstractC4696b).m8367b(c4566d, c4695a);
        c4566d.m811S(this.f14504b.f14510e);
        c4566d.m816N(this.f14504b.f14511f);
        C4695a c4695a2 = this.f14504b;
        c4566d.f14052E = c4695a2.f14513h;
        c4566d.m819K(c4695a2.f14512g);
        C4695a c4695a3 = this.f14504b;
        c4695a3.f14515j = 0;
        return c4695a3.f14514i;
    }

    /* renamed from: b */
    public final void m595b(C4567e c4567e, int i, int i2, int i3) {
        int i4 = c4567e.f14081d0;
        int i5 = c4567e.f14083e0;
        c4567e.m813Q(0);
        c4567e.m814P(0);
        c4567e.f14070W = i2;
        int i6 = c4567e.f14081d0;
        if (i2 < i6) {
            c4567e.f14070W = i6;
        }
        c4567e.f14071X = i3;
        int i7 = c4567e.f14083e0;
        if (i3 < i7) {
            c4567e.f14071X = i7;
        }
        c4567e.m813Q(i4);
        c4567e.m814P(i5);
        C4567e c4567e2 = this.f14505c;
        c4567e2.f14132u0 = i;
        c4567e2.mo764V();
    }

    /* renamed from: c */
    public void m594c(C4567e c4567e) {
        this.f14503a.clear();
        int size = c4567e.f14146r0.size();
        for (int i = 0; i < size; i++) {
            C4566d c4566d = c4567e.f14146r0.get(i);
            if (c4566d.m802m() == 3 || c4566d.m796t() == 3) {
                this.f14503a.add(c4566d);
            }
        }
        c4567e.m781d0();
    }
}
