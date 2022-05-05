package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/OrientationHelper.class */
public abstract class OrientationHelper {

    /* renamed from: a */
    protected final RecyclerView.LayoutManager f4733a;

    /* renamed from: b */
    private int f4734b;

    /* renamed from: c */
    final Rect f4735c;

    private OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.f4734b = Integer.MIN_VALUE;
        this.f4735c = new Rect();
        this.f4733a = layoutManager;
    }

    /* renamed from: a */
    public static OrientationHelper m17546a(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.1
            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: d */
            public int mo17541d(View view) {
                return this.f4733a.m17426U(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: e */
            public int mo17540e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f4733a.m17427T(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: f */
            public int mo17539f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f4733a.m17428S(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: g */
            public int mo17538g(View view) {
                return this.f4733a.m17430R(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: h */
            public int mo17537h() {
                return this.f4733a.m17385p0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: i */
            public int mo17536i() {
                return this.f4733a.m17385p0() - this.f4733a.m17405g0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: j */
            public int mo17535j() {
                return this.f4733a.m17405g0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: k */
            public int mo17534k() {
                return this.f4733a.m17382q0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: l */
            public int mo17533l() {
                return this.f4733a.m17421Y();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: m */
            public int mo17532m() {
                return this.f4733a.m17407f0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: n */
            public int mo17531n() {
                return (this.f4733a.m17385p0() - this.f4733a.m17407f0()) - this.f4733a.m17405g0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: p */
            public int mo17530p(View view) {
                this.f4733a.m17387o0(view, true, this.f4735c);
                return this.f4735c.right;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: q */
            public int mo17529q(View view) {
                this.f4733a.m17387o0(view, true, this.f4735c);
                return this.f4735c.left;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: r */
            public void mo17528r(int i) {
                this.f4733a.mo17209D0(i);
            }
        };
    }

    /* renamed from: b */
    public static OrientationHelper m17545b(RecyclerView.LayoutManager layoutManager, int i) {
        if (i == 0) {
            return m17546a(layoutManager);
        }
        if (i == 1) {
            return m17544c(layoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: c */
    public static OrientationHelper m17544c(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.2
            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: d */
            public int mo17541d(View view) {
                return this.f4733a.m17433P(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: e */
            public int mo17540e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f4733a.m17428S(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: f */
            public int mo17539f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f4733a.m17427T(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: g */
            public int mo17538g(View view) {
                return this.f4733a.m17425V(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: h */
            public int mo17537h() {
                return this.f4733a.m17422X();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: i */
            public int mo17536i() {
                return this.f4733a.m17422X() - this.f4733a.m17409e0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: j */
            public int mo17535j() {
                return this.f4733a.m17409e0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: k */
            public int mo17534k() {
                return this.f4733a.m17421Y();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: l */
            public int mo17533l() {
                return this.f4733a.m17382q0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: m */
            public int mo17532m() {
                return this.f4733a.m17403h0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: n */
            public int mo17531n() {
                return (this.f4733a.m17422X() - this.f4733a.m17403h0()) - this.f4733a.m17409e0();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: p */
            public int mo17530p(View view) {
                this.f4733a.m17387o0(view, true, this.f4735c);
                return this.f4735c.bottom;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: q */
            public int mo17529q(View view) {
                this.f4733a.m17387o0(view, true, this.f4735c);
                return this.f4735c.top;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            /* renamed from: r */
            public void mo17528r(int i) {
                this.f4733a.mo17205E0(i);
            }
        };
    }

    /* renamed from: d */
    public abstract int mo17541d(View view);

    /* renamed from: e */
    public abstract int mo17540e(View view);

    /* renamed from: f */
    public abstract int mo17539f(View view);

    /* renamed from: g */
    public abstract int mo17538g(View view);

    /* renamed from: h */
    public abstract int mo17537h();

    /* renamed from: i */
    public abstract int mo17536i();

    /* renamed from: j */
    public abstract int mo17535j();

    /* renamed from: k */
    public abstract int mo17534k();

    /* renamed from: l */
    public abstract int mo17533l();

    /* renamed from: m */
    public abstract int mo17532m();

    /* renamed from: n */
    public abstract int mo17531n();

    /* renamed from: o */
    public int m17543o() {
        return Integer.MIN_VALUE == this.f4734b ? 0 : mo17531n() - this.f4734b;
    }

    /* renamed from: p */
    public abstract int mo17530p(View view);

    /* renamed from: q */
    public abstract int mo17529q(View view);

    /* renamed from: r */
    public abstract void mo17528r(int i);

    /* renamed from: s */
    public void m17542s() {
        this.f4734b = mo17531n();
    }
}
