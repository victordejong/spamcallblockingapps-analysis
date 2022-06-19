package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
public abstract class AbstractC0975i {

    /* renamed from: a */
    protected final RecyclerView.AbstractC0921o f4369a;

    /* renamed from: b */
    private int f4370b;

    /* renamed from: c */
    final Rect f4371c;

    /* renamed from: androidx.recyclerview.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i$a.class */
    public class C0976a extends AbstractC0975i {
        C0976a(RecyclerView.AbstractC0921o abstractC0921o) {
            super(abstractC0921o, null);
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: d */
        public int mo31396d(View view) {
            return this.f4369a.m31841T(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: e */
        public int mo31395e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f4369a.m31842S(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: f */
        public int mo31394f(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f4369a.m31843R(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: g */
        public int mo31393g(View view) {
            return this.f4369a.m31845Q(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: h */
        public int mo31392h() {
            return this.f4369a.m31800o0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: i */
        public int mo31391i() {
            return this.f4369a.m31800o0() - this.f4369a.m31821f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: j */
        public int mo31390j() {
            return this.f4369a.m31821f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: k */
        public int mo31389k() {
            return this.f4369a.m31797p0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: l */
        public int mo31388l() {
            return this.f4369a.m31836X();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: m */
        public int mo31387m() {
            return this.f4369a.m31823e0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: n */
        public int mo31386n() {
            return (this.f4369a.m31800o0() - this.f4369a.m31823e0()) - this.f4369a.m31821f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: p */
        public int mo31385p(View view) {
            this.f4369a.m31802n0(view, true, this.f4371c);
            return this.f4371c.right;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: q */
        public int mo31384q(View view) {
            this.f4369a.m31802n0(view, true, this.f4371c);
            return this.f4371c.left;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: r */
        public void mo31383r(int i) {
            this.f4369a.mo31695C0(i);
        }
    }

    /* renamed from: androidx.recyclerview.widget.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i$b.class */
    public class C0977b extends AbstractC0975i {
        C0977b(RecyclerView.AbstractC0921o abstractC0921o) {
            super(abstractC0921o, null);
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: d */
        public int mo31396d(View view) {
            return this.f4369a.m31849O(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: e */
        public int mo31395e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f4369a.m31843R(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: f */
        public int mo31394f(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f4369a.m31842S(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: g */
        public int mo31393g(View view) {
            return this.f4369a.m31840U(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: h */
        public int mo31392h() {
            return this.f4369a.m31837W();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: i */
        public int mo31391i() {
            return this.f4369a.m31837W() - this.f4369a.m31825d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: j */
        public int mo31390j() {
            return this.f4369a.m31825d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: k */
        public int mo31389k() {
            return this.f4369a.m31836X();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: l */
        public int mo31388l() {
            return this.f4369a.m31797p0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: m */
        public int mo31387m() {
            return this.f4369a.m31819g0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: n */
        public int mo31386n() {
            return (this.f4369a.m31837W() - this.f4369a.m31819g0()) - this.f4369a.m31825d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: p */
        public int mo31385p(View view) {
            this.f4369a.m31802n0(view, true, this.f4371c);
            return this.f4371c.bottom;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: q */
        public int mo31384q(View view) {
            this.f4369a.m31802n0(view, true, this.f4371c);
            return this.f4371c.top;
        }

        @Override // androidx.recyclerview.widget.AbstractC0975i
        /* renamed from: r */
        public void mo31383r(int i) {
            this.f4369a.mo31693D0(i);
        }
    }

    private AbstractC0975i(RecyclerView.AbstractC0921o abstractC0921o) {
        this.f4370b = Integer.MIN_VALUE;
        this.f4371c = new Rect();
        this.f4369a = abstractC0921o;
    }

    /* synthetic */ AbstractC0975i(RecyclerView.AbstractC0921o abstractC0921o, C0976a c0976a) {
        this(abstractC0921o);
    }

    /* renamed from: a */
    public static AbstractC0975i m31401a(RecyclerView.AbstractC0921o abstractC0921o) {
        return new C0976a(abstractC0921o);
    }

    /* renamed from: b */
    public static AbstractC0975i m31400b(RecyclerView.AbstractC0921o abstractC0921o, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return m31399c(abstractC0921o);
        }
        return m31401a(abstractC0921o);
    }

    /* renamed from: c */
    public static AbstractC0975i m31399c(RecyclerView.AbstractC0921o abstractC0921o) {
        return new C0977b(abstractC0921o);
    }

    /* renamed from: d */
    public abstract int mo31396d(View view);

    /* renamed from: e */
    public abstract int mo31395e(View view);

    /* renamed from: f */
    public abstract int mo31394f(View view);

    /* renamed from: g */
    public abstract int mo31393g(View view);

    /* renamed from: h */
    public abstract int mo31392h();

    /* renamed from: i */
    public abstract int mo31391i();

    /* renamed from: j */
    public abstract int mo31390j();

    /* renamed from: k */
    public abstract int mo31389k();

    /* renamed from: l */
    public abstract int mo31388l();

    /* renamed from: m */
    public abstract int mo31387m();

    /* renamed from: n */
    public abstract int mo31386n();

    /* renamed from: o */
    public int m31398o() {
        return Integer.MIN_VALUE == this.f4370b ? 0 : mo31386n() - this.f4370b;
    }

    /* renamed from: p */
    public abstract int mo31385p(View view);

    /* renamed from: q */
    public abstract int mo31384q(View view);

    /* renamed from: r */
    public abstract void mo31383r(int i);

    /* renamed from: s */
    public void m31397s() {
        this.f4370b = mo31386n();
    }
}
