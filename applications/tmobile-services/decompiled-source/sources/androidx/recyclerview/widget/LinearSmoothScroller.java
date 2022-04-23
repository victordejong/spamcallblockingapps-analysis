package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearSmoothScroller.class */
public class LinearSmoothScroller extends RecyclerView.SmoothScroller {

    /* renamed from: k */
    protected PointF f4700k;

    /* renamed from: l */
    private final DisplayMetrics f4701l;

    /* renamed from: n */
    private float f4703n;

    /* renamed from: i */
    protected final LinearInterpolator f4698i = new LinearInterpolator();

    /* renamed from: j */
    protected final DecelerateInterpolator f4699j = new DecelerateInterpolator();

    /* renamed from: m */
    private boolean f4702m = false;

    /* renamed from: o */
    protected int f4704o = 0;

    /* renamed from: p */
    protected int f4705p = 0;

    public LinearSmoothScroller(Context context) {
        this.f4701l = context.getResources().getDisplayMetrics();
    }

    /* renamed from: A */
    private float m17583A() {
        if (!this.f4702m) {
            this.f4703n = mo9857v(this.f4701l);
            this.f4702m = true;
        }
        return this.f4703n;
    }

    /* renamed from: y */
    private int m17576y(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    /* renamed from: B */
    protected int m17582B() {
        int i;
        PointF pointF = this.f4700k;
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
    protected void m17581C(RecyclerView.SmoothScroller.Action action) {
        PointF a = m17298a(m17293f());
        if (a == null || (a.x == 0.0f && a.y == 0.0f)) {
            action.m17280b(m17293f());
            m17282r();
            return;
        }
        m17290i(a);
        this.f4700k = a;
        this.f4704o = (int) (a.x * 10000.0f);
        this.f4705p = (int) (a.y * 10000.0f);
        action.m17278d((int) (this.f4704o * 1.2f), (int) (this.f4705p * 1.2f), (int) (mo17520x(10000) * 1.2f), this.f4698i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    /* renamed from: l */
    protected void mo17287l(int i, int i2, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        if (m17296c() == 0) {
            m17282r();
            return;
        }
        this.f4704o = m17576y(this.f4704o, i);
        int y = m17576y(this.f4705p, i2);
        this.f4705p = y;
        if (this.f4704o == 0 && y == 0) {
            m17581C(action);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    /* renamed from: m */
    protected void mo17286m() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    /* renamed from: n */
    protected void mo17285n() {
        this.f4705p = 0;
        this.f4704o = 0;
        this.f4700k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    /* renamed from: o */
    protected void mo17218o(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        int t = m17579t(view, m17575z());
        int u = m17578u(view, m17582B());
        int w = m17577w((int) Math.sqrt((t * t) + (u * u)));
        if (w > 0) {
            action.m17278d(-t, -u, w, this.f4699j);
        }
    }

    /* renamed from: s */
    public int m17580s(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 == 0) {
            int i6 = i3 - i;
            if (i6 > 0) {
                return i6;
            }
            int i7 = i4 - i2;
            if (i7 < 0) {
                return i7;
            }
            return 0;
        } else if (i5 == 1) {
            return i4 - i2;
        } else {
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
    }

    /* renamed from: t */
    public int m17579t(View view, int i) {
        RecyclerView.LayoutManager e = m17294e();
        if (e == null || !e.mo17145l()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m17580s(e.m17430R(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, e.m17426U(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, e.m17407f0(), e.m17385p0() - e.m17405g0(), i);
    }

    /* renamed from: u */
    public int m17578u(View view, int i) {
        RecyclerView.LayoutManager e = m17294e();
        if (e == null || !e.mo17142m()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return m17580s(e.m17425V(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, e.m17433P(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, e.m17403h0(), e.m17422X() - e.m17409e0(), i);
    }

    /* renamed from: v */
    protected float mo9857v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m17577w(int i) {
        return (int) Math.ceil(mo17520x(i) / 0.3356d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x */
    public int mo17520x(int i) {
        return (int) Math.ceil(Math.abs(i) * m17583A());
    }

    /* renamed from: z */
    protected int m17575z() {
        int i;
        PointF pointF = this.f4700k;
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
