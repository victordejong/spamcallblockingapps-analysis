package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
class LinearLayoutManager$a {

    /* renamed from: a */
    AbstractC0430i f2160a;

    /* renamed from: b */
    int f2161b;

    /* renamed from: c */
    int f2162c;

    /* renamed from: d */
    boolean f2163d;

    /* renamed from: e */
    boolean f2164e;

    LinearLayoutManager$a() {
        m12849e();
    }

    /* renamed from: a */
    void m12853a() {
        this.f2162c = this.f2163d ? this.f2160a.m12372i() : this.f2160a.m12368m();
    }

    /* renamed from: b */
    public void m12852b(View view, int i) {
        this.f2162c = this.f2163d ? this.f2160a.m12377d(view) + this.f2160a.m12366o() : this.f2160a.m12374g(view);
        this.f2161b = i;
    }

    /* renamed from: c */
    public void m12851c(View view, int i) {
        int m12366o = this.f2160a.m12366o();
        if (m12366o >= 0) {
            m12852b(view, i);
            return;
        }
        this.f2161b = i;
        if (this.f2163d) {
            int m12372i = (this.f2160a.m12372i() - m12366o) - this.f2160a.m12377d(view);
            this.f2162c = this.f2160a.m12372i() - m12372i;
            if (m12372i <= 0) {
                return;
            }
            int m12376e = this.f2160a.m12376e(view);
            int i2 = this.f2162c;
            int m12368m = this.f2160a.m12368m();
            int min = (i2 - m12376e) - (m12368m + Math.min(this.f2160a.m12374g(view) - m12368m, 0));
            if (min >= 0) {
                return;
            }
            this.f2162c += Math.min(m12372i, -min);
            return;
        }
        int m12374g = this.f2160a.m12374g(view);
        int m12368m2 = m12374g - this.f2160a.m12368m();
        this.f2162c = m12374g;
        if (m12368m2 <= 0) {
            return;
        }
        int m12376e2 = this.f2160a.m12376e(view);
        int m12372i2 = (this.f2160a.m12372i() - Math.min(0, (this.f2160a.m12372i() - m12366o) - this.f2160a.m12377d(view))) - (m12374g + m12376e2);
        if (m12372i2 >= 0) {
            return;
        }
        this.f2162c -= Math.min(m12368m2, -m12372i2);
    }

    /* renamed from: d */
    boolean m12850d(View view, RecyclerView$x recyclerView$x) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return !recyclerView$LayoutParams.m12818c() && recyclerView$LayoutParams.m12820a() >= 0 && recyclerView$LayoutParams.m12820a() < recyclerView$x.m12511b();
    }

    /* renamed from: e */
    void m12849e() {
        this.f2161b = -1;
        this.f2162c = Integer.MIN_VALUE;
        this.f2163d = false;
        this.f2164e = false;
    }

    public String toString() {
        return "AnchorInfo{mPosition=" + this.f2161b + ", mCoordinate=" + this.f2162c + ", mLayoutFromEnd=" + this.f2163d + ", mValid=" + this.f2164e + '}';
    }
}
