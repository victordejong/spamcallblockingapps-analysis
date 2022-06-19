package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
class StaggeredGridLayoutManager$c {

    /* renamed from: a */
    ArrayList<View> f2323a = new ArrayList<>();

    /* renamed from: b */
    int f2324b = Integer.MIN_VALUE;

    /* renamed from: c */
    int f2325c = Integer.MIN_VALUE;

    /* renamed from: d */
    int f2326d = 0;

    /* renamed from: e */
    final int f2327e;

    /* renamed from: f */
    final /* synthetic */ StaggeredGridLayoutManager f2328f;

    StaggeredGridLayoutManager$c(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f2328f = staggeredGridLayoutManager;
        this.f2327e = i;
    }

    /* renamed from: a */
    void m12474a(View view) {
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(view);
        m12461n.e = this;
        this.f2323a.add(view);
        this.f2325c = Integer.MIN_VALUE;
        if (this.f2323a.size() == 1) {
            this.f2324b = Integer.MIN_VALUE;
        }
        if (m12461n.m12818c() || m12461n.m12819b()) {
            this.f2326d += this.f2328f.u.m12376e(view);
        }
    }

    /* renamed from: b */
    void m12473b(boolean z, int i) {
        int m12463l = z ? m12463l(Integer.MIN_VALUE) : m12459p(Integer.MIN_VALUE);
        m12470e();
        if (m12463l == Integer.MIN_VALUE) {
            return;
        }
        if (z && m12463l < this.f2328f.u.m12372i()) {
            return;
        }
        if (!z && m12463l > this.f2328f.u.m12368m()) {
            return;
        }
        int i2 = m12463l;
        if (i != Integer.MIN_VALUE) {
            i2 = m12463l + i;
        }
        this.f2325c = i2;
        this.f2324b = i2;
    }

    /* renamed from: c */
    void m12472c() {
        StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem m12493f;
        ArrayList<View> arrayList = this.f2323a;
        View view = arrayList.get(arrayList.size() - 1);
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(view);
        this.f2325c = this.f2328f.u.m12377d(view);
        if (!m12461n.f || (m12493f = this.f2328f.E.m12493f(m12461n.m12820a())) == null || m12493f.f2302c != 1) {
            return;
        }
        this.f2325c += m12493f.m12483a(this.f2327e);
    }

    /* renamed from: d */
    void m12471d() {
        StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem m12493f;
        View view = this.f2323a.get(0);
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(view);
        this.f2324b = this.f2328f.u.m12374g(view);
        if (!m12461n.f || (m12493f = this.f2328f.E.m12493f(m12461n.m12820a())) == null || m12493f.f2302c != -1) {
            return;
        }
        this.f2324b -= m12493f.m12483a(this.f2327e);
    }

    /* renamed from: e */
    void m12470e() {
        this.f2323a.clear();
        m12458q();
        this.f2326d = 0;
    }

    /* renamed from: f */
    public int m12469f() {
        int i;
        int i2;
        if (this.f2328f.z) {
            i2 = this.f2323a.size() - 1;
            i = -1;
        } else {
            i2 = 0;
            i = this.f2323a.size();
        }
        return m12466i(i2, i, true);
    }

    /* renamed from: g */
    public int m12468g() {
        int i;
        int i2;
        if (this.f2328f.z) {
            i2 = 0;
            i = this.f2323a.size();
        } else {
            i2 = this.f2323a.size() - 1;
            i = -1;
        }
        return m12466i(i2, i, true);
    }

    /* renamed from: h */
    int m12467h(int i, int i2, boolean z, boolean z2, boolean z3) {
        int m12368m = this.f2328f.u.m12368m();
        int m12372i = this.f2328f.u.m12372i();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = this.f2323a.get(i);
            int m12374g = this.f2328f.u.m12374g(view);
            int m12377d = this.f2328f.u.m12377d(view);
            boolean z4 = false;
            boolean z5 = !z3 ? m12374g < m12372i : m12374g <= m12372i;
            if (!z3 ? m12377d > m12368m : m12377d >= m12368m) {
                z4 = true;
            }
            if (z5 && z4) {
                if (!z || !z2) {
                    if (!z2 && m12374g >= m12368m && m12377d <= m12372i) {
                    }
                    return this.f2328f.m12653h0(view);
                } else if (m12374g >= m12368m && m12377d <= m12372i) {
                    return this.f2328f.m12653h0(view);
                }
            }
            i += i3;
        }
        return -1;
    }

    /* renamed from: i */
    int m12466i(int i, int i2, boolean z) {
        return m12467h(i, i2, false, false, z);
    }

    /* renamed from: j */
    public int m12465j() {
        return this.f2326d;
    }

    /* renamed from: k */
    int m12464k() {
        int i = this.f2325c;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m12472c();
        return this.f2325c;
    }

    /* renamed from: l */
    int m12463l(int i) {
        int i2 = this.f2325c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f2323a.size() == 0) {
            return i;
        }
        m12472c();
        return this.f2325c;
    }

    /* renamed from: m */
    public View m12462m(int i, int i2) {
        View view;
        View view2 = null;
        if (i2 != -1) {
            int size = this.f2323a.size() - 1;
            View view3 = null;
            while (true) {
                View view4 = view3;
                view = view4;
                if (size < 0) {
                    break;
                }
                View view5 = this.f2323a.get(size);
                StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2328f;
                if (staggeredGridLayoutManager.z) {
                    view = view4;
                    if (staggeredGridLayoutManager.m12653h0(view5) >= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager2 = this.f2328f;
                if (!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.m12653h0(view5) <= i) {
                    view = view4;
                    break;
                }
                view = view4;
                if (!view5.hasFocusable()) {
                    break;
                }
                size--;
                view3 = view5;
            }
        } else {
            int size2 = this.f2323a.size();
            int i3 = 0;
            while (true) {
                view = view2;
                if (i3 >= size2) {
                    break;
                }
                View view6 = this.f2323a.get(i3);
                StaggeredGridLayoutManager staggeredGridLayoutManager3 = this.f2328f;
                if (staggeredGridLayoutManager3.z) {
                    view = view2;
                    if (staggeredGridLayoutManager3.m12653h0(view6) <= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager4 = this.f2328f;
                if (!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.m12653h0(view6) >= i) {
                    view = view2;
                    break;
                }
                view = view2;
                if (!view6.hasFocusable()) {
                    break;
                }
                i3++;
                view2 = view6;
            }
        }
        return view;
    }

    /* renamed from: n */
    StaggeredGridLayoutManager.LayoutParams m12461n(View view) {
        return view.getLayoutParams();
    }

    /* renamed from: o */
    int m12460o() {
        int i = this.f2324b;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m12471d();
        return this.f2324b;
    }

    /* renamed from: p */
    public int m12459p(int i) {
        int i2 = this.f2324b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f2323a.size() == 0) {
            return i;
        }
        m12471d();
        return this.f2324b;
    }

    /* renamed from: q */
    void m12458q() {
        this.f2324b = Integer.MIN_VALUE;
        this.f2325c = Integer.MIN_VALUE;
    }

    /* renamed from: r */
    void m12457r(int i) {
        int i2 = this.f2324b;
        if (i2 != Integer.MIN_VALUE) {
            this.f2324b = i2 + i;
        }
        int i3 = this.f2325c;
        if (i3 != Integer.MIN_VALUE) {
            this.f2325c = i3 + i;
        }
    }

    /* renamed from: s */
    void m12456s() {
        int size = this.f2323a.size();
        View remove = this.f2323a.remove(size - 1);
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(remove);
        m12461n.e = null;
        if (m12461n.m12818c() || m12461n.m12819b()) {
            this.f2326d -= this.f2328f.u.m12376e(remove);
        }
        if (size == 1) {
            this.f2324b = Integer.MIN_VALUE;
        }
        this.f2325c = Integer.MIN_VALUE;
    }

    /* renamed from: t */
    void m12455t() {
        View remove = this.f2323a.remove(0);
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(remove);
        m12461n.e = null;
        if (this.f2323a.size() == 0) {
            this.f2325c = Integer.MIN_VALUE;
        }
        if (m12461n.m12818c() || m12461n.m12819b()) {
            this.f2326d -= this.f2328f.u.m12376e(remove);
        }
        this.f2324b = Integer.MIN_VALUE;
    }

    /* renamed from: u */
    void m12454u(View view) {
        StaggeredGridLayoutManager.LayoutParams m12461n = m12461n(view);
        m12461n.e = this;
        this.f2323a.add(0, view);
        this.f2324b = Integer.MIN_VALUE;
        if (this.f2323a.size() == 1) {
            this.f2325c = Integer.MIN_VALUE;
        }
        if (m12461n.m12818c() || m12461n.m12819b()) {
            this.f2326d += this.f2328f.u.m12376e(view);
        }
    }

    /* renamed from: v */
    void m12453v(int i) {
        this.f2324b = i;
        this.f2325c = i;
    }
}
