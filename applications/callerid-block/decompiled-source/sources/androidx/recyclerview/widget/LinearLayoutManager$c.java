package androidx.recyclerview.widget;

import android.view.View;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
class LinearLayoutManager$c {

    /* renamed from: b */
    int f2170b;

    /* renamed from: c */
    int f2171c;

    /* renamed from: d */
    int f2172d;

    /* renamed from: e */
    int f2173e;

    /* renamed from: f */
    int f2174f;

    /* renamed from: g */
    int f2175g;

    /* renamed from: j */
    boolean f2178j;

    /* renamed from: k */
    int f2179k;

    /* renamed from: m */
    boolean f2181m;

    /* renamed from: a */
    boolean f2169a = true;

    /* renamed from: h */
    int f2176h = 0;

    /* renamed from: i */
    int f2177i = 0;

    /* renamed from: l */
    List<RecyclerView$a0> f2180l = null;

    LinearLayoutManager$c() {
    }

    /* renamed from: e */
    private View m12843e() {
        int size = this.f2180l.size();
        for (int i = 0; i < size; i++) {
            View view = this.f2180l.get(i).f2195a;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
            if (!recyclerView$LayoutParams.m12818c() && this.f2172d == recyclerView$LayoutParams.m12820a()) {
                m12846b(view);
                return view;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m12847a() {
        m12846b(null);
    }

    /* renamed from: b */
    public void m12846b(View view) {
        View f = m12842f(view);
        this.f2172d = f == null ? -1 : ((RecyclerView$LayoutParams) f.getLayoutParams()).m12820a();
    }

    /* renamed from: c */
    boolean m12845c(RecyclerView$x recyclerView$x) {
        int i = this.f2172d;
        return i >= 0 && i < recyclerView$x.m12511b();
    }

    /* renamed from: d */
    View m12844d(RecyclerView$t recyclerView$t) {
        if (this.f2180l != null) {
            return m12843e();
        }
        View o = recyclerView$t.m12549o(this.f2172d);
        this.f2172d += this.f2173e;
        return o;
    }

    /* renamed from: f */
    public View m12842f(View view) {
        View view2;
        int size = this.f2180l.size();
        View view3 = null;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (true) {
            view2 = view3;
            if (i2 >= size) {
                break;
            }
            View view4 = this.f2180l.get(i2).f2195a;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view4.getLayoutParams();
            view3 = view3;
            i = i;
            if (view4 != view) {
                if (recyclerView$LayoutParams.m12818c()) {
                    view3 = view3;
                    i = i;
                } else {
                    int a = (recyclerView$LayoutParams.m12820a() - this.f2172d) * this.f2173e;
                    if (a < 0) {
                        view3 = view3;
                        i = i;
                    } else {
                        view3 = view3;
                        i = i;
                        if (a >= i) {
                            continue;
                        } else if (a == 0) {
                            view2 = view4;
                            break;
                        } else {
                            i = a;
                            view3 = view4;
                        }
                    }
                }
            }
            i2++;
        }
        return view2;
    }
}
