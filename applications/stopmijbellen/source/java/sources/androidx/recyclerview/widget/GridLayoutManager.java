package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RunnableC0636n;
import java.util.Arrays;
import java.util.Objects;
import p007a6.C0033h;
import p174n0.C3694b;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: G */
    public int[] f2096G;

    /* renamed from: H */
    public View[] f2097H;

    /* renamed from: E */
    public boolean f2094E = false;

    /* renamed from: F */
    public int f2095F = -1;

    /* renamed from: I */
    public final SparseIntArray f2098I = new SparseIntArray();

    /* renamed from: J */
    public final SparseIntArray f2099J = new SparseIntArray();

    /* renamed from: K */
    public AbstractC0551c f2100K = new C0549a();

    /* renamed from: L */
    public final Rect f2101L = new Rect();

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C0549a extends AbstractC0551c {
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static class C0550b extends RecyclerView.C0578n {

        /* renamed from: e */
        public int f2102e = -1;

        /* renamed from: f */
        public int f2103f = 0;

        public C0550b(int i, int i2) {
            super(i, i2);
        }

        public C0550b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0550b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0550b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$c.class */
    public static abstract class AbstractC0551c {

        /* renamed from: a */
        public final SparseIntArray f2104a = new SparseIntArray();

        /* renamed from: b */
        public final SparseIntArray f2105b = new SparseIntArray();

        /* renamed from: a */
        public int m7959a(int i, int i2) {
            int i3;
            int i4;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i5 >= i) {
                    break;
                }
                int i8 = i6 + 1;
                if (i8 == i2) {
                    i4 = i3 + 1;
                    i6 = 0;
                } else {
                    i6 = i8;
                    i4 = i3;
                    if (i8 > i2) {
                        i4 = i3 + 1;
                        i6 = 1;
                    }
                }
                i5++;
                i7 = i4;
            }
            int i9 = i3;
            if (i6 + 1 > i2) {
                i9 = i3 + 1;
            }
            return i9;
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(i2, z);
        m7960z1(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m7960z1(RecyclerView.AbstractC0573m.m7796R(context, attributeSet, i, i2).f2273b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: A0 */
    public void mo7740A0(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f2096G == null) {
            super.mo7740A0(rect, i, i2);
        }
        int m7799O = m7799O() + m7800N();
        int m7801M = m7801M() + m7798P();
        if (this.f2110p == 1) {
            i3 = RecyclerView.AbstractC0573m.m7789h(i2, rect.height() + m7801M, m7803K());
            int[] iArr = this.f2096G;
            i4 = RecyclerView.AbstractC0573m.m7789h(i, iArr[iArr.length - 1] + m7799O, m7802L());
        } else {
            i4 = RecyclerView.AbstractC0573m.m7789h(i, rect.width() + m7799O, m7802L());
            int[] iArr2 = this.f2096G;
            i3 = RecyclerView.AbstractC0573m.m7789h(i2, iArr2[iArr2.length - 1] + m7801M, m7803K());
        }
        this.f2256b.setMeasuredDimension(i4, i3);
    }

    /* renamed from: A1 */
    public final void m7969A1() {
        int i;
        int i2;
        if (this.f2110p == 1) {
            i2 = this.f2268n - m7799O();
            i = m7800N();
        } else {
            i2 = this.f2269o - m7801M();
            i = m7798P();
        }
        m7968r1(i2 - i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: I0 */
    public boolean mo7739I0() {
        return this.f2120z == null && !this.f2094E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: K0 */
    public void mo7958K0(RecyclerView.C0592x c0592x, LinearLayoutManager.C0554c c0554c, RecyclerView.AbstractC0573m.AbstractC0576c abstractC0576c) {
        int i = this.f2095F;
        for (int i2 = 0; i2 < this.f2095F && c0554c.m7920b(c0592x) && i > 0; i2++) {
            ((RunnableC0636n.C0638b) abstractC0576c).m7557a(c0554c.f2133d, Math.max(0, c0554c.f2136g));
            Objects.requireNonNull(this.f2100K);
            i--;
            c0554c.f2133d += c0554c.f2134e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: S */
    public int mo7729S(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (this.f2110p == 0) {
            return this.f2095F;
        }
        if (c0592x.m7744b() >= 1) {
            return m7965u1(c0584s, c0592x, c0592x.m7744b() - 1) + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: Z0 */
    public View mo7943Z0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, int i, int i2, int i3) {
        m7953P0();
        int mo7543k = this.f2112r.mo7543k();
        int mo7547g = this.f2112r.mo7547g();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view == null) {
                    view = view3;
                }
                return view;
            }
            View m7777w = m7777w(i);
            int m7797Q = m7797Q(m7777w);
            View view4 = view;
            View view5 = view3;
            if (m7797Q >= 0) {
                view4 = view;
                view5 = view3;
                if (m7797Q >= i3) {
                    continue;
                } else if (m7964v1(c0584s, c0592x, m7797Q) != 0) {
                    view4 = view;
                    view5 = view3;
                } else if (((RecyclerView.C0578n) m7777w.getLayoutParams()).m7770c()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = m7777w;
                        view4 = view;
                    }
                } else if (this.f2112r.mo7549e(m7777w) < mo7547g && this.f2112r.mo7552b(m7777w) >= mo7543k) {
                    return m7777w;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = m7777w;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0184, code lost:
        if (r19 == (r0 > r24)) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01e5, code lost:
        if (r19 == (r0 > r21)) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x023a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f6  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo7715a0(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C0584s r9, androidx.recyclerview.widget.RecyclerView.C0592x r10) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo7715a0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$x):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: d0 */
    public void mo7709d0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, View view, C3694b c3694b) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0550b)) {
            m7790c0(view, c3694b);
            return;
        }
        C0550b c0550b = (C0550b) layoutParams;
        int m7965u1 = m7965u1(c0584s, c0592x, c0550b.m7772a());
        if (this.f2110p == 0) {
            c3694b.m1871m(C3694b.C3697c.m1865a(c0550b.f2102e, c0550b.f2103f, m7965u1, 1, false, false));
        } else {
            c3694b.m1871m(C3694b.C3697c.m1865a(m7965u1, 1, c0550b.f2102e, c0550b.f2103f, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: e0 */
    public void mo7706e0(RecyclerView recyclerView, int i, int i2) {
        this.f2100K.f2104a.clear();
        this.f2100K.f2105b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: f0 */
    public void mo7703f0(RecyclerView recyclerView) {
        this.f2100K.f2104a.clear();
        this.f2100K.f2105b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: f1 */
    public void mo7937f1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, LinearLayoutManager.C0554c c0554c, LinearLayoutManager.C0553b c0553b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        View m7919c;
        int mo7544j = this.f2112r.mo7544j();
        boolean z = mo7544j != 1073741824;
        int i16 = m7776x() > 0 ? this.f2096G[this.f2095F] : 0;
        if (z) {
            m7969A1();
        }
        boolean z2 = c0554c.f2134e == 1;
        int i17 = this.f2095F;
        if (!z2) {
            i17 = m7964v1(c0584s, c0592x, c0554c.f2133d) + m7963w1(c0584s, c0592x, c0554c.f2133d);
        }
        int i18 = 0;
        while (i18 < this.f2095F && c0554c.m7920b(c0592x) && i17 > 0) {
            int i19 = c0554c.f2133d;
            int m7963w1 = m7963w1(c0584s, c0592x, i19);
            if (m7963w1 > this.f2095F) {
                StringBuilder sb = new StringBuilder();
                sb.append("Item at position ");
                sb.append(i19);
                sb.append(" requires ");
                sb.append(m7963w1);
                sb.append(" spans but GridLayoutManager has only ");
                throw new IllegalArgumentException(C0033h.m8885l(sb, this.f2095F, " spans."));
            }
            i17 -= m7963w1;
            if (i17 < 0 || (m7919c = c0554c.m7919c(c0584s)) == null) {
                break;
            }
            this.f2097H[i18] = m7919c;
            i18++;
        }
        if (i18 == 0) {
            c0553b.f2127b = true;
            return;
        }
        if (z2) {
            i4 = 0;
            i3 = i18;
            i2 = 0;
            i = 1;
        } else {
            i4 = i18 - 1;
            i3 = -1;
            i2 = 0;
            i = -1;
        }
        while (i4 != i3) {
            View view = this.f2097H[i4];
            C0550b c0550b = (C0550b) view.getLayoutParams();
            int m7963w12 = m7963w1(c0584s, c0592x, m7797Q(view));
            c0550b.f2103f = m7963w12;
            c0550b.f2102e = i2;
            i2 += m7963w12;
            i4 += i;
        }
        float f = 0.0f;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            i5 = i21;
            if (i20 >= i18) {
                break;
            }
            View view2 = this.f2097H[i20];
            if (c0554c.f2140k == null) {
                if (z2) {
                    m7792b(view2);
                } else {
                    m7791c(view2, 0, false);
                }
            } else if (z2) {
                m7791c(view2, -1, true);
            } else {
                m7791c(view2, 0, true);
            }
            Rect rect = this.f2101L;
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m7906L(view2));
            }
            m7962x1(view2, mo7544j, false);
            int mo7551c = this.f2112r.mo7551c(view2);
            int i22 = i5;
            if (mo7551c > i5) {
                i22 = mo7551c;
            }
            float mo7550d = (this.f2112r.mo7550d(view2) * 1.0f) / ((C0550b) view2.getLayoutParams()).f2103f;
            float f2 = f;
            if (mo7550d > f) {
                f2 = mo7550d;
            }
            i20++;
            f = f2;
            i21 = i22;
        }
        int i23 = i5;
        if (z) {
            m7968r1(Math.max(Math.round(f * this.f2095F), i16));
            int i24 = 0;
            int i25 = 0;
            while (true) {
                int i26 = i25;
                i23 = i26;
                if (i24 >= i18) {
                    break;
                }
                View view3 = this.f2097H[i24];
                m7962x1(view3, 1073741824, true);
                int mo7551c2 = this.f2112r.mo7551c(view3);
                int i27 = i26;
                if (mo7551c2 > i26) {
                    i27 = mo7551c2;
                }
                i24++;
                i25 = i27;
            }
        }
        for (int i28 = 0; i28 < i18; i28++) {
            View view4 = this.f2097H[i28];
            if (this.f2112r.mo7551c(view4) != i23) {
                C0550b c0550b2 = (C0550b) view4.getLayoutParams();
                Rect rect2 = c0550b2.f2277b;
                int i29 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0550b2).topMargin + ((ViewGroup.MarginLayoutParams) c0550b2).bottomMargin;
                int i30 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0550b2).leftMargin + ((ViewGroup.MarginLayoutParams) c0550b2).rightMargin;
                int m7966t1 = m7966t1(c0550b2.f2102e, c0550b2.f2103f);
                if (this.f2110p == 1) {
                    i14 = RecyclerView.AbstractC0573m.m7775y(m7966t1, 1073741824, i30, ((ViewGroup.MarginLayoutParams) c0550b2).width, false);
                    i15 = View.MeasureSpec.makeMeasureSpec(i23 - i29, 1073741824);
                } else {
                    i14 = View.MeasureSpec.makeMeasureSpec(i23 - i30, 1073741824);
                    i15 = RecyclerView.AbstractC0573m.m7775y(m7966t1, 1073741824, i29, ((ViewGroup.MarginLayoutParams) c0550b2).height, false);
                }
                m7961y1(view4, i14, i15, true);
            }
        }
        c0553b.f2126a = i23;
        if (this.f2110p == 1) {
            if (c0554c.f2135f == -1) {
                int i31 = c0554c.f2131b;
                i7 = i31 - i23;
                i6 = i31;
            } else {
                i7 = c0554c.f2131b;
                i6 = i23 + i7;
            }
            i9 = 0;
            i8 = 0;
        } else {
            if (c0554c.f2135f == -1) {
                int i32 = c0554c.f2131b;
                i9 = i32;
                i8 = i32 - i23;
            } else {
                int i33 = c0554c.f2131b;
                i8 = i33;
                i9 = i23 + i33;
            }
            i7 = 0;
            i6 = 0;
        }
        int i34 = 0;
        while (true) {
            int i35 = i34;
            if (i35 >= i18) {
                Arrays.fill(this.f2097H, (Object) null);
                return;
            }
            View view5 = this.f2097H[i35];
            C0550b c0550b3 = (C0550b) view5.getLayoutParams();
            if (this.f2110p != 1) {
                i7 = this.f2096G[c0550b3.f2102e] + m7798P();
                i6 = this.f2112r.mo7550d(view5) + i7;
            } else if (m7938e1()) {
                i9 = m7800N() + this.f2096G[this.f2095F - c0550b3.f2102e];
                i8 = i9 - this.f2112r.mo7550d(view5);
            } else {
                int m7800N = m7800N() + this.f2096G[c0550b3.f2102e];
                i13 = i7;
                i11 = m7800N;
                i12 = i6;
                i10 = this.f2112r.mo7550d(view5) + m7800N;
                m7793W(view5, i11, i13, i10, i12);
                if (!c0550b3.m7770c() || c0550b3.m7771b()) {
                    c0553b.f2128c = true;
                }
                c0553b.f2129d |= view5.hasFocusable();
                int i36 = i13;
                i9 = i10;
                int i37 = i11;
                i6 = i12;
                i7 = i36;
                i8 = i37;
                i34 = i35 + 1;
            }
            int i38 = i6;
            int i39 = i7;
            i10 = i9;
            i11 = i8;
            i13 = i39;
            i12 = i38;
            m7793W(view5, i11, i13, i10, i12);
            if (!c0550b3.m7770c()) {
            }
            c0553b.f2128c = true;
            c0553b.f2129d |= view5.hasFocusable();
            int i362 = i13;
            i9 = i10;
            int i372 = i11;
            i6 = i12;
            i7 = i362;
            i8 = i372;
            i34 = i35 + 1;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: g */
    public boolean mo7701g(RecyclerView.C0578n c0578n) {
        return c0578n instanceof C0550b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: g0 */
    public void mo7700g0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f2100K.f2104a.clear();
        this.f2100K.f2105b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: g1 */
    public void mo7936g1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, LinearLayoutManager.C0552a c0552a, int i) {
        int i2;
        int m7964v1;
        m7969A1();
        if (c0592x.m7744b() > 0 && !c0592x.f2317g) {
            boolean z = i == 1;
            int m7964v12 = m7964v1(c0584s, c0592x, c0552a.f2122b);
            if (z) {
                while (m7964v12 > 0) {
                    int i3 = c0552a.f2122b;
                    if (i3 <= 0) {
                        break;
                    }
                    int i4 = i3 - 1;
                    c0552a.f2122b = i4;
                    m7964v12 = m7964v1(c0584s, c0592x, i4);
                }
            } else {
                int m7744b = c0592x.m7744b();
                int i5 = c0552a.f2122b;
                while (i5 < m7744b - 1 && (m7964v1 = m7964v1(c0584s, c0592x, (i2 = i5 + 1))) > m7964v12) {
                    i5 = i2;
                    m7964v12 = m7964v1;
                }
                c0552a.f2122b = i5;
            }
        }
        m7967s1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: h0 */
    public void mo7698h0(RecyclerView recyclerView, int i, int i2) {
        this.f2100K.f2104a.clear();
        this.f2100K.f2105b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: i0 */
    public void mo7695i0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f2100K.f2104a.clear();
        this.f2100K.f2105b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: j0 */
    public void mo7693j0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (c0592x.f2317g) {
            int m7776x = m7776x();
            for (int i = 0; i < m7776x; i++) {
                C0550b c0550b = (C0550b) m7777w(i).getLayoutParams();
                int m7772a = c0550b.m7772a();
                this.f2098I.put(m7772a, c0550b.f2103f);
                this.f2099J.put(m7772a, c0550b.f2102e);
            }
        }
        super.mo7693j0(c0584s, c0592x);
        this.f2098I.clear();
        this.f2099J.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: k0 */
    public void mo7690k0(RecyclerView.C0592x c0592x) {
        this.f2120z = null;
        this.f2118x = -1;
        this.f2119y = Integer.MIN_VALUE;
        this.f2106A.m7922d();
        this.f2094E = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: l */
    public int mo7688l(RecyclerView.C0592x c0592x) {
        return m7956M0(c0592x);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: m */
    public int mo7685m(RecyclerView.C0592x c0592x) {
        return m7955N0(c0592x);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: n1 */
    public void mo7929n1(boolean z) {
        if (!z) {
            mo7710d(null);
            if (!this.f2116v) {
                return;
            }
            this.f2116v = false;
            m7778u0();
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: o */
    public int mo7679o(RecyclerView.C0592x c0592x) {
        return m7956M0(c0592x);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: p */
    public int mo7678p(RecyclerView.C0592x c0592x) {
        return m7955N0(c0592x);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r0[r0.length - 1] != r5) goto L8;
     */
    /* renamed from: r1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7968r1(int r5) {
        /*
            r4 = this;
            r0 = r4
            int[] r0 = r0.f2096G
            r6 = r0
            r0 = r4
            int r0 = r0.f2095F
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            int r0 = r0.length
            r1 = r7
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L26
            r0 = r6
            r9 = r0
            r0 = r6
            r1 = r6
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r1 = r5
            if (r0 == r1) goto L2d
        L26:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            r9 = r0
        L2d:
            r0 = 0
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = r5
            r1 = r7
            int r0 = r0 / r1
            r11 = r0
            r0 = r5
            r1 = r7
            int r0 = r0 % r1
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r10
            r5 = r0
        L45:
            r0 = r8
            r1 = r7
            if (r0 > r1) goto L81
            r0 = r5
            r1 = r12
            int r0 = r0 + r1
            r5 = r0
            r0 = r5
            if (r0 <= 0) goto L69
            r0 = r7
            r1 = r5
            int r0 = r0 - r1
            r1 = r12
            if (r0 >= r1) goto L69
            r0 = r11
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r5
            r1 = r7
            int r0 = r0 - r1
            r5 = r0
            goto L6d
        L69:
            r0 = r11
            r10 = r0
        L6d:
            r0 = r13
            r1 = r10
            int r0 = r0 + r1
            r13 = r0
            r0 = r9
            r1 = r8
            r2 = r13
            r0[r1] = r2
            int r8 = r8 + 1
            goto L45
        L81:
            r0 = r4
            r1 = r9
            r0.f2096G = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m7968r1(int):void");
    }

    /* renamed from: s1 */
    public final void m7967s1() {
        View[] viewArr = this.f2097H;
        if (viewArr == null || viewArr.length != this.f2095F) {
            this.f2097H = new View[this.f2095F];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: t */
    public RecyclerView.C0578n mo7677t() {
        return this.f2110p == 0 ? new C0550b(-2, -1) : new C0550b(-1, -2);
    }

    /* renamed from: t1 */
    public int m7966t1(int i, int i2) {
        if (this.f2110p != 1 || !m7938e1()) {
            int[] iArr = this.f2096G;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f2096G;
        int i3 = this.f2095F;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: u */
    public RecyclerView.C0578n mo7676u(Context context, AttributeSet attributeSet) {
        return new C0550b(context, attributeSet);
    }

    /* renamed from: u1 */
    public final int m7965u1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, int i) {
        if (!c0592x.f2317g) {
            return this.f2100K.m7959a(i, this.f2095F);
        }
        int m7765c = c0584s.m7765c(i);
        if (m7765c != -1) {
            return this.f2100K.m7959a(m7765c, this.f2095F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: v */
    public RecyclerView.C0578n mo7675v(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0550b((ViewGroup.MarginLayoutParams) layoutParams) : new C0550b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: v0 */
    public int mo7674v0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        m7969A1();
        m7967s1();
        return this.f2110p == 1 ? 0 : m7931l1(i, c0584s, c0592x);
    }

    /* renamed from: v1 */
    public final int m7964v1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, int i) {
        if (!c0592x.f2317g) {
            AbstractC0551c abstractC0551c = this.f2100K;
            int i2 = this.f2095F;
            Objects.requireNonNull(abstractC0551c);
            return i % i2;
        }
        int i3 = this.f2099J.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m7765c = c0584s.m7765c(i);
        if (m7765c != -1) {
            AbstractC0551c abstractC0551c2 = this.f2100K;
            int i4 = this.f2095F;
            Objects.requireNonNull(abstractC0551c2);
            return m7765c % i4;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    /* renamed from: w1 */
    public final int m7963w1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, int i) {
        if (!c0592x.f2317g) {
            Objects.requireNonNull(this.f2100K);
            return 1;
        }
        int i2 = this.f2098I.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (c0584s.m7765c(i) != -1) {
            Objects.requireNonNull(this.f2100K);
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: x0 */
    public int mo7672x0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        m7969A1();
        m7967s1();
        return this.f2110p == 0 ? 0 : m7931l1(i, c0584s, c0592x);
    }

    /* renamed from: x1 */
    public final void m7962x1(View view, int i, boolean z) {
        int i2;
        int i3;
        C0550b c0550b = (C0550b) view.getLayoutParams();
        Rect rect = c0550b.f2277b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0550b).topMargin + ((ViewGroup.MarginLayoutParams) c0550b).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0550b).leftMargin + ((ViewGroup.MarginLayoutParams) c0550b).rightMargin;
        int m7966t1 = m7966t1(c0550b.f2102e, c0550b.f2103f);
        if (this.f2110p == 1) {
            i2 = RecyclerView.AbstractC0573m.m7775y(m7966t1, i, i5, ((ViewGroup.MarginLayoutParams) c0550b).width, false);
            i3 = RecyclerView.AbstractC0573m.m7775y(this.f2112r.mo7542l(), this.f2267m, i4, ((ViewGroup.MarginLayoutParams) c0550b).height, true);
        } else {
            i3 = RecyclerView.AbstractC0573m.m7775y(m7966t1, i, i4, ((ViewGroup.MarginLayoutParams) c0550b).height, false);
            i2 = RecyclerView.AbstractC0573m.m7775y(this.f2112r.mo7542l(), this.f2266l, i5, ((ViewGroup.MarginLayoutParams) c0550b).width, true);
        }
        m7961y1(view, i2, i3, z);
    }

    /* renamed from: y1 */
    public final void m7961y1(View view, int i, int i2, boolean z) {
        RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view.getLayoutParams();
        if (z ? m7809F0(view, i, i2, c0578n) : m7813D0(view, i, i2, c0578n)) {
            view.measure(i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: z */
    public int mo7671z(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (this.f2110p == 1) {
            return this.f2095F;
        }
        if (c0592x.m7744b() >= 1) {
            return m7965u1(c0584s, c0592x, c0592x.m7744b() - 1) + 1;
        }
        return 0;
    }

    /* renamed from: z1 */
    public void m7960z1(int i) {
        if (i == this.f2095F) {
            return;
        }
        this.f2094E = true;
        if (i < 1) {
            throw new IllegalArgumentException(C0033h.m8886k("Span count should be at least 1. Provided ", i));
        }
        this.f2095F = i;
        this.f2100K.f2104a.clear();
        m7778u0();
    }
}
