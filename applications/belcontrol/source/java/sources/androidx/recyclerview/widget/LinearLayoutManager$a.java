package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
public class LinearLayoutManager$a {

    /* renamed from: a */
    public j00 f1314a;

    /* renamed from: b */
    public int f1315b;

    /* renamed from: c */
    public int f1316c;

    /* renamed from: d */
    public boolean f1317d;

    /* renamed from: e */
    public boolean f1318e;

    public LinearLayoutManager$a() {
        m6236e();
    }

    /* renamed from: a */
    public void m6240a() {
        this.f1316c = this.f1317d ? this.f1314a.i() : this.f1314a.m();
    }

    /* renamed from: b */
    public void m6239b(View view, int i) {
        this.f1316c = this.f1317d ? this.f1314a.d(view) + this.f1314a.o() : this.f1314a.g(view);
        this.f1315b = i;
    }

    /* renamed from: c */
    public void m6238c(View view, int i) {
        int o = this.f1314a.o();
        if (o >= 0) {
            m6239b(view, i);
            return;
        }
        this.f1315b = i;
        if (this.f1317d) {
            int i2 = (this.f1314a.i() - o) - this.f1314a.d(view);
            this.f1316c = this.f1314a.i() - i2;
            if (i2 <= 0) {
                return;
            }
            int e = this.f1314a.e(view);
            int i3 = this.f1316c;
            int m = this.f1314a.m();
            int min = (i3 - e) - (m + Math.min(this.f1314a.g(view) - m, 0));
            if (min >= 0) {
                return;
            }
            this.f1316c += Math.min(i2, -min);
            return;
        }
        int g = this.f1314a.g(view);
        int m2 = g - this.f1314a.m();
        this.f1316c = g;
        if (m2 <= 0) {
            return;
        }
        int e2 = this.f1314a.e(view);
        int i4 = (this.f1314a.i() - Math.min(0, (this.f1314a.i() - o) - this.f1314a.d(view))) - (g + e2);
        if (i4 >= 0) {
            return;
        }
        this.f1316c -= Math.min(m2, -i4);
    }

    /* renamed from: d */
    public boolean m6237d(View view, RecyclerView$y recyclerView$y) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return !recyclerView$LayoutParams.m6226c() && recyclerView$LayoutParams.m6228a() >= 0 && recyclerView$LayoutParams.m6228a() < recyclerView$y.m6114b();
    }

    /* renamed from: e */
    public void m6236e() {
        this.f1315b = -1;
        this.f1316c = Integer.MIN_VALUE;
        this.f1317d = false;
        this.f1318e = false;
    }

    public String toString() {
        return "AnchorInfo{mPosition=" + this.f1315b + ", mCoordinate=" + this.f1316c + ", mLayoutFromEnd=" + this.f1317d + ", mValid=" + this.f1318e + '}';
    }
}
