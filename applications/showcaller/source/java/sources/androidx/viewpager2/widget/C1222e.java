package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* renamed from: androidx.viewpager2.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e.class */
public final class C1222e extends RecyclerView.AbstractC0929s {

    /* renamed from: a */
    private ViewPager2.AbstractC1208i f5186a;

    /* renamed from: b */
    private final ViewPager2 f5187b;

    /* renamed from: c */
    private final RecyclerView f5188c;

    /* renamed from: d */
    private final LinearLayoutManager f5189d;

    /* renamed from: e */
    private int f5190e;

    /* renamed from: f */
    private int f5191f;

    /* renamed from: g */
    private C1223a f5192g = new C1223a();

    /* renamed from: h */
    private int f5193h;

    /* renamed from: i */
    private int f5194i;

    /* renamed from: j */
    private boolean f5195j;

    /* renamed from: k */
    private boolean f5196k;

    /* renamed from: l */
    private boolean f5197l;

    /* renamed from: m */
    private boolean f5198m;

    /* renamed from: androidx.viewpager2.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e$a.class */
    public static final class C1223a {

        /* renamed from: a */
        int f5199a;

        /* renamed from: b */
        float f5200b;

        /* renamed from: c */
        int f5201c;

        C1223a() {
        }

        /* renamed from: a */
        void m30623a() {
            this.f5199a = -1;
            this.f5200b = 0.0f;
            this.f5201c = 0;
        }
    }

    public C1222e(ViewPager2 viewPager2) {
        this.f5187b = viewPager2;
        RecyclerView recyclerView = viewPager2.f5145n;
        this.f5188c = recyclerView;
        this.f5189d = (LinearLayoutManager) recyclerView.getLayoutManager();
        m30627n();
    }

    /* renamed from: c */
    private void m30638c(int i, float f, int i2) {
        ViewPager2.AbstractC1208i abstractC1208i = this.f5186a;
        if (abstractC1208i != null) {
            abstractC1208i.mo30642b(i, f, i2);
        }
    }

    /* renamed from: d */
    private void m30637d(int i) {
        ViewPager2.AbstractC1208i abstractC1208i = this.f5186a;
        if (abstractC1208i != null) {
            abstractC1208i.mo30641c(i);
        }
    }

    /* renamed from: e */
    private void m30636e(int i) {
        if ((this.f5190e == 3 && this.f5191f == 0) || this.f5191f == i) {
            return;
        }
        this.f5191f = i;
        ViewPager2.AbstractC1208i abstractC1208i = this.f5186a;
        if (abstractC1208i == null) {
            return;
        }
        abstractC1208i.mo30643a(i);
    }

    /* renamed from: f */
    private int m30635f() {
        return this.f5189d.m32140Z1();
    }

    /* renamed from: k */
    private boolean m30630k() {
        int i = this.f5190e;
        boolean z = true;
        if (i != 1) {
            z = i == 4;
        }
        return z;
    }

    /* renamed from: n */
    private void m30627n() {
        this.f5190e = 0;
        this.f5191f = 0;
        this.f5192g.m30623a();
        this.f5193h = -1;
        this.f5194i = -1;
        this.f5195j = false;
        this.f5196k = false;
        this.f5198m = false;
        this.f5197l = false;
    }

    /* renamed from: p */
    private void m30625p(boolean z) {
        this.f5198m = z;
        this.f5190e = z ? 4 : 1;
        int i = this.f5194i;
        if (i != -1) {
            this.f5193h = i;
            this.f5194i = -1;
        } else if (this.f5193h == -1) {
            this.f5193h = m30635f();
        }
        m30636e(1);
    }

    /* renamed from: q */
    private void m30624q() {
        int i;
        int i2;
        C1223a c1223a = this.f5192g;
        int m32140Z1 = this.f5189d.m32140Z1();
        c1223a.f5199a = m32140Z1;
        if (m32140Z1 == -1) {
            c1223a.m30623a();
            return;
        }
        View mo31870C = this.f5189d.mo31870C(m32140Z1);
        if (mo31870C == null) {
            c1223a.m30623a();
            return;
        }
        int m31833a0 = this.f5189d.m31833a0(mo31870C);
        int m31811j0 = this.f5189d.m31811j0(mo31870C);
        int m31805m0 = this.f5189d.m31805m0(mo31870C);
        int m31863H = this.f5189d.m31863H(mo31870C);
        ViewGroup.LayoutParams layoutParams = mo31870C.getLayoutParams();
        int i3 = m31833a0;
        int i4 = m31811j0;
        int i5 = m31805m0;
        int i6 = m31863H;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i3 = m31833a0 + marginLayoutParams.leftMargin;
            i4 = m31811j0 + marginLayoutParams.rightMargin;
            i5 = m31805m0 + marginLayoutParams.topMargin;
            i6 = m31863H + marginLayoutParams.bottomMargin;
        }
        int height = mo31870C.getHeight() + i5 + i6;
        int width = mo31870C.getWidth();
        if (this.f5189d.m32127m2() == 0) {
            int left = (mo31870C.getLeft() - i3) - this.f5188c.getPaddingLeft();
            int i7 = left;
            if (this.f5187b.m30695d()) {
                i7 = -left;
            }
            int i8 = width + i3 + i4;
            i = i7;
            i2 = i8;
        } else {
            i = (mo31870C.getTop() - i5) - this.f5188c.getPaddingTop();
            i2 = height;
        }
        int i9 = -i;
        c1223a.f5201c = i9;
        if (i9 >= 0) {
            c1223a.f5200b = i2 == 0 ? 0.0f : i9 / i2;
        } else if (!new C1217a(this.f5189d).m30648d()) {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(c1223a.f5201c)));
        } else {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
    /* renamed from: a */
    public void mo4985a(RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.f5190e == 1 && this.f5191f == 1) && i == 1) {
            m30625p(false);
        } else if (m30630k() && i == 2) {
            if (!this.f5196k) {
                return;
            }
            m30636e(2);
            this.f5195j = true;
        } else {
            if (m30630k() && i == 0) {
                m30624q();
                if (!this.f5196k) {
                    int i2 = this.f5192g.f5199a;
                    z = true;
                    if (i2 != -1) {
                        m30638c(i2, 0.0f, 0);
                        z = true;
                    }
                } else {
                    C1223a c1223a = this.f5192g;
                    if (c1223a.f5201c == 0) {
                        int i3 = this.f5193h;
                        int i4 = c1223a.f5199a;
                        z = true;
                        if (i3 != i4) {
                            m30637d(i4);
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    m30636e(0);
                    m30627n();
                }
            }
            if (this.f5190e != 2 || i != 0 || !this.f5197l) {
                return;
            }
            m30624q();
            C1223a c1223a2 = this.f5192g;
            if (c1223a2.f5201c != 0) {
                return;
            }
            int i5 = this.f5194i;
            int i6 = c1223a2.f5199a;
            if (i5 != i6) {
                int i7 = i6;
                if (i6 == -1) {
                    i7 = 0;
                }
                m30637d(i7);
            }
            m30636e(0);
            m30627n();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.f5187b.m30695d()) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4984b(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.C1222e.mo4984b(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* renamed from: g */
    public double m30634g() {
        m30624q();
        C1223a c1223a = this.f5192g;
        return c1223a.f5199a + c1223a.f5200b;
    }

    /* renamed from: h */
    public int m30633h() {
        return this.f5191f;
    }

    /* renamed from: i */
    public boolean m30632i() {
        return this.f5198m;
    }

    /* renamed from: j */
    public boolean m30631j() {
        return this.f5191f == 0;
    }

    /* renamed from: l */
    public void m30629l() {
        this.f5197l = true;
    }

    /* renamed from: m */
    public void m30628m(int i, boolean z) {
        this.f5190e = z ? 2 : 3;
        boolean z2 = false;
        this.f5198m = false;
        if (this.f5194i != i) {
            z2 = true;
        }
        this.f5194i = i;
        m30636e(2);
        if (z2) {
            m30637d(i);
        }
    }

    /* renamed from: o */
    public void m30626o(ViewPager2.AbstractC1208i abstractC1208i) {
        this.f5186a = abstractC1208i;
    }
}
