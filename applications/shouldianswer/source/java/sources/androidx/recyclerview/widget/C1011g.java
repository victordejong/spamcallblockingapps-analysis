package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
public class C1011g extends RecyclerView.AbstractC0971s {

    /* renamed from: c */
    protected PointF f3198c;

    /* renamed from: f */
    private final float f3201f;

    /* renamed from: a */
    protected final LinearInterpolator f3196a = new LinearInterpolator();

    /* renamed from: b */
    protected final DecelerateInterpolator f3197b = new DecelerateInterpolator();

    /* renamed from: d */
    protected int f3199d = 0;

    /* renamed from: e */
    protected int f3200e = 0;

    public C1011g(Context context) {
        this.f3201f = m4594a(context.getResources().getDisplayMetrics());
    }

    /* renamed from: b */
    private int m4589b(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    /* renamed from: a */
    public float m4594a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: a */
    protected int m4597a(int i) {
        return (int) Math.ceil(mo1577b(i) / 0.3356d);
    }

    /* renamed from: a */
    public int m4596a(int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: a */
    public int m4593a(View view, int i) {
        RecyclerView.AbstractC0956i e = m4861e();
        if (e == null || !e.canScrollVertically()) {
            return 0;
        }
        RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
        return m4596a(e.getDecoratedTop(view) - c0961j.topMargin, e.getDecoratedBottom(view) + c0961j.bottomMargin, e.getPaddingTop(), e.getHeight() - e.getPaddingBottom(), i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s
    /* renamed from: a */
    protected void mo4598a() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s
    /* renamed from: a */
    protected void mo4595a(int i, int i2, RecyclerView.C0974t c0974t, RecyclerView.AbstractC0971s.C0972a c0972a) {
        if (m4855j() == 0) {
            m4859f();
            return;
        }
        this.f3199d = m4589b(this.f3199d, i);
        this.f3200e = m4589b(this.f3200e, i2);
        if (this.f3199d != 0 || this.f3200e != 0) {
            return;
        }
        m4591a(c0972a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s
    /* renamed from: a */
    protected void mo4592a(View view, RecyclerView.C0974t c0974t, RecyclerView.AbstractC0971s.C0972a c0972a) {
        int m4588b = m4588b(view, m4587c());
        int m4593a = m4593a(view, mo723d());
        int m4597a = m4597a((int) Math.sqrt((m4588b * m4588b) + (m4593a * m4593a)));
        if (m4597a > 0) {
            c0972a.m4852a(-m4588b, -m4593a, m4597a, this.f3197b);
        }
    }

    /* renamed from: a */
    protected void m4591a(RecyclerView.AbstractC0971s.C0972a c0972a) {
        PointF d = mo1576d(m4856i());
        if (d == null || (d.x == FlexItem.FLEX_GROW_DEFAULT && d.y == FlexItem.FLEX_GROW_DEFAULT)) {
            c0972a.m4853a(m4856i());
            m4859f();
            return;
        }
        m4866a(d);
        this.f3198c = d;
        this.f3199d = (int) (d.x * 10000.0f);
        this.f3200e = (int) (d.y * 10000.0f);
        c0972a.m4852a((int) (this.f3199d * 1.2f), (int) (this.f3200e * 1.2f), (int) (mo1577b(AbstractC1468a.DEFAULT_TIMEOUT) * 1.2f), this.f3196a);
    }

    /* renamed from: b */
    protected int mo1577b(int i) {
        return (int) Math.ceil(Math.abs(i) * this.f3201f);
    }

    /* renamed from: b */
    public int m4588b(View view, int i) {
        RecyclerView.AbstractC0956i e = m4861e();
        if (e == null || !e.canScrollHorizontally()) {
            return 0;
        }
        RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
        return m4596a(e.getDecoratedLeft(view) - c0961j.leftMargin, e.getDecoratedRight(view) + c0961j.rightMargin, e.getPaddingLeft(), e.getWidth() - e.getPaddingRight(), i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s
    /* renamed from: b */
    protected void mo4590b() {
        this.f3200e = 0;
        this.f3199d = 0;
        this.f3198c = null;
    }

    /* renamed from: c */
    protected int m4587c() {
        PointF pointF = this.f3198c;
        return (pointF == null || pointF.x == FlexItem.FLEX_GROW_DEFAULT) ? 0 : this.f3198c.x > FlexItem.FLEX_GROW_DEFAULT ? 1 : -1;
    }

    /* renamed from: d */
    protected int mo723d() {
        PointF pointF = this.f3198c;
        return (pointF == null || pointF.y == FlexItem.FLEX_GROW_DEFAULT) ? 0 : this.f3198c.y > FlexItem.FLEX_GROW_DEFAULT ? 1 : -1;
    }
}
