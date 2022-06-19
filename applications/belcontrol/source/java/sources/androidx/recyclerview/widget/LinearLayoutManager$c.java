package androidx.recyclerview.widget;

import android.view.View;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
public class LinearLayoutManager$c {

    /* renamed from: b */
    public int f1324b;

    /* renamed from: c */
    public int f1325c;

    /* renamed from: d */
    public int f1326d;

    /* renamed from: e */
    public int f1327e;

    /* renamed from: f */
    public int f1328f;

    /* renamed from: g */
    public int f1329g;

    /* renamed from: j */
    public boolean f1332j;

    /* renamed from: k */
    public int f1333k;

    /* renamed from: m */
    public boolean f1335m;

    /* renamed from: a */
    public boolean f1323a = true;

    /* renamed from: h */
    public int f1330h = 0;

    /* renamed from: i */
    public int f1331i = 0;

    /* renamed from: l */
    public List<RecyclerView$b0> f1334l = null;

    /* renamed from: a */
    public void m6234a() {
        m6233b(null);
    }

    /* renamed from: b */
    public void m6233b(View view) {
        View m6229f = m6229f(view);
        this.f1326d = m6229f == null ? -1 : ((RecyclerView$LayoutParams) m6229f.getLayoutParams()).m6228a();
    }

    /* renamed from: c */
    public boolean m6232c(RecyclerView$y recyclerView$y) {
        int i = this.f1326d;
        return i >= 0 && i < recyclerView$y.m6114b();
    }

    /* renamed from: d */
    public View m6231d(RecyclerView$u recyclerView$u) {
        if (this.f1334l != null) {
            return m6230e();
        }
        View m6133o = recyclerView$u.m6133o(this.f1326d);
        this.f1326d += this.f1327e;
        return m6133o;
    }

    /* renamed from: e */
    public final View m6230e() {
        int size = this.f1334l.size();
        for (int i = 0; i < size; i++) {
            View view = this.f1334l.get(i).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
            if (!recyclerView$LayoutParams.m6226c() && this.f1326d == recyclerView$LayoutParams.m6228a()) {
                m6233b(view);
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m6229f(View view) {
        View view2;
        int size = this.f1334l.size();
        View view3 = null;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (true) {
            view2 = view3;
            if (i2 >= size) {
                break;
            }
            View view4 = this.f1334l.get(i2).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view4.getLayoutParams();
            View view5 = view3;
            int i3 = i;
            if (view4 != view) {
                if (recyclerView$LayoutParams.m6226c()) {
                    view5 = view3;
                    i3 = i;
                } else {
                    int m6228a = (recyclerView$LayoutParams.m6228a() - this.f1326d) * this.f1327e;
                    if (m6228a < 0) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        view5 = view3;
                        i3 = i;
                        if (m6228a >= i) {
                            continue;
                        } else if (m6228a == 0) {
                            view2 = view4;
                            break;
                        } else {
                            i3 = m6228a;
                            view5 = view4;
                        }
                    }
                }
            }
            i2++;
            view3 = view5;
            i = i3;
        }
        return view2;
    }
}
