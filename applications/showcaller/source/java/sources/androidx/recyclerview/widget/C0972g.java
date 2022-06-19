package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
public class C0972g extends RecyclerView.AbstractC0935x {

    /* renamed from: k */
    protected PointF f4362k;

    /* renamed from: l */
    private final DisplayMetrics f4363l;

    /* renamed from: n */
    private float f4365n;

    /* renamed from: i */
    protected final LinearInterpolator f4360i = new LinearInterpolator();

    /* renamed from: j */
    protected final DecelerateInterpolator f4361j = new DecelerateInterpolator();

    /* renamed from: m */
    private boolean f4364m = false;

    /* renamed from: o */
    protected int f4366o = 0;

    /* renamed from: p */
    protected int f4367p = 0;

    public C0972g(Context context) {
        this.f4363l = context.getResources().getDisplayMetrics();
    }

    /* renamed from: A */
    private float m31421A() {
        if (!this.f4364m) {
            this.f4365n = mo4859v(this.f4363l);
            this.f4364m = true;
        }
        return this.f4365n;
    }

    /* renamed from: y */
    private int m31411y(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    /* renamed from: B */
    protected int m31420B() {
        int i;
        PointF pointF = this.f4362k;
        if (pointF != null) {
            float f = pointF.y;
            if (f != 0.0f) {
                i = f > 0.0f ? 1 : -1;
                return i;
            }
        }
        i = 0;
        return i;
    }

    /* renamed from: C */
    protected void m31419C(RecyclerView.AbstractC0935x.C0936a c0936a) {
        PointF m31723a = m31723a(m31718f());
        if (m31723a == null || (m31723a.x == 0.0f && m31723a.y == 0.0f)) {
            c0936a.m31708b(m31718f());
            m31710r();
            return;
        }
        m31715i(m31723a);
        this.f4362k = m31723a;
        this.f4366o = (int) (m31723a.x * 10000.0f);
        this.f4367p = (int) (m31723a.y * 10000.0f);
        c0936a.m31706d((int) (this.f4366o * 1.2f), (int) (this.f4367p * 1.2f), (int) (mo31374x(10000) * 1.2f), this.f4360i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x
    /* renamed from: l */
    protected void mo31418l(int i, int i2, RecyclerView.C0938y c0938y, RecyclerView.AbstractC0935x.C0936a c0936a) {
        if (m31721c() == 0) {
            m31710r();
            return;
        }
        this.f4366o = m31411y(this.f4366o, i);
        int m31411y = m31411y(this.f4367p, i2);
        this.f4367p = m31411y;
        if (this.f4366o != 0 || m31411y != 0) {
            return;
        }
        m31419C(c0936a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x
    /* renamed from: m */
    protected void mo31417m() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x
    /* renamed from: n */
    protected void mo31416n() {
        this.f4367p = 0;
        this.f4366o = 0;
        this.f4362k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x
    /* renamed from: o */
    protected void mo31375o(View view, RecyclerView.C0938y c0938y, RecyclerView.AbstractC0935x.C0936a c0936a) {
        int m31414t = m31414t(view, m31410z());
        int m31413u = m31413u(view, m31420B());
        int m31412w = m31412w((int) Math.sqrt((m31414t * m31414t) + (m31413u * m31413u)));
        if (m31412w > 0) {
            c0936a.m31706d(-m31414t, -m31413u, m31412w, this.f4361j);
        }
    }

    /* renamed from: s */
    public int m31415s(int i, int i2, int i3, int i4, int i5) {
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 != 1) {
                    throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
                }
                return i4 - i2;
            }
            int i6 = i3 - i;
            if (i6 > 0) {
                return i6;
            }
            int i7 = i4 - i2;
            if (i7 >= 0) {
                return 0;
            }
            return i7;
        }
        return i3 - i;
    }

    /* renamed from: t */
    public int m31414t(View view, int i) {
        RecyclerView.AbstractC0921o m31719e = m31719e();
        if (m31719e == null || !m31719e.mo31631k()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m31415s(m31719e.m31845Q(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, m31719e.m31841T(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, m31719e.m31823e0(), m31719e.m31800o0() - m31719e.m31821f0(), i);
    }

    /* renamed from: u */
    public int m31413u(View view, int i) {
        RecyclerView.AbstractC0921o m31719e = m31719e();
        if (m31719e == null || !m31719e.mo27381l()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m31415s(m31719e.m31840U(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, m31719e.m31849O(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, m31719e.m31819g0(), m31719e.m31837W() - m31719e.m31825d0(), i);
    }

    /* renamed from: v */
    protected float mo4859v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: w */
    public int m31412w(int i) {
        return (int) Math.ceil(mo31374x(i) / 0.3356d);
    }

    /* renamed from: x */
    public int mo31374x(int i) {
        return (int) Math.ceil(Math.abs(i) * m31421A());
    }

    /* renamed from: z */
    protected int m31410z() {
        int i;
        PointF pointF = this.f4362k;
        if (pointF != null) {
            float f = pointF.x;
            if (f != 0.0f) {
                i = f > 0.0f ? 1 : -1;
                return i;
            }
        }
        i = 0;
        return i;
    }
}
