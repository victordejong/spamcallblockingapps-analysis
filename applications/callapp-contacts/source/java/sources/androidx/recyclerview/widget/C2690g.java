package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
public class C2690g extends RecyclerView.AbstractC2651r {

    /* renamed from: c */
    protected PointF f10288c;

    /* renamed from: f */
    private final DisplayMetrics f10291f;

    /* renamed from: o */
    private float f10293o;

    /* renamed from: a */
    protected final LinearInterpolator f10286a = new LinearInterpolator();

    /* renamed from: b */
    protected final DecelerateInterpolator f10287b = new DecelerateInterpolator();

    /* renamed from: n */
    private boolean f10292n = false;

    /* renamed from: d */
    protected int f10289d = 0;

    /* renamed from: e */
    protected int f10290e = 0;

    public C2690g(Context context) {
        this.f10291f = context.getResources().getDisplayMetrics();
    }

    /* renamed from: a */
    private static int m40087a(int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: b */
    private static int m40085b(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    private float getSpeedPerPixel() {
        if (!this.f10292n) {
            this.f10293o = mo10799a(this.f10291f);
            this.f10292n = true;
        }
        return this.f10293o;
    }

    /* renamed from: a */
    protected float mo10799a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: a */
    public final int m40088a(int i) {
        return (int) Math.ceil(mo40054b(i) / 0.3356d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
    /* renamed from: a */
    public void mo31236a() {
        this.f10290e = 0;
        this.f10289d = 0;
        this.f10288c = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
    /* renamed from: a */
    protected final void mo40086a(int i, int i2, RecyclerView.AbstractC2651r.C2652a c2652a) {
        if (getChildCount() == 0) {
            m40310b();
            return;
        }
        this.f10289d = m40085b(this.f10289d, i);
        int m40085b = m40085b(this.f10290e, i2);
        this.f10290e = m40085b;
        if (this.f10289d != 0 || m40085b != 0) {
            return;
        }
        PointF c = mo27811c(getTargetPosition());
        if (c == null || (c.x == BitmapDescriptorFactory.HUE_RED && c.y == BitmapDescriptorFactory.HUE_RED)) {
            c2652a.f10066a = getTargetPosition();
            m40310b();
            return;
        }
        float sqrt = (float) Math.sqrt((c.x * c.x) + (c.y * c.y));
        c.x /= sqrt;
        c.y /= sqrt;
        this.f10288c = c;
        this.f10289d = (int) (c.x * 10000.0f);
        this.f10290e = (int) (c.y * 10000.0f);
        c2652a.m40308a((int) (this.f10289d * 1.2f), (int) (this.f10290e * 1.2f), (int) (mo40054b(10000) * 1.2f), this.f10286a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
    /* renamed from: a */
    protected void mo29887a(View view, RecyclerView.C2654s c2654s, RecyclerView.AbstractC2651r.C2652a c2652a) {
        int i;
        int horizontalSnapPreference = getHorizontalSnapPreference();
        RecyclerView.AbstractC2637i layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.mo31644e()) {
            i = 0;
        } else {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            i = m40087a(RecyclerView.AbstractC2637i.m40358g(view) - layoutParams.leftMargin, RecyclerView.AbstractC2637i.m40355i(view) + layoutParams.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), horizontalSnapPreference);
        }
        int verticalSnapPreference = getVerticalSnapPreference();
        RecyclerView.AbstractC2637i layoutManager2 = getLayoutManager();
        int i2 = 0;
        if (layoutManager2 != null) {
            if (!layoutManager2.mo31643f()) {
                i2 = 0;
            } else {
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                i2 = m40087a(RecyclerView.AbstractC2637i.m40356h(view) - layoutParams2.topMargin, RecyclerView.AbstractC2637i.m40354j(view) + layoutParams2.bottomMargin, layoutManager2.getPaddingTop(), layoutManager2.getHeight() - layoutManager2.getPaddingBottom(), verticalSnapPreference);
            }
        }
        int m40088a = m40088a((int) Math.sqrt((i * i) + (i2 * i2)));
        if (m40088a > 0) {
            c2652a.m40308a(-i, -i2, m40088a, this.f10287b);
        }
    }

    /* renamed from: b */
    public int mo40054b(int i) {
        return (int) Math.ceil(Math.abs(i) * getSpeedPerPixel());
    }

    protected int getHorizontalSnapPreference() {
        PointF pointF = this.f10288c;
        if (pointF == null || pointF.x == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return this.f10288c.x > BitmapDescriptorFactory.HUE_RED ? 1 : -1;
    }

    protected int getVerticalSnapPreference() {
        PointF pointF = this.f10288c;
        if (pointF == null || pointF.y == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return this.f10288c.y > BitmapDescriptorFactory.HUE_RED ? 1 : -1;
    }
}
