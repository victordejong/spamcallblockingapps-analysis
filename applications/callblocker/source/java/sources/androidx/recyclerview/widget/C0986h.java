package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C0986h extends RecyclerView.AbstractC0942t {

    /* renamed from: c */
    protected PointF f3391c;

    /* renamed from: f */
    private final DisplayMetrics f3394f;

    /* renamed from: h */
    private float f3396h;

    /* renamed from: a */
    protected final LinearInterpolator f3389a = new LinearInterpolator();

    /* renamed from: b */
    protected final DecelerateInterpolator f3390b = new DecelerateInterpolator();

    /* renamed from: g */
    private boolean f3395g = false;

    /* renamed from: d */
    protected int f3392d = 0;

    /* renamed from: e */
    protected int f3393e = 0;

    public C0986h(Context context) {
        this.f3394f = context.getResources().getDisplayMetrics();
    }

    /* renamed from: b */
    private int m18487b(int i, int i2) {
        int i3 = i - i2;
        int i4 = i3;
        if (i * i3 <= 0) {
            i4 = 0;
        }
        return i4;
    }

    /* renamed from: k */
    private float m18483k() {
        if (!this.f3395g) {
            this.f3396h = mo3113a(this.f3394f);
            this.f3395g = true;
        }
        return this.f3396h;
    }

    /* renamed from: a */
    protected float mo3113a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: a */
    public int m18493a(int i) {
        return (int) Math.ceil(mo18442b(i) / 0.3356d);
    }

    /* renamed from: a */
    public int m18492a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        switch (i5) {
            case -1:
                i6 = i3 - i;
                break;
            case 0:
                int i7 = i3 - i;
                i6 = i7;
                if (i7 <= 0) {
                    int i8 = i4 - i2;
                    i6 = i8;
                    if (i8 >= 0) {
                        i6 = 0;
                        break;
                    }
                }
                break;
            case 1:
                i6 = i4 - i2;
                break;
            default:
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        return i6;
    }

    /* renamed from: a */
    public int m18490a(View view, int i) {
        int i2;
        RecyclerView.AbstractC0925i e = m18836e();
        if (e == null || !e.mo18704g()) {
            i2 = 0;
        } else {
            RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
            i2 = m18492a(e.m18926i(view) - c0930j.topMargin, e.m18924k(view) + c0930j.bottomMargin, e.m19007E(), e.m19009C() - e.m19005G(), i);
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t
    /* renamed from: a */
    protected void mo18494a() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t
    /* renamed from: a */
    protected void mo18491a(int i, int i2, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0942t.C0943a c0943a) {
        if (m18830j() == 0) {
            m18834f();
            return;
        }
        this.f3392d = m18487b(this.f3392d, i);
        this.f3393e = m18487b(this.f3393e, i2);
        if (this.f3392d != 0 || this.f3393e != 0) {
            return;
        }
        m18489a(c0943a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t
    /* renamed from: a */
    protected void mo18392a(View view, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0942t.C0943a c0943a) {
        int m18486b = m18486b(view, m18485c());
        int m18490a = m18490a(view, m18484d());
        int m18493a = m18493a((int) Math.sqrt((m18486b * m18486b) + (m18490a * m18490a)));
        if (m18493a > 0) {
            c0943a.m18827a(-m18486b, -m18490a, m18493a, this.f3390b);
        }
    }

    /* renamed from: a */
    protected void m18489a(RecyclerView.AbstractC0942t.C0943a c0943a) {
        PointF d = m18837d(m18831i());
        if (d == null || (d.x == 0.0f && d.y == 0.0f)) {
            c0943a.m18828a(m18831i());
            m18834f();
            return;
        }
        m18842a(d);
        this.f3391c = d;
        this.f3392d = (int) (d.x * 10000.0f);
        this.f3393e = (int) (d.y * 10000.0f);
        c0943a.m18827a((int) (this.f3392d * 1.2f), (int) (this.f3393e * 1.2f), (int) (mo18442b(10000) * 1.2f), this.f3389a);
    }

    /* renamed from: b */
    public int mo18442b(int i) {
        return (int) Math.ceil(Math.abs(i) * m18483k());
    }

    /* renamed from: b */
    public int m18486b(View view, int i) {
        int i2;
        RecyclerView.AbstractC0925i e = m18836e();
        if (e == null || !e.mo18707f()) {
            i2 = 0;
        } else {
            RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
            i2 = m18492a(e.m18928h(view) - c0930j.leftMargin, e.m18925j(view) + c0930j.rightMargin, e.m19008D(), e.m19010B() - e.m19006F(), i);
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t
    /* renamed from: b */
    protected void mo18488b() {
        this.f3393e = 0;
        this.f3392d = 0;
        this.f3391c = null;
    }

    /* renamed from: c */
    protected int m18485c() {
        return (this.f3391c == null || this.f3391c.x == 0.0f) ? 0 : this.f3391c.x > 0.0f ? 1 : -1;
    }

    /* renamed from: d */
    protected int m18484d() {
        return (this.f3391c == null || this.f3391c.y == 0.0f) ? 0 : this.f3391c.y > 0.0f ? 1 : -1;
    }
}
