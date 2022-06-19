package p1727n3.p1829l0.p1831b;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* renamed from: n3.l0.b.f */
/* loaded from: classes-dex2jar.jar:n3/l0/b/f.class */
public final class C26658f extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public ViewPager2.AbstractC0407e f74600a;

    /* renamed from: b */
    public final ViewPager2 f74601b;

    /* renamed from: c */
    public final RecyclerView f74602c;

    /* renamed from: d */
    public final LinearLayoutManager f74603d;

    /* renamed from: e */
    public int f74604e;

    /* renamed from: f */
    public int f74605f;

    /* renamed from: g */
    public C26659a f74606g = new C26659a();

    /* renamed from: h */
    public int f74607h;

    /* renamed from: i */
    public int f74608i;

    /* renamed from: j */
    public boolean f74609j;

    /* renamed from: k */
    public boolean f74610k;

    /* renamed from: l */
    public boolean f74611l;

    /* renamed from: m */
    public boolean f74612m;

    /* renamed from: n3.l0.b.f$a */
    /* loaded from: classes-dex2jar.jar:n3/l0/b/f$a.class */
    public static final class C26659a {

        /* renamed from: a */
        public int f74613a;

        /* renamed from: b */
        public float f74614b;

        /* renamed from: c */
        public int f74615c;

        /* renamed from: a */
        public void m1515a() {
            this.f74613a = -1;
            this.f74614b = 0.0f;
            this.f74615c = 0;
        }
    }

    public C26658f(ViewPager2 viewPager2) {
        this.f74601b = viewPager2;
        RecyclerView recyclerView = viewPager2.f1527j;
        this.f74602c = recyclerView;
        this.f74603d = (LinearLayoutManager) recyclerView.getLayoutManager();
        m1517f();
    }

    /* renamed from: d */
    public final void m1519d(int i) {
        ViewPager2.AbstractC0407e abstractC0407e = this.f74600a;
        if (abstractC0407e != null) {
            abstractC0407e.mo1513g(i);
        }
    }

    /* renamed from: e */
    public final void m1518e(int i) {
        if ((this.f74604e == 3 && this.f74605f == 0) || this.f74605f == i) {
            return;
        }
        this.f74605f = i;
        ViewPager2.AbstractC0407e abstractC0407e = this.f74600a;
        if (abstractC0407e == null) {
            return;
        }
        abstractC0407e.mo1514b(i);
    }

    /* renamed from: f */
    public final void m1517f() {
        this.f74604e = 0;
        this.f74605f = 0;
        this.f74606g.m1515a();
        this.f74607h = -1;
        this.f74608i = -1;
        this.f74609j = false;
        this.f74610k = false;
        this.f74612m = false;
        this.f74611l = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0255, code lost:
        if (r0[r0 - 1][1] >= (r0 - r0)) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x029e A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1516g() {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1829l0.p1831b.C26658f.m1516g():void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        boolean z;
        int i2 = this.f74604e;
        if (!(i2 == 1 && this.f74605f == 1) && i == 1) {
            this.f74612m = false;
            this.f74604e = 1;
            int i3 = this.f74608i;
            if (i3 != -1) {
                this.f74607h = i3;
                this.f74608i = -1;
            } else if (this.f74607h == -1) {
                this.f74607h = this.f74603d.findFirstVisibleItemPosition();
            }
            m1518e(1);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (!this.f74610k) {
                return;
            }
            m1518e(2);
            this.f74609j = true;
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 0) {
            m1516g();
            if (!this.f74610k) {
                int i4 = this.f74606g.f74613a;
                z = true;
                if (i4 != -1) {
                    ViewPager2.AbstractC0407e abstractC0407e = this.f74600a;
                    z = true;
                    if (abstractC0407e != null) {
                        abstractC0407e.mo1520a(i4, 0.0f, 0);
                        z = true;
                    }
                }
            } else {
                C26659a c26659a = this.f74606g;
                if (c26659a.f74615c == 0) {
                    int i5 = this.f74607h;
                    int i6 = c26659a.f74613a;
                    z = true;
                    if (i5 != i6) {
                        m1519d(i6);
                        z = true;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                m1518e(0);
                m1517f();
            }
        }
        if (this.f74604e != 2 || i != 0 || !this.f74611l) {
            return;
        }
        m1516g();
        C26659a c26659a2 = this.f74606g;
        if (c26659a2.f74615c != 0) {
            return;
        }
        int i7 = this.f74608i;
        int i8 = c26659a2.f74613a;
        if (i7 != i8) {
            int i9 = i8;
            if (i8 == -1) {
                i9 = 0;
            }
            m1519d(i9);
        }
        m1518e(0);
        m1517f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.f74601b.m42623a()) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1829l0.p1831b.C26658f.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }
}
