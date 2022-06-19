package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b.class */
public final class C0513b {

    /* renamed from: b */
    public C0544f f1925b;

    /* renamed from: a */
    public final ArrayList<C0541e> f1924a = new ArrayList<>();

    /* renamed from: c */
    private C0514a f1926c = new C0514a();

    /* renamed from: androidx.constraintlayout.a.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b$a.class */
    public static final class C0514a {

        /* renamed from: a */
        public static int f1927a = 0;

        /* renamed from: b */
        public static int f1928b = 1;

        /* renamed from: c */
        public static int f1929c = 2;

        /* renamed from: d */
        public C0541e.EnumC0543a f1930d;

        /* renamed from: e */
        public C0541e.EnumC0543a f1931e;

        /* renamed from: f */
        public int f1932f;

        /* renamed from: g */
        public int f1933g;

        /* renamed from: h */
        public int f1934h;

        /* renamed from: i */
        public int f1935i;

        /* renamed from: j */
        public int f1936j;

        /* renamed from: k */
        public boolean f1937k;

        /* renamed from: l */
        public boolean f1938l;

        /* renamed from: m */
        public int f1939m;
    }

    /* renamed from: androidx.constraintlayout.a.a.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b$b.class */
    public interface AbstractC0515b {
        /* renamed from: a */
        void mo44734a();

        /* renamed from: a */
        void mo44732a(C0541e c0541e, C0514a c0514a);
    }

    public C0513b(C0544f c0544f) {
        this.f1925b = c0544f;
    }

    /* renamed from: a */
    public final void m45367a(C0544f c0544f) {
        this.f1924a.clear();
        int size = c0544f.f2231be.size();
        for (int i = 0; i < size; i++) {
            C0541e c0541e = c0544f.f2231be.get(i);
            if (c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT || c0541e.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                this.f1924a.add(c0541e);
            }
        }
        c0544f.m45230d();
    }

    /* renamed from: a */
    public final void m45366a(C0544f c0544f, int i, int i2) {
        int q = c0544f.m45254q();
        int r = c0544f.m45253r();
        c0544f.m45267i(0);
        c0544f.m45265j(0);
        c0544f.m45271g(i);
        c0544f.m45269h(i2);
        c0544f.m45267i(q);
        c0544f.m45265j(r);
        this.f1925b.mo45161z();
    }

    /* renamed from: a */
    public final boolean m45368a(AbstractC0515b abstractC0515b, C0541e c0541e, int i) {
        this.f1926c.f1930d = c0541e.f2059R[0];
        this.f1926c.f1931e = c0541e.f2059R[1];
        this.f1926c.f1932f = c0541e.m45257o();
        this.f1926c.f1933g = c0541e.m45255p();
        this.f1926c.f1938l = false;
        this.f1926c.f1939m = i;
        boolean z = this.f1926c.f1930d == C0541e.EnumC0543a.MATCH_CONSTRAINT;
        boolean z2 = this.f1926c.f1931e == C0541e.EnumC0543a.MATCH_CONSTRAINT;
        boolean z3 = z && c0541e.f2063V > BitmapDescriptorFactory.HUE_RED;
        boolean z4 = z2 && c0541e.f2063V > BitmapDescriptorFactory.HUE_RED;
        if (z3 && c0541e.f2122q[0] == 4) {
            this.f1926c.f1930d = C0541e.EnumC0543a.FIXED;
        }
        if (z4 && c0541e.f2122q[1] == 4) {
            this.f1926c.f1931e = C0541e.EnumC0543a.FIXED;
        }
        abstractC0515b.mo44732a(c0541e, this.f1926c);
        c0541e.m45271g(this.f1926c.f1934h);
        c0541e.m45269h(this.f1926c.f1935i);
        c0541e.f2044C = this.f1926c.f1937k;
        c0541e.m45264k(this.f1926c.f1936j);
        this.f1926c.f1939m = C0514a.f1927a;
        return this.f1926c.f1938l;
    }
}
