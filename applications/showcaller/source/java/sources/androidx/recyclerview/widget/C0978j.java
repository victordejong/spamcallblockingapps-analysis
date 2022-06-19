package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public class C0978j extends AbstractC0984n {

    /* renamed from: d */
    private AbstractC0975i f4372d;

    /* renamed from: e */
    private AbstractC0975i f4373e;

    /* renamed from: androidx.recyclerview.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$a.class */
    class C0979a extends C0972g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0979a(Context context) {
            super(context);
            C0978j.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0972g, androidx.recyclerview.widget.RecyclerView.AbstractC0935x
        /* renamed from: o */
        protected void mo31375o(View view, RecyclerView.C0938y c0938y, RecyclerView.AbstractC0935x.C0936a c0936a) {
            C0978j c0978j = C0978j.this;
            int[] mo31339c = c0978j.mo31339c(c0978j.f4380a.getLayoutManager(), view);
            int i = mo31339c[0];
            int i2 = mo31339c[1];
            int m31412w = m31412w(Math.max(Math.abs(i), Math.abs(i2)));
            if (m31412w > 0) {
                c0936a.m31706d(i, i2, m31412w, this.f4361j);
            }
        }

        @Override // androidx.recyclerview.widget.C0972g
        /* renamed from: v */
        protected float mo4859v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.C0972g
        /* renamed from: x */
        public int mo31374x(int i) {
            return Math.min(100, super.mo31374x(i));
        }
    }

    /* renamed from: k */
    private int m31382k(View view, AbstractC0975i abstractC0975i) {
        return (abstractC0975i.mo31393g(view) + (abstractC0975i.mo31395e(view) / 2)) - (abstractC0975i.mo31387m() + (abstractC0975i.mo31386n() / 2));
    }

    /* renamed from: l */
    private View m31381l(RecyclerView.AbstractC0921o abstractC0921o, AbstractC0975i abstractC0975i) {
        int m31858J = abstractC0921o.m31858J();
        View view = null;
        if (m31858J == 0) {
            return null;
        }
        int mo31387m = abstractC0975i.mo31387m();
        int mo31386n = abstractC0975i.mo31386n() / 2;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (i2 < m31858J) {
            View m31860I = abstractC0921o.m31860I(i2);
            int abs = Math.abs((abstractC0975i.mo31393g(m31860I) + (abstractC0975i.mo31395e(m31860I) / 2)) - (mo31387m + mo31386n));
            int i3 = i;
            if (abs < i) {
                view = m31860I;
                i3 = abs;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    /* renamed from: m */
    private AbstractC0975i m31380m(RecyclerView.AbstractC0921o abstractC0921o) {
        AbstractC0975i abstractC0975i = this.f4373e;
        if (abstractC0975i == null || abstractC0975i.f4369a != abstractC0921o) {
            this.f4373e = AbstractC0975i.m31401a(abstractC0921o);
        }
        return this.f4373e;
    }

    /* renamed from: n */
    private AbstractC0975i m31379n(RecyclerView.AbstractC0921o abstractC0921o) {
        if (abstractC0921o.mo27381l()) {
            return m31378o(abstractC0921o);
        }
        if (!abstractC0921o.mo31631k()) {
            return null;
        }
        return m31380m(abstractC0921o);
    }

    /* renamed from: o */
    private AbstractC0975i m31378o(RecyclerView.AbstractC0921o abstractC0921o) {
        AbstractC0975i abstractC0975i = this.f4372d;
        if (abstractC0975i == null || abstractC0975i.f4369a != abstractC0921o) {
            this.f4372d = AbstractC0975i.m31399c(abstractC0921o);
        }
        return this.f4372d;
    }

    /* renamed from: p */
    private boolean m31377p(RecyclerView.AbstractC0921o abstractC0921o, int i, int i2) {
        boolean z = true;
        if (!abstractC0921o.mo31631k()) {
            return i2 > 0;
        }
        if (i <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
        if (r0.y < 0.0f) goto L10;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m31376q(androidx.recyclerview.widget.RecyclerView.AbstractC0921o r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.m31835Y()
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof androidx.recyclerview.widget.RecyclerView.AbstractC0935x.AbstractC0937b
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L43
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$x$b r0 = (androidx.recyclerview.widget.RecyclerView.AbstractC0935x.AbstractC0937b) r0
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            android.graphics.PointF r0 = r0.mo31646a(r1)
            r5 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L43
            r0 = r5
            float r0 = r0.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L40
            r0 = r8
            r9 = r0
            r0 = r5
            float r0 = r0.y
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L43
        L40:
            r0 = 1
            r9 = r0
        L43:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0978j.m31376q(androidx.recyclerview.widget.RecyclerView$o):boolean");
    }

    @Override // androidx.recyclerview.widget.AbstractC0984n
    /* renamed from: c */
    public int[] mo31339c(RecyclerView.AbstractC0921o abstractC0921o, View view) {
        int[] iArr = new int[2];
        if (abstractC0921o.mo31631k()) {
            iArr[0] = m31382k(view, m31380m(abstractC0921o));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0921o.mo27381l()) {
            iArr[1] = m31382k(view, m31378o(abstractC0921o));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.AbstractC0984n
    /* renamed from: d */
    protected RecyclerView.AbstractC0935x mo31338d(RecyclerView.AbstractC0921o abstractC0921o) {
        if (!(abstractC0921o instanceof RecyclerView.AbstractC0935x.AbstractC0937b)) {
            return null;
        }
        return new C0979a(this.f4380a.getContext());
    }

    @Override // androidx.recyclerview.widget.AbstractC0984n
    /* renamed from: f */
    public View mo30652f(RecyclerView.AbstractC0921o abstractC0921o) {
        if (abstractC0921o.mo27381l()) {
            return m31381l(abstractC0921o, m31378o(abstractC0921o));
        }
        if (!abstractC0921o.mo31631k()) {
            return null;
        }
        return m31381l(abstractC0921o, m31380m(abstractC0921o));
    }

    @Override // androidx.recyclerview.widget.AbstractC0984n
    /* renamed from: g */
    public int mo31336g(RecyclerView.AbstractC0921o abstractC0921o, int i, int i2) {
        AbstractC0975i m31379n;
        View view;
        int i3;
        int m31835Y = abstractC0921o.m31835Y();
        if (m31835Y == 0 || (m31379n = m31379n(abstractC0921o)) == null) {
            return -1;
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MAX_VALUE;
        int m31858J = abstractC0921o.m31858J();
        int i6 = 0;
        View view2 = null;
        View view3 = null;
        while (i6 < m31858J) {
            View m31860I = abstractC0921o.m31860I(i6);
            if (m31860I == null) {
                i3 = i5;
                view = view2;
            } else {
                int m31382k = m31382k(m31860I, m31379n);
                int i7 = i4;
                View view4 = view3;
                if (m31382k <= 0) {
                    i7 = i4;
                    view4 = view3;
                    if (m31382k > i4) {
                        view4 = m31860I;
                        i7 = m31382k;
                    }
                }
                i4 = i7;
                i3 = i5;
                view = view2;
                view3 = view4;
                if (m31382k >= 0) {
                    i4 = i7;
                    i3 = i5;
                    view = view2;
                    view3 = view4;
                    if (m31382k < i5) {
                        view3 = view4;
                        view = m31860I;
                        i3 = m31382k;
                        i4 = i7;
                    }
                }
            }
            i6++;
            i5 = i3;
            view2 = view;
        }
        boolean m31377p = m31377p(abstractC0921o, i, i2);
        if (m31377p && view2 != null) {
            return abstractC0921o.m31816h0(view2);
        }
        if (!m31377p && view3 != null) {
            return abstractC0921o.m31816h0(view3);
        }
        if (m31377p) {
            view2 = view3;
        }
        if (view2 == null) {
            return -1;
        }
        int m31816h0 = abstractC0921o.m31816h0(view2) + (m31376q(abstractC0921o) == m31377p ? -1 : 1);
        if (m31816h0 >= 0 && m31816h0 < m31835Y) {
            return m31816h0;
        }
        return -1;
    }
}
