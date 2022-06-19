package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.C0432o;
import d.h.m.c0.c;
import d.h.m.t;
import d.q.c;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
public abstract class RecyclerView$n {

    /* renamed from: a */
    C0421b f2223a;

    /* renamed from: b */
    RecyclerView f2224b;

    /* renamed from: c */
    private final C0432o.AbstractC0434b f2225c;

    /* renamed from: d */
    private final C0432o.AbstractC0434b f2226d;

    /* renamed from: e */
    C0432o f2227e;

    /* renamed from: f */
    C0432o f2228f;

    /* renamed from: g */
    RecyclerView$w f2229g;

    /* renamed from: h */
    boolean f2230h = false;

    /* renamed from: i */
    boolean f2231i = false;

    /* renamed from: j */
    boolean f2232j = false;

    /* renamed from: k */
    private boolean f2233k = true;

    /* renamed from: l */
    private boolean f2234l = true;

    /* renamed from: m */
    int f2235m;

    /* renamed from: n */
    boolean f2236n;

    /* renamed from: o */
    private int f2237o;

    /* renamed from: p */
    private int f2238p;

    /* renamed from: q */
    private int f2239q;

    /* renamed from: r */
    private int f2240r;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n$c.class */
    public interface AbstractC0414c {
        /* renamed from: a */
        void m12597a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n$d.class */
    public static class C0415d {

        /* renamed from: a */
        public int f2241a;

        /* renamed from: b */
        public int f2242b;

        /* renamed from: c */
        public boolean f2243c;

        /* renamed from: d */
        public boolean f2244d;
    }

    public RecyclerView$n() {
        a aVar = new a(this);
        this.f2225c = aVar;
        b bVar = new b(this);
        this.f2226d = bVar;
        this.f2227e = new C0432o(aVar);
        this.f2228f = new C0432o(bVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        if (r5 != 1073741824) goto L29;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m12708K(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            r0 = 0
            r1 = r4
            r2 = r6
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L30
            r0 = r7
            if (r0 < 0) goto L14
            goto L34
        L14:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L41
            r0 = r5
            if (r0 == 0) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L41
            goto L66
        L30:
            r0 = r7
            if (r0 < 0) goto L3a
        L34:
            r0 = 1073741824(0x40000000, float:2.0)
            r4 = r0
            goto L6a
        L3a:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L46
            r0 = r5
            r4 = r0
        L41:
            r0 = r6
            r7 = r0
            goto L6a
        L46:
            r0 = r7
            r1 = -2
            if (r0 != r1) goto L66
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L60
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto L5b
            goto L60
        L5b:
            r0 = 0
            r4 = r0
            goto L41
        L60:
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r0
            goto L41
        L66:
            r0 = 0
            r4 = r0
            r0 = 0
            r7 = r0
        L6a:
            r0 = r7
            r1 = r4
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$n.m12708K(int, int, int, int, boolean):int");
    }

    /* renamed from: L */
    private int[] m12705L(View view, Rect rect) {
        int m12662e0 = m12662e0();
        int m12656g0 = m12656g0();
        int m12632o0 = m12632o0();
        int m12659f0 = m12659f0();
        int m12682W = m12682W();
        int m12665d0 = m12665d0();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width = rect.width();
        int height = rect.height();
        int i = left - m12662e0;
        int min = Math.min(0, i);
        int i2 = top - m12656g0;
        int min2 = Math.min(0, i2);
        int i3 = (width + left) - (m12632o0 - m12659f0);
        int max = Math.max(0, i3);
        int max2 = Math.max(0, (height + top) - (m12682W - m12665d0));
        if (m12676Z() == 1) {
            min = max != 0 ? max : Math.max(min, i3);
        } else if (min == 0) {
            min = Math.min(i, max);
        }
        if (min2 == 0) {
            min2 = Math.min(i2, max2);
        }
        return new int[]{min, min2};
    }

    /* renamed from: f */
    private void m12660f(View view, int i, boolean z) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (z || g0.m12780v()) {
            this.f2224b.g.m12345b(g0);
        } else {
            this.f2224b.g.m12331p(g0);
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (g0.m12802L() || g0.m12779w()) {
            if (g0.m12779w()) {
                g0.m12803K();
            } else {
                g0.m12797e();
            }
            this.f2223a.m12439c(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.f2224b) {
            int m12429m = this.f2223a.m12429m(view);
            int i2 = i;
            if (i == -1) {
                i2 = this.f2223a.m12435g();
            }
            if (m12429m == -1) {
                throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f2224b.indexOfChild(view) + this.f2224b.Q());
            } else if (m12429m != i2) {
                this.f2224b.m.m12734B0(m12429m, i2);
            }
        } else {
            this.f2223a.m12441a(view, i, false);
            recyclerView$LayoutParams.f2191c = true;
            RecyclerView$w recyclerView$w = this.f2229g;
            if (recyclerView$w != null && recyclerView$w.m12529h()) {
                this.f2229g.m12526k(view);
            }
        }
        if (recyclerView$LayoutParams.f2192d) {
            g0.f2195a.invalidate();
            recyclerView$LayoutParams.f2192d = false;
        }
    }

    /* renamed from: i0 */
    public static C0415d m12650i0(Context context, AttributeSet attributeSet, int i, int i2) {
        C0415d c0415d = new C0415d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.RecyclerView, i, i2);
        c0415d.f2241a = obtainStyledAttributes.getInt(c.RecyclerView_android_orientation, 1);
        c0415d.f2242b = obtainStyledAttributes.getInt(c.RecyclerView_spanCount, 1);
        c0415d.f2243c = obtainStyledAttributes.getBoolean(c.RecyclerView_reverseLayout, false);
        c0415d.f2244d = obtainStyledAttributes.getBoolean(c.RecyclerView_stackFromEnd, false);
        obtainStyledAttributes.recycle();
        return c0415d;
    }

    /* renamed from: n */
    public static int m12636n(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    /* renamed from: t0 */
    private boolean m12617t0(RecyclerView recyclerView, int i, int i2) {
        View focusedChild = recyclerView.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int m12662e0 = m12662e0();
        int m12656g0 = m12656g0();
        int m12632o0 = m12632o0();
        int m12659f0 = m12659f0();
        int m12682W = m12682W();
        int m12665d0 = m12665d0();
        Rect rect = this.f2224b.i;
        m12696P(focusedChild, rect);
        return rect.left - i < m12632o0 - m12659f0 && rect.right - i > m12662e0 && rect.top - i2 < m12682W - m12665d0 && rect.bottom - i2 > m12656g0;
    }

    /* renamed from: v1 */
    private void m12610v1(RecyclerView$t recyclerView$t, int i, View view) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (g0.m12804J()) {
            return;
        }
        if (g0.m12782t() && !g0.m12780v() && !this.f2224b.l.m12834j()) {
            m12625q1(i);
            recyclerView$t.m12574C(g0);
            return;
        }
        m12606x(i);
        recyclerView$t.m12573D(view);
        this.f2224b.g.m12336k(g0);
    }

    /* renamed from: w0 */
    private static boolean m12608w0(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        if (i3 <= 0 || i == i3) {
            if (mode == Integer.MIN_VALUE) {
                boolean z2 = false;
                if (size >= i) {
                    z2 = true;
                }
                return z2;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z = true;
                }
                return z;
            }
        }
        return false;
    }

    /* renamed from: y */
    private void m12603y(int i, View view) {
        this.f2223a.m12438d(i);
    }

    /* renamed from: A */
    void m12738A(RecyclerView recyclerView, RecyclerView$t recyclerView$t) {
        this.f2231i = false;
        m12713I0(recyclerView, recyclerView$t);
    }

    /* renamed from: A0 */
    public void m12737A0(View view, int i, int i2) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect k0 = this.f2224b.k0(view);
        int i3 = k0.left;
        int i4 = k0.right;
        int i5 = k0.top;
        int i6 = k0.bottom;
        int m12708K = m12708K(m12632o0(), m12629p0(), m12662e0() + m12659f0() + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width, m12645k());
        int m12708K2 = m12708K(m12682W(), m12680X(), m12656g0() + m12665d0() + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).topMargin + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height, m12642l());
        if (m12721F1(view, m12708K, m12708K2, recyclerView$LayoutParams)) {
            view.measure(m12708K, m12708K2);
        }
    }

    /* renamed from: A1 */
    void m12736A1(int i, int i2) {
        this.f2239q = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.f2237o = mode;
        if (mode == 0 && !RecyclerView.E0) {
            this.f2239q = 0;
        }
        this.f2240r = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.f2238p = mode2;
        if (mode2 != 0 || RecyclerView.E0) {
            return;
        }
        this.f2240r = 0;
    }

    /* renamed from: B */
    public View m12735B(View view) {
        View S;
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView == null || (S = recyclerView.S(view)) == null || this.f2223a.m12428n(S)) {
            return null;
        }
        return S;
    }

    /* renamed from: B0 */
    public void m12734B0(int i, int i2) {
        View m12714I = m12714I(i);
        if (m12714I != null) {
            m12606x(i);
            m12654h(m12714I, i2);
            return;
        }
        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f2224b.toString());
    }

    /* renamed from: B1 */
    public void m12733B1(int i, int i2) {
        RecyclerView.f(this.f2224b, i, i2);
    }

    /* renamed from: C */
    public View m12732C(int i) {
        int m12711J = m12711J();
        for (int i2 = 0; i2 < m12711J; i2++) {
            View m12714I = m12714I(i2);
            RecyclerView$a0 g0 = RecyclerView.g0(m12714I);
            if (g0 != null && g0.m12789m() == i && !g0.m12804J() && (this.f2224b.i0.m12508e() || !g0.m12780v())) {
                return m12714I;
            }
        }
        return null;
    }

    /* renamed from: C0 */
    public void m12731C0(int i) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView != null) {
            recyclerView.A0(i);
        }
    }

    /* renamed from: C1 */
    public void m12730C1(Rect rect, int i, int i2) {
        int width = rect.width();
        int m12662e0 = m12662e0();
        int m12659f0 = m12659f0();
        int height = rect.height();
        int m12656g0 = m12656g0();
        m12733B1(m12636n(i, width + m12662e0 + m12659f0, m12668c0()), m12636n(i2, height + m12656g0 + m12665d0(), m12671b0()));
    }

    /* renamed from: D */
    public abstract RecyclerView$LayoutParams m12729D();

    /* renamed from: D0 */
    public void m12728D0(int i) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView != null) {
            recyclerView.B0(i);
        }
    }

    /* renamed from: D1 */
    void m12727D1(int i, int i2) {
        int m12711J = m12711J();
        if (m12711J == 0) {
            this.f2224b.x(i, i2);
            return;
        }
        int i3 = 0;
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        while (true) {
            int i8 = i7;
            if (i3 >= m12711J) {
                this.f2224b.i.set(i6, i8, i4, i5);
                m12730C1(this.f2224b.i, i, i2);
                return;
            }
            View m12714I = m12714I(i3);
            Rect rect = this.f2224b.i;
            m12696P(m12714I, rect);
            int i9 = rect.left;
            int i10 = i6;
            if (i9 < i6) {
                i10 = i9;
            }
            int i11 = rect.right;
            int i12 = i4;
            if (i11 > i4) {
                i12 = i11;
            }
            int i13 = rect.top;
            int i14 = i8;
            if (i13 < i8) {
                i14 = i13;
            }
            int i15 = rect.bottom;
            int i16 = i5;
            if (i15 > i5) {
                i16 = i15;
            }
            i3++;
            i4 = i12;
            i5 = i16;
            i6 = i10;
            i7 = i14;
        }
    }

    /* renamed from: E */
    public RecyclerView$LayoutParams m12726E(Context context, AttributeSet attributeSet) {
        return new RecyclerView$LayoutParams(context, attributeSet);
    }

    /* renamed from: E0 */
    public void m12725E0(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2) {
    }

    /* renamed from: E1 */
    void m12724E1(RecyclerView recyclerView) {
        int i;
        if (recyclerView == null) {
            this.f2224b = null;
            this.f2223a = null;
            i = 0;
            this.f2239q = 0;
        } else {
            this.f2224b = recyclerView;
            this.f2223a = recyclerView.f;
            this.f2239q = recyclerView.getWidth();
            i = recyclerView.getHeight();
        }
        this.f2240r = i;
        this.f2237o = 1073741824;
        this.f2238p = 1073741824;
    }

    /* renamed from: F */
    public RecyclerView$LayoutParams m12723F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof RecyclerView$LayoutParams ? new RecyclerView$LayoutParams((RecyclerView$LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new RecyclerView$LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new RecyclerView$LayoutParams(layoutParams);
    }

    /* renamed from: F0 */
    public boolean m12722F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    /* renamed from: F1 */
    boolean m12721F1(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return view.isLayoutRequested() || !this.f2233k || !m12608w0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width) || !m12608w0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height);
    }

    /* renamed from: G */
    public int m12720G() {
        return -1;
    }

    /* renamed from: G0 */
    public void m12719G0(RecyclerView recyclerView) {
    }

    /* renamed from: G1 */
    boolean m12718G1() {
        return false;
    }

    /* renamed from: H */
    public int m12717H(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b.bottom;
    }

    @Deprecated
    /* renamed from: H0 */
    public void m12716H0(RecyclerView recyclerView) {
    }

    /* renamed from: H1 */
    boolean m12715H1(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return !this.f2233k || !m12608w0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width) || !m12608w0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height);
    }

    /* renamed from: I */
    public View m12714I(int i) {
        C0421b c0421b = this.f2223a;
        return c0421b != null ? c0421b.m12436f(i) : null;
    }

    /* renamed from: I0 */
    public void m12713I0(RecyclerView recyclerView, RecyclerView$t recyclerView$t) {
        m12716H0(recyclerView);
    }

    /* renamed from: I1 */
    public void m12712I1(RecyclerView recyclerView, RecyclerView$x recyclerView$x, int i) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    /* renamed from: J */
    public int m12711J() {
        C0421b c0421b = this.f2223a;
        return c0421b != null ? c0421b.m12435g() : 0;
    }

    /* renamed from: J0 */
    public View m12710J0(View view, int i, RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return null;
    }

    /* renamed from: J1 */
    public void m12709J1(RecyclerView$w recyclerView$w) {
        RecyclerView$w recyclerView$w2 = this.f2229g;
        if (recyclerView$w2 != null && recyclerView$w != recyclerView$w2 && recyclerView$w2.m12529h()) {
            this.f2229g.m12519r();
        }
        this.f2229g = recyclerView$w;
        recyclerView$w.m12520q(this.f2224b, this);
    }

    /* renamed from: K0 */
    public void m12707K0(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f2224b;
        m12704L0(recyclerView.c, recyclerView.i0, accessibilityEvent);
    }

    /* renamed from: K1 */
    void m12706K1() {
        RecyclerView$w recyclerView$w = this.f2229g;
        if (recyclerView$w != null) {
            recyclerView$w.m12519r();
        }
    }

    /* renamed from: L0 */
    public void m12704L0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1)) {
            z = true;
            if (!this.f2224b.canScrollVertically(-1)) {
                z = true;
                if (!this.f2224b.canScrollHorizontally(-1)) {
                    z = this.f2224b.canScrollHorizontally(1);
                }
            }
        }
        accessibilityEvent.setScrollable(z);
        RecyclerView$Adapter recyclerView$Adapter = this.f2224b.l;
        if (recyclerView$Adapter == null) {
            return;
        }
        accessibilityEvent.setItemCount(recyclerView$Adapter.m12838f());
    }

    /* renamed from: L1 */
    public boolean m12703L1() {
        return false;
    }

    /* renamed from: M */
    public boolean m12702M() {
        RecyclerView recyclerView = this.f2224b;
        return recyclerView != null && recyclerView.h;
    }

    /* renamed from: M0 */
    void m12701M0(d.h.m.c0.c cVar) {
        RecyclerView recyclerView = this.f2224b;
        m12699N0(recyclerView.c, recyclerView.i0, cVar);
    }

    /* renamed from: N */
    public int m12700N(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return -1;
    }

    /* renamed from: N0 */
    public void m12699N0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, d.h.m.c0.c cVar) {
        if (this.f2224b.canScrollVertically(-1) || this.f2224b.canScrollHorizontally(-1)) {
            cVar.a(8192);
            cVar.x0(true);
        }
        if (this.f2224b.canScrollVertically(1) || this.f2224b.canScrollHorizontally(1)) {
            cVar.a(4096);
            cVar.x0(true);
        }
        cVar.e0(c.b.b(m12644k0(recyclerView$t, recyclerView$x), m12700N(recyclerView$t, recyclerView$x), m12611v0(recyclerView$t, recyclerView$x), m12641l0(recyclerView$t, recyclerView$x)));
    }

    /* renamed from: O */
    public int m12698O(View view) {
        return view.getBottom() + m12717H(view);
    }

    /* renamed from: O0 */
    void m12697O0(View view, d.h.m.c0.c cVar) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (g0 == null || g0.m12780v() || this.f2223a.m12428n(g0.f2195a)) {
            return;
        }
        RecyclerView recyclerView = this.f2224b;
        m12695P0(recyclerView.c, recyclerView.i0, view, cVar);
    }

    /* renamed from: P */
    public void m12696P(View view, Rect rect) {
        RecyclerView.h0(view, rect);
    }

    /* renamed from: P0 */
    public void m12695P0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, View view, d.h.m.c0.c cVar) {
    }

    /* renamed from: Q */
    public int m12694Q(View view) {
        return view.getLeft() - m12674a0(view);
    }

    /* renamed from: Q0 */
    public View m12693Q0(View view, int i) {
        return null;
    }

    /* renamed from: R */
    public int m12692R(View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    /* renamed from: R0 */
    public void m12691R0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: S */
    public int m12690S(View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    /* renamed from: S0 */
    public void m12689S0(RecyclerView recyclerView) {
    }

    /* renamed from: T */
    public int m12688T(View view) {
        return view.getRight() + m12647j0(view);
    }

    /* renamed from: T0 */
    public void m12687T0(RecyclerView recyclerView, int i, int i2, int i3) {
    }

    /* renamed from: U */
    public int m12686U(View view) {
        return view.getTop() - m12638m0(view);
    }

    /* renamed from: U0 */
    public void m12685U0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: V */
    public View m12684V() {
        View focusedChild;
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2223a.m12428n(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    /* renamed from: V0 */
    public void m12683V0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: W */
    public int m12682W() {
        return this.f2240r;
    }

    /* renamed from: W0 */
    public void m12681W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m12683V0(recyclerView, i, i2);
    }

    /* renamed from: X */
    public int m12680X() {
        return this.f2238p;
    }

    /* renamed from: X0 */
    public void m12679X0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    /* renamed from: Y */
    public int m12678Y() {
        RecyclerView recyclerView = this.f2224b;
        RecyclerView$Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        return adapter != null ? adapter.m12838f() : 0;
    }

    /* renamed from: Y0 */
    public void m12677Y0(RecyclerView$x recyclerView$x) {
    }

    /* renamed from: Z */
    public int m12676Z() {
        return t.B(this.f2224b);
    }

    /* renamed from: Z0 */
    public void m12675Z0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, int i, int i2) {
        this.f2224b.x(i, i2);
    }

    /* renamed from: a0 */
    public int m12674a0(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b.left;
    }

    @Deprecated
    /* renamed from: a1 */
    public boolean m12673a1(RecyclerView recyclerView, View view, View view2) {
        return m12605x0() || recyclerView.u0();
    }

    /* renamed from: b */
    public void m12672b(View view) {
        m12669c(view, -1);
    }

    /* renamed from: b0 */
    public int m12671b0() {
        return t.C(this.f2224b);
    }

    /* renamed from: b1 */
    public boolean m12670b1(RecyclerView recyclerView, RecyclerView$x recyclerView$x, View view, View view2) {
        return m12673a1(recyclerView, view, view2);
    }

    /* renamed from: c */
    public void m12669c(View view, int i) {
        m12660f(view, i, true);
    }

    /* renamed from: c0 */
    public int m12668c0() {
        return t.D(this.f2224b);
    }

    /* renamed from: c1 */
    public void m12667c1(Parcelable parcelable) {
    }

    /* renamed from: d */
    public void m12666d(View view) {
        m12663e(view, -1);
    }

    /* renamed from: d0 */
    public int m12665d0() {
        RecyclerView recyclerView = this.f2224b;
        return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
    }

    /* renamed from: d1 */
    public Parcelable m12664d1() {
        return null;
    }

    /* renamed from: e */
    public void m12663e(View view, int i) {
        m12660f(view, i, false);
    }

    /* renamed from: e0 */
    public int m12662e0() {
        RecyclerView recyclerView = this.f2224b;
        return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
    }

    /* renamed from: e1 */
    public void m12661e1(int i) {
    }

    /* renamed from: f0 */
    public int m12659f0() {
        RecyclerView recyclerView = this.f2224b;
        return recyclerView != null ? recyclerView.getPaddingRight() : 0;
    }

    /* renamed from: f1 */
    public void m12658f1(RecyclerView$w recyclerView$w) {
        if (this.f2229g == recyclerView$w) {
            this.f2229g = null;
        }
    }

    /* renamed from: g */
    public void m12657g(String str) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView != null) {
            recyclerView.p(str);
        }
    }

    /* renamed from: g0 */
    public int m12656g0() {
        RecyclerView recyclerView = this.f2224b;
        return recyclerView != null ? recyclerView.getPaddingTop() : 0;
    }

    /* renamed from: g1 */
    boolean m12655g1(int i, Bundle bundle) {
        RecyclerView recyclerView = this.f2224b;
        return m12652h1(recyclerView.c, recyclerView.i0, i, bundle);
    }

    /* renamed from: h */
    public void m12654h(View view, int i) {
        m12651i(view, i, (RecyclerView$LayoutParams) view.getLayoutParams());
    }

    /* renamed from: h0 */
    public int m12653h0(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).m12820a();
    }

    /* renamed from: h1 */
    public boolean m12652h1(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, int i, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        int i5;
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView == null) {
            return false;
        }
        if (i == 4096) {
            i5 = recyclerView.canScrollVertically(1) ? (m12682W() - m12656g0()) - m12665d0() : 0;
            i2 = i5;
            if (this.f2224b.canScrollHorizontally(1)) {
                i4 = (m12632o0() - m12662e0()) - m12659f0();
                int i6 = i5;
                i3 = i4;
                i2 = i6;
            }
            i3 = 0;
        } else if (i != 8192) {
            i3 = 0;
            i2 = 0;
        } else {
            i5 = recyclerView.canScrollVertically(-1) ? -((m12682W() - m12656g0()) - m12665d0()) : 0;
            i2 = i5;
            if (this.f2224b.canScrollHorizontally(-1)) {
                i4 = -((m12632o0() - m12662e0()) - m12659f0());
                int i62 = i5;
                i3 = i4;
                i2 = i62;
            }
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        this.f2224b.p1(i3, i2, (Interpolator) null, Integer.MIN_VALUE, true);
        return true;
    }

    /* renamed from: i */
    public void m12651i(View view, int i, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (g0.m12780v()) {
            this.f2224b.g.m12345b(g0);
        } else {
            this.f2224b.g.m12331p(g0);
        }
        this.f2223a.m12439c(view, i, recyclerView$LayoutParams, g0.m12780v());
    }

    /* renamed from: i1 */
    boolean m12649i1(View view, int i, Bundle bundle) {
        RecyclerView recyclerView = this.f2224b;
        return m12646j1(recyclerView.c, recyclerView.i0, view, i, bundle);
    }

    /* renamed from: j */
    public void m12648j(View view, Rect rect) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.k0(view));
        }
    }

    /* renamed from: j0 */
    public int m12647j0(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b.right;
    }

    /* renamed from: j1 */
    public boolean m12646j1(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x, View view, int i, Bundle bundle) {
        return false;
    }

    /* renamed from: k */
    public boolean m12645k() {
        return false;
    }

    /* renamed from: k0 */
    public int m12644k0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return -1;
    }

    /* renamed from: k1 */
    public void m12643k1(RecyclerView$t recyclerView$t) {
        for (int m12711J = m12711J() - 1; m12711J >= 0; m12711J--) {
            if (!RecyclerView.g0(m12714I(m12711J)).m12804J()) {
                m12634n1(m12711J, recyclerView$t);
            }
        }
    }

    /* renamed from: l */
    public boolean m12642l() {
        return false;
    }

    /* renamed from: l0 */
    public int m12641l0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: l1 */
    void m12640l1(RecyclerView$t recyclerView$t) {
        int m12554j = recyclerView$t.m12554j();
        for (int i = m12554j - 1; i >= 0; i--) {
            View m12550n = recyclerView$t.m12550n(i);
            RecyclerView$a0 g0 = RecyclerView.g0(m12550n);
            if (!g0.m12804J()) {
                g0.m12807G(false);
                if (g0.m12778x()) {
                    this.f2224b.removeDetachedView(m12550n, false);
                }
                RecyclerView$k recyclerView$k = this.f2224b.N;
                if (recyclerView$k != null) {
                    recyclerView$k.m12761j(g0);
                }
                g0.m12807G(true);
                recyclerView$t.m12539y(m12550n);
            }
        }
        recyclerView$t.m12559e();
        if (m12554j > 0) {
            this.f2224b.invalidate();
        }
    }

    /* renamed from: m */
    public boolean m12639m(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams != null;
    }

    /* renamed from: m0 */
    public int m12638m0(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b.top;
    }

    /* renamed from: m1 */
    public void m12637m1(View view, RecyclerView$t recyclerView$t) {
        m12628p1(view);
        recyclerView$t.m12575B(view);
    }

    /* renamed from: n0 */
    public void m12635n0(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((RecyclerView$LayoutParams) view.getLayoutParams()).f2190b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.f2224b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f2224b.k;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    /* renamed from: n1 */
    public void m12634n1(int i, RecyclerView$t recyclerView$t) {
        View m12714I = m12714I(i);
        m12625q1(i);
        recyclerView$t.m12575B(m12714I);
    }

    /* renamed from: o */
    public void m12633o(int i, int i2, RecyclerView$x recyclerView$x, AbstractC0414c abstractC0414c) {
    }

    /* renamed from: o0 */
    public int m12632o0() {
        return this.f2239q;
    }

    /* renamed from: o1 */
    public boolean m12631o1(Runnable runnable) {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    /* renamed from: p */
    public void m12630p(int i, AbstractC0414c abstractC0414c) {
    }

    /* renamed from: p0 */
    public int m12629p0() {
        return this.f2237o;
    }

    /* renamed from: p1 */
    public void m12628p1(View view) {
        this.f2223a.m12426p(view);
    }

    /* renamed from: q */
    public int m12627q(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: q0 */
    boolean m12626q0() {
        int m12711J = m12711J();
        for (int i = 0; i < m12711J; i++) {
            ViewGroup.LayoutParams layoutParams = m12714I(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q1 */
    public void m12625q1(int i) {
        if (m12714I(i) != null) {
            this.f2223a.m12425q(i);
        }
    }

    /* renamed from: r */
    public int m12624r(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: r0 */
    public boolean m12623r0() {
        return this.f2231i;
    }

    /* renamed from: r1 */
    public boolean m12622r1(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return m12619s1(recyclerView, view, rect, z, false);
    }

    /* renamed from: s */
    public int m12621s(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: s0 */
    public boolean m12620s0() {
        return this.f2232j;
    }

    /* renamed from: s1 */
    public boolean m12619s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int[] m12705L = m12705L(view, rect);
        int i = m12705L[0];
        int i2 = m12705L[1];
        if (!z2 || m12617t0(recyclerView, i, i2)) {
            if (i == 0 && i2 == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
                return true;
            }
            recyclerView.m1(i, i2);
            return true;
        }
        return false;
    }

    /* renamed from: t */
    public int m12618t(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: t1 */
    public void m12616t1() {
        RecyclerView recyclerView = this.f2224b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    /* renamed from: u */
    public int m12615u(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: u0 */
    public final boolean m12614u0() {
        return this.f2234l;
    }

    /* renamed from: u1 */
    public void m12613u1() {
        this.f2230h = true;
    }

    /* renamed from: v */
    public int m12612v(RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: v0 */
    public boolean m12611v0(RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return false;
    }

    /* renamed from: w */
    public void m12609w(RecyclerView$t recyclerView$t) {
        for (int m12711J = m12711J() - 1; m12711J >= 0; m12711J--) {
            m12610v1(recyclerView$t, m12711J, m12714I(m12711J));
        }
    }

    /* renamed from: w1 */
    public int m12607w1(int i, RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: x */
    public void m12606x(int i) {
        m12603y(i, m12714I(i));
    }

    /* renamed from: x0 */
    public boolean m12605x0() {
        RecyclerView$w recyclerView$w = this.f2229g;
        return recyclerView$w != null && recyclerView$w.m12529h();
    }

    /* renamed from: x1 */
    public void m12604x1(int i) {
    }

    /* renamed from: y0 */
    public boolean m12602y0(View view, boolean z, boolean z2) {
        boolean z3 = this.f2227e.m12357b(view, 24579) && this.f2228f.m12357b(view, 24579);
        return z ? z3 : !z3;
    }

    /* renamed from: y1 */
    public int m12601y1(int i, RecyclerView$t recyclerView$t, RecyclerView$x recyclerView$x) {
        return 0;
    }

    /* renamed from: z */
    void m12600z(RecyclerView recyclerView) {
        this.f2231i = true;
        m12719G0(recyclerView);
    }

    /* renamed from: z0 */
    public void m12599z0(View view, int i, int i2, int i3, int i4) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect rect = recyclerView$LayoutParams.f2190b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).bottomMargin);
    }

    /* renamed from: z1 */
    void m12598z1(RecyclerView recyclerView) {
        m12736A1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }
}
