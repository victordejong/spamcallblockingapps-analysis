package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
public class StaggeredGridLayoutManager$c {

    /* renamed from: a */
    public ArrayList<View> f1424a = new ArrayList<>();

    /* renamed from: b */
    public int f1425b = Integer.MIN_VALUE;

    /* renamed from: c */
    public int f1426c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f1427d = 0;

    /* renamed from: e */
    public final int f1428e;

    /* renamed from: f */
    public final /* synthetic */ StaggeredGridLayoutManager f1429f;

    public StaggeredGridLayoutManager$c(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f1429f = staggeredGridLayoutManager;
        this.f1428e = i;
    }

    /* renamed from: a */
    public void m6083a(View view) {
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(view);
        m6070n.e = this;
        this.f1424a.add(view);
        this.f1426c = Integer.MIN_VALUE;
        if (this.f1424a.size() == 1) {
            this.f1425b = Integer.MIN_VALUE;
        }
        if (m6070n.m6226c() || m6070n.m6227b()) {
            this.f1427d += this.f1429f.c.e(view);
        }
    }

    /* renamed from: b */
    public void m6082b(boolean z, int i) {
        int m6072l = z ? m6072l(Integer.MIN_VALUE) : m6068p(Integer.MIN_VALUE);
        m6079e();
        if (m6072l == Integer.MIN_VALUE) {
            return;
        }
        if (z && m6072l < this.f1429f.c.i()) {
            return;
        }
        if (!z && m6072l > this.f1429f.c.m()) {
            return;
        }
        int i2 = m6072l;
        if (i != Integer.MIN_VALUE) {
            i2 = m6072l + i;
        }
        this.f1426c = i2;
        this.f1425b = i2;
    }

    /* renamed from: c */
    public void m6081c() {
        StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem m6102f;
        ArrayList<View> arrayList = this.f1424a;
        View view = arrayList.get(arrayList.size() - 1);
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(view);
        this.f1426c = this.f1429f.c.d(view);
        if (!m6070n.f || (m6102f = this.f1429f.m.m6102f(m6070n.m6228a())) == null || m6102f.f1403b != 1) {
            return;
        }
        this.f1426c += m6102f.m6092a(this.f1428e);
    }

    /* renamed from: d */
    public void m6080d() {
        StaggeredGridLayoutManager$LazySpanLookup.FullSpanItem m6102f;
        View view = this.f1424a.get(0);
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(view);
        this.f1425b = this.f1429f.c.g(view);
        if (!m6070n.f || (m6102f = this.f1429f.m.m6102f(m6070n.m6228a())) == null || m6102f.f1403b != -1) {
            return;
        }
        this.f1425b -= m6102f.m6092a(this.f1428e);
    }

    /* renamed from: e */
    public void m6079e() {
        this.f1424a.clear();
        m6067q();
        this.f1427d = 0;
    }

    /* renamed from: f */
    public int m6078f() {
        int i;
        int i2;
        if (this.f1429f.h) {
            i2 = this.f1424a.size() - 1;
            i = -1;
        } else {
            i2 = 0;
            i = this.f1424a.size();
        }
        return m6075i(i2, i, true);
    }

    /* renamed from: g */
    public int m6077g() {
        int i;
        int i2;
        if (this.f1429f.h) {
            i2 = 0;
            i = this.f1424a.size();
        } else {
            i2 = this.f1424a.size() - 1;
            i = -1;
        }
        return m6075i(i2, i, true);
    }

    /* renamed from: h */
    public int m6076h(int i, int i2, boolean z, boolean z2, boolean z3) {
        int m = this.f1429f.c.m();
        int i3 = this.f1429f.c.i();
        int i4 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = this.f1424a.get(i);
            int g = this.f1429f.c.g(view);
            int d = this.f1429f.c.d(view);
            boolean z4 = false;
            boolean z5 = !z3 ? g < i3 : g <= i3;
            if (!z3 ? d > m : d >= m) {
                z4 = true;
            }
            if (z5 && z4) {
                if (!z || !z2) {
                    if (!z2 && g >= m && d <= i3) {
                    }
                    return this.f1429f.getPosition(view);
                } else if (g >= m && d <= i3) {
                    return this.f1429f.getPosition(view);
                }
            }
            i += i4;
        }
        return -1;
    }

    /* renamed from: i */
    public int m6075i(int i, int i2, boolean z) {
        return m6076h(i, i2, false, false, z);
    }

    /* renamed from: j */
    public int m6074j() {
        return this.f1427d;
    }

    /* renamed from: k */
    public int m6073k() {
        int i = this.f1426c;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m6081c();
        return this.f1426c;
    }

    /* renamed from: l */
    public int m6072l(int i) {
        int i2 = this.f1426c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f1424a.size() == 0) {
            return i;
        }
        m6081c();
        return this.f1426c;
    }

    /* renamed from: m */
    public View m6071m(int i, int i2) {
        View view;
        View view2 = null;
        if (i2 != -1) {
            int size = this.f1424a.size() - 1;
            View view3 = null;
            while (true) {
                View view4 = view3;
                view = view4;
                if (size < 0) {
                    break;
                }
                View view5 = this.f1424a.get(size);
                StaggeredGridLayoutManager staggeredGridLayoutManager = this.f1429f;
                if (staggeredGridLayoutManager.h) {
                    view = view4;
                    if (staggeredGridLayoutManager.getPosition(view5) >= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager2 = this.f1429f;
                if (!staggeredGridLayoutManager2.h && staggeredGridLayoutManager2.getPosition(view5) <= i) {
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
            int size2 = this.f1424a.size();
            int i3 = 0;
            while (true) {
                view = view2;
                if (i3 >= size2) {
                    break;
                }
                View view6 = this.f1424a.get(i3);
                StaggeredGridLayoutManager staggeredGridLayoutManager3 = this.f1429f;
                if (staggeredGridLayoutManager3.h) {
                    view = view2;
                    if (staggeredGridLayoutManager3.getPosition(view6) <= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager4 = this.f1429f;
                if (!staggeredGridLayoutManager4.h && staggeredGridLayoutManager4.getPosition(view6) >= i) {
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
    public StaggeredGridLayoutManager.LayoutParams m6070n(View view) {
        return view.getLayoutParams();
    }

    /* renamed from: o */
    public int m6069o() {
        int i = this.f1425b;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m6080d();
        return this.f1425b;
    }

    /* renamed from: p */
    public int m6068p(int i) {
        int i2 = this.f1425b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f1424a.size() == 0) {
            return i;
        }
        m6080d();
        return this.f1425b;
    }

    /* renamed from: q */
    public void m6067q() {
        this.f1425b = Integer.MIN_VALUE;
        this.f1426c = Integer.MIN_VALUE;
    }

    /* renamed from: r */
    public void m6066r(int i) {
        int i2 = this.f1425b;
        if (i2 != Integer.MIN_VALUE) {
            this.f1425b = i2 + i;
        }
        int i3 = this.f1426c;
        if (i3 != Integer.MIN_VALUE) {
            this.f1426c = i3 + i;
        }
    }

    /* renamed from: s */
    public void m6065s() {
        int size = this.f1424a.size();
        View remove = this.f1424a.remove(size - 1);
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(remove);
        m6070n.e = null;
        if (m6070n.m6226c() || m6070n.m6227b()) {
            this.f1427d -= this.f1429f.c.e(remove);
        }
        if (size == 1) {
            this.f1425b = Integer.MIN_VALUE;
        }
        this.f1426c = Integer.MIN_VALUE;
    }

    /* renamed from: t */
    public void m6064t() {
        View remove = this.f1424a.remove(0);
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(remove);
        m6070n.e = null;
        if (this.f1424a.size() == 0) {
            this.f1426c = Integer.MIN_VALUE;
        }
        if (m6070n.m6226c() || m6070n.m6227b()) {
            this.f1427d -= this.f1429f.c.e(remove);
        }
        this.f1425b = Integer.MIN_VALUE;
    }

    /* renamed from: u */
    public void m6063u(View view) {
        StaggeredGridLayoutManager.LayoutParams m6070n = m6070n(view);
        m6070n.e = this;
        this.f1424a.add(0, view);
        this.f1425b = Integer.MIN_VALUE;
        if (this.f1424a.size() == 1) {
            this.f1426c = Integer.MIN_VALUE;
        }
        if (m6070n.m6226c() || m6070n.m6227b()) {
            this.f1427d += this.f1429f.c.e(view);
        }
    }

    /* renamed from: v */
    public void m6062v(int i) {
        this.f1425b = i;
        this.f1426c = i;
    }
}
