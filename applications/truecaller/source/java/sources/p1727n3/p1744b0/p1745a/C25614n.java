package p1727n3.p1744b0.p1745a;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.n */
/* loaded from: classes-dex2jar.jar:n3/b0/a/n.class */
public class C25614n extends RecyclerView.AbstractC0344y {

    /* renamed from: k */
    public PointF f71780k;

    /* renamed from: l */
    public final DisplayMetrics f71781l;

    /* renamed from: n */
    public float f71783n;

    /* renamed from: i */
    public final LinearInterpolator f71778i = new LinearInterpolator();

    /* renamed from: j */
    public final DecelerateInterpolator f71779j = new DecelerateInterpolator();

    /* renamed from: m */
    public boolean f71782m = false;

    /* renamed from: o */
    public int f71784o = 0;

    /* renamed from: p */
    public int f71785p = 0;

    public C25614n(Context context) {
        this.f71781l = context.getResources().getDisplayMetrics();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y
    /* renamed from: b */
    public void mo3145b(int i, int i2, RecyclerView.C0347z c0347z, RecyclerView.AbstractC0344y.C0345a c0345a) {
        float f;
        if (this.f1334b.mLayout.getChildCount() == 0) {
            m42714f();
            return;
        }
        int i3 = this.f71784o;
        int i4 = i3 - i;
        int i5 = i4;
        if (i3 * i4 <= 0) {
            i5 = 0;
        }
        this.f71784o = i5;
        int i6 = this.f71785p;
        int i7 = i6 - i2;
        if (i6 * i7 <= 0) {
            i7 = 0;
        }
        this.f71785p = i7;
        if (i5 != 0 || i7 != 0) {
            return;
        }
        int i8 = this.f1333a;
        RecyclerView.AbstractC0329o abstractC0329o = this.f1335c;
        PointF computeScrollVectorForPosition = abstractC0329o instanceof RecyclerView.AbstractC0344y.AbstractC0346b ? ((RecyclerView.AbstractC0344y.AbstractC0346b) abstractC0329o).computeScrollVectorForPosition(i8) : null;
        if (computeScrollVectorForPosition != null) {
            if (computeScrollVectorForPosition.x != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                float f2 = computeScrollVectorForPosition.y;
                float sqrt = (float) Math.sqrt((f2 * f2) + (f * f));
                float f3 = computeScrollVectorForPosition.x / sqrt;
                computeScrollVectorForPosition.x = f3;
                float f4 = computeScrollVectorForPosition.y / sqrt;
                computeScrollVectorForPosition.y = f4;
                this.f71780k = computeScrollVectorForPosition;
                this.f71784o = (int) (f3 * 10000.0f);
                this.f71785p = (int) (f4 * 10000.0f);
                c0345a.m42712b((int) (this.f71784o * 1.2f), (int) (this.f71785p * 1.2f), (int) (m3138j(10000) * 1.2f), this.f71778i);
                return;
            }
        }
        c0345a.f1344d = this.f1333a;
        m42714f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y
    /* renamed from: c */
    public void mo3144c() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y
    /* renamed from: d */
    public void mo3143d() {
        this.f71785p = 0;
        this.f71784o = 0;
        this.f71780k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y
    /* renamed from: e */
    public void mo3142e(View view, RecyclerView.C0347z c0347z, RecyclerView.AbstractC0344y.C0345a c0345a) {
        int i;
        int i2;
        PointF pointF = this.f71780k;
        int i3 = (pointF == null || pointF.x == 0.0f) ? 0 : i2 > 0 ? 1 : -1;
        RecyclerView.AbstractC0329o abstractC0329o = this.f1335c;
        if (abstractC0329o == null || !abstractC0329o.canScrollHorizontally()) {
            i = 0;
        } else {
            RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view.getLayoutParams();
            i = m3141g(abstractC0329o.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) c0334p).leftMargin, abstractC0329o.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) c0334p).rightMargin, abstractC0329o.getPaddingLeft(), abstractC0329o.getWidth() - abstractC0329o.getPaddingRight(), i3);
        }
        int mo3137k = mo3137k();
        RecyclerView.AbstractC0329o abstractC0329o2 = this.f1335c;
        int i4 = 0;
        if (abstractC0329o2 != null) {
            if (!abstractC0329o2.canScrollVertically()) {
                i4 = 0;
            } else {
                RecyclerView.C0334p c0334p2 = (RecyclerView.C0334p) view.getLayoutParams();
                i4 = m3141g(abstractC0329o2.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) c0334p2).topMargin, abstractC0329o2.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) c0334p2).bottomMargin, abstractC0329o2.getPaddingTop(), abstractC0329o2.getHeight() - abstractC0329o2.getPaddingBottom(), mo3137k);
            }
        }
        int m3139i = m3139i((int) Math.sqrt((i4 * i4) + (i * i)));
        if (m3139i > 0) {
            c0345a.m42712b(-i, -i4, m3139i, this.f71779j);
        }
    }

    /* renamed from: g */
    public int m3141g(int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: h */
    public float mo3140h(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: i */
    public int m3139i(int i) {
        return (int) Math.ceil(m3138j(i) / 0.3356d);
    }

    /* renamed from: j */
    public int m3138j(int i) {
        float abs = Math.abs(i);
        if (!this.f71782m) {
            this.f71783n = mo3140h(this.f71781l);
            this.f71782m = true;
        }
        return (int) Math.ceil(abs * this.f71783n);
    }

    /* renamed from: k */
    public int mo3137k() {
        int i;
        PointF pointF = this.f71780k;
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
}
