package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
public abstract class AbstractC0990k {

    /* renamed from: a */
    protected final RecyclerView.AbstractC0925i f3400a;

    /* renamed from: b */
    final Rect f3401b;

    /* renamed from: c */
    private int f3402c;

    private AbstractC0990k(RecyclerView.AbstractC0925i abstractC0925i) {
        this.f3402c = RecyclerView.UNDEFINED_DURATION;
        this.f3401b = new Rect();
        this.f3400a = abstractC0925i;
    }

    /* renamed from: a */
    public static AbstractC0990k m18467a(RecyclerView.AbstractC0925i abstractC0925i) {
        return new AbstractC0990k(abstractC0925i) { // from class: androidx.recyclerview.widget.k.1
            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: a */
            public int mo18462a(View view) {
                return this.f3400a.m18928h(view) - ((RecyclerView.C0930j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: a */
            public void mo18463a(int i) {
                this.f3400a.mo18697j(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: b */
            public int mo18461b(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.rightMargin + this.f3400a.m18925j(view);
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: c */
            public int mo18460c() {
                return this.f3400a.m19008D();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: c */
            public int mo18459c(View view) {
                this.f3400a.m18979a(view, true, this.f3401b);
                return this.f3401b.right;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: d */
            public int mo18458d() {
                return this.f3400a.m19010B() - this.f3400a.m19006F();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: d */
            public int mo18457d(View view) {
                this.f3400a.m18979a(view, true, this.f3401b);
                return this.f3401b.left;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: e */
            public int mo18456e() {
                return this.f3400a.m19010B();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: e */
            public int mo18455e(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.rightMargin + this.f3400a.m18933f(view) + c0930j.leftMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: f */
            public int mo18454f() {
                return (this.f3400a.m19010B() - this.f3400a.m19008D()) - this.f3400a.m19006F();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: f */
            public int mo18453f(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.bottomMargin + this.f3400a.m18930g(view) + c0930j.topMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: g */
            public int mo18452g() {
                return this.f3400a.m19006F();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: h */
            public int mo18451h() {
                return this.f3400a.m18909z();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: i */
            public int mo18450i() {
                return this.f3400a.m19011A();
            }
        };
    }

    /* renamed from: a */
    public static AbstractC0990k m18466a(RecyclerView.AbstractC0925i abstractC0925i, int i) {
        AbstractC0990k m18464b;
        switch (i) {
            case 0:
                m18464b = m18467a(abstractC0925i);
                break;
            case 1:
                m18464b = m18464b(abstractC0925i);
                break;
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
        return m18464b;
    }

    /* renamed from: b */
    public static AbstractC0990k m18464b(RecyclerView.AbstractC0925i abstractC0925i) {
        return new AbstractC0990k(abstractC0925i) { // from class: androidx.recyclerview.widget.k.2
            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: a */
            public int mo18462a(View view) {
                return this.f3400a.m18926i(view) - ((RecyclerView.C0930j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: a */
            public void mo18463a(int i) {
                this.f3400a.mo18694k(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: b */
            public int mo18461b(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.bottomMargin + this.f3400a.m18924k(view);
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: c */
            public int mo18460c() {
                return this.f3400a.m19007E();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: c */
            public int mo18459c(View view) {
                this.f3400a.m18979a(view, true, this.f3401b);
                return this.f3401b.bottom;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: d */
            public int mo18458d() {
                return this.f3400a.m19009C() - this.f3400a.m19005G();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: d */
            public int mo18457d(View view) {
                this.f3400a.m18979a(view, true, this.f3401b);
                return this.f3401b.top;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: e */
            public int mo18456e() {
                return this.f3400a.m19009C();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: e */
            public int mo18455e(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.bottomMargin + this.f3400a.m18930g(view) + c0930j.topMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: f */
            public int mo18454f() {
                return (this.f3400a.m19009C() - this.f3400a.m19007E()) - this.f3400a.m19005G();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: f */
            public int mo18453f(View view) {
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                return c0930j.rightMargin + this.f3400a.m18933f(view) + c0930j.leftMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: g */
            public int mo18452g() {
                return this.f3400a.m19005G();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: h */
            public int mo18451h() {
                return this.f3400a.m19011A();
            }

            @Override // androidx.recyclerview.widget.AbstractC0990k
            /* renamed from: i */
            public int mo18450i() {
                return this.f3400a.m18909z();
            }
        };
    }

    /* renamed from: a */
    public abstract int mo18462a(View view);

    /* renamed from: a */
    public void m18468a() {
        this.f3402c = mo18454f();
    }

    /* renamed from: a */
    public abstract void mo18463a(int i);

    /* renamed from: b */
    public int m18465b() {
        return Integer.MIN_VALUE == this.f3402c ? 0 : mo18454f() - this.f3402c;
    }

    /* renamed from: b */
    public abstract int mo18461b(View view);

    /* renamed from: c */
    public abstract int mo18460c();

    /* renamed from: c */
    public abstract int mo18459c(View view);

    /* renamed from: d */
    public abstract int mo18458d();

    /* renamed from: d */
    public abstract int mo18457d(View view);

    /* renamed from: e */
    public abstract int mo18456e();

    /* renamed from: e */
    public abstract int mo18455e(View view);

    /* renamed from: f */
    public abstract int mo18454f();

    /* renamed from: f */
    public abstract int mo18453f(View view);

    /* renamed from: g */
    public abstract int mo18452g();

    /* renamed from: h */
    public abstract int mo18451h();

    /* renamed from: i */
    public abstract int mo18450i();
}
