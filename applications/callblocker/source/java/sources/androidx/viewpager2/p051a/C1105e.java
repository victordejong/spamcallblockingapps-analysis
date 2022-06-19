package androidx.viewpager2.p051a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.p051a.C1107f;
import java.util.Locale;
/* renamed from: androidx.viewpager2.a.e */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/e.class */
public final class C1105e extends RecyclerView.AbstractC0934n {

    /* renamed from: a */
    private C1107f.AbstractC1109b f3797a;

    /* renamed from: b */
    private final C1107f f3798b;

    /* renamed from: c */
    private final RecyclerView f3799c;

    /* renamed from: d */
    private final LinearLayoutManager f3800d;

    /* renamed from: e */
    private int f3801e;

    /* renamed from: f */
    private int f3802f;

    /* renamed from: g */
    private C1106a f3803g;

    /* renamed from: h */
    private int f3804h;

    /* renamed from: i */
    private int f3805i;

    /* renamed from: j */
    private boolean f3806j;

    /* renamed from: k */
    private boolean f3807k;

    /* renamed from: l */
    private boolean f3808l;

    /* renamed from: m */
    private boolean f3809m;

    /* renamed from: androidx.viewpager2.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/e$a.class */
    public static final class C1106a {

        /* renamed from: a */
        int f3810a;

        /* renamed from: b */
        float f3811b;

        /* renamed from: c */
        int f3812c;

        /* renamed from: a */
        void m18021a() {
            this.f3810a = -1;
            this.f3811b = 0.0f;
            this.f3812c = 0;
        }
    }

    /* renamed from: a */
    private void m18033a(int i) {
        if ((this.f3801e == 3 && this.f3802f == 0) || this.f3802f == i) {
            return;
        }
        this.f3802f = i;
        if (this.f3797a == null) {
            return;
        }
        this.f3797a.mo17997b(i);
    }

    /* renamed from: a */
    private void m18032a(int i, float f, int i2) {
        if (this.f3797a != null) {
            this.f3797a.mo17998a(i, f, i2);
        }
    }

    /* renamed from: a */
    private void m18030a(boolean z) {
        this.f3809m = z;
        this.f3801e = z ? 4 : 1;
        if (this.f3805i != -1) {
            this.f3804h = this.f3805i;
            this.f3805i = -1;
        } else if (this.f3804h == -1) {
            this.f3804h = m18022h();
        }
        m18033a(1);
    }

    /* renamed from: b */
    private void m18028b(int i) {
        if (this.f3797a != null) {
            this.f3797a.mo17999a(i);
        }
    }

    /* renamed from: e */
    private void m18025e() {
        this.f3801e = 0;
        this.f3802f = 0;
        this.f3803g.m18021a();
        this.f3804h = -1;
        this.f3805i = -1;
        this.f3806j = false;
        this.f3807k = false;
        this.f3809m = false;
        this.f3808l = false;
    }

    /* renamed from: f */
    private void m18024f() {
        int i;
        int top;
        C1106a c1106a = this.f3803g;
        c1106a.f3810a = this.f3800d.m19074o();
        if (c1106a.f3810a == -1) {
            c1106a.m18021a();
            return;
        }
        View mo18952c = this.f3800d.mo18952c(c1106a.f3810a);
        if (mo18952c == null) {
            c1106a.m18021a();
            return;
        }
        int n = this.f3800d.m18920n(mo18952c);
        int o = this.f3800d.m18919o(mo18952c);
        int l = this.f3800d.m18923l(mo18952c);
        int m = this.f3800d.m18922m(mo18952c);
        ViewGroup.LayoutParams layoutParams = mo18952c.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            n += marginLayoutParams.leftMargin;
            o += marginLayoutParams.rightMargin;
            l += marginLayoutParams.topMargin;
            m = marginLayoutParams.bottomMargin + m;
        }
        int height = mo18952c.getHeight();
        int width = mo18952c.getWidth() + n + o;
        if (this.f3800d.m19085h() == 0) {
            top = (mo18952c.getLeft() - n) - this.f3799c.getPaddingLeft();
            if (this.f3798b.m18017b()) {
                top = -top;
                i = width;
            } else {
                i = width;
            }
        } else {
            i = height + l + m;
            top = (mo18952c.getTop() - l) - this.f3799c.getPaddingTop();
        }
        c1106a.f3812c = -top;
        if (c1106a.f3812c >= 0) {
            c1106a.f3811b = i == 0 ? 0.0f : c1106a.f3812c / i;
        } else if (!new C1100a(this.f3800d).m18043a()) {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(c1106a.f3812c)));
        } else {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    /* renamed from: g */
    private boolean m18023g() {
        boolean z = true;
        if (this.f3801e != 1) {
            z = this.f3801e == 4;
        }
        return z;
    }

    /* renamed from: h */
    private int m18022h() {
        return this.f3800d.m19074o();
    }

    /* renamed from: a */
    public int m18034a() {
        return this.f3802f;
    }

    /* renamed from: a */
    public void m18031a(int i, boolean z) {
        this.f3801e = z ? 2 : 3;
        this.f3809m = false;
        boolean z2 = this.f3805i != i;
        this.f3805i = i;
        m18033a(2);
        if (z2) {
            m18028b(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
    /* renamed from: a */
    public void mo3175a(RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.f3801e == 1 && this.f3802f == 1) && i == 1) {
            m18030a(false);
        } else if (m18023g() && i == 2) {
            if (!this.f3807k) {
                return;
            }
            m18033a(2);
            this.f3806j = true;
        } else {
            if (m18023g() && i == 0) {
                m18024f();
                if (!this.f3807k) {
                    z = true;
                    if (this.f3803g.f3810a != -1) {
                        m18032a(this.f3803g.f3810a, 0.0f, 0);
                        z = true;
                    }
                } else if (this.f3803g.f3812c == 0) {
                    z = true;
                    if (this.f3804h != this.f3803g.f3810a) {
                        m18028b(this.f3803g.f3810a);
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    m18033a(0);
                    m18025e();
                }
            }
            if (this.f3801e != 2 || i != 0 || !this.f3808l) {
                return;
            }
            m18024f();
            if (this.f3803g.f3812c != 0) {
                return;
            }
            if (this.f3805i != this.f3803g.f3810a) {
                m18028b(this.f3803g.f3810a == -1 ? 0 : this.f3803g.f3810a);
            }
            m18033a(0);
            m18025e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if ((r7 < 0) == r5.f3798b.m18017b()) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1098a(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.p051a.C1105e.mo1098a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* renamed from: b */
    public boolean m18029b() {
        return this.f3802f == 0;
    }

    /* renamed from: c */
    public boolean m18027c() {
        return this.f3809m;
    }

    /* renamed from: d */
    public double m18026d() {
        m18024f();
        return this.f3803g.f3810a + this.f3803g.f3811b;
    }
}
