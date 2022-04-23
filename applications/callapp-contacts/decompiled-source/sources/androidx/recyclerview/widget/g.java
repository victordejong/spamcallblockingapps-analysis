package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
public class g extends RecyclerView.r {

    /* renamed from: c  reason: collision with root package name */
    protected PointF f5476c;
    private final DisplayMetrics f;
    private float o;

    /* renamed from: a  reason: collision with root package name */
    protected final LinearInterpolator f5474a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    protected final DecelerateInterpolator f5475b = new DecelerateInterpolator();
    private boolean n = false;

    /* renamed from: d  reason: collision with root package name */
    protected int f5477d = 0;
    protected int e = 0;

    public g(Context context) {
        this.f = context.getResources().getDisplayMetrics();
    }

    private static int a(int i, int i2, int i3, int i4, int i5) {
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

    private static int b(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    private float getSpeedPerPixel() {
        if (!this.n) {
            this.o = a(this.f);
            this.n = true;
        }
        return this.o;
    }

    protected float a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(int i) {
        return (int) Math.ceil(b(i) / 0.3356d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void a() {
        this.e = 0;
        this.f5477d = 0;
        this.f5476c = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    protected final void a(int i, int i2, RecyclerView.r.a aVar) {
        if (getChildCount() == 0) {
            b();
            return;
        }
        this.f5477d = b(this.f5477d, i);
        int b2 = b(this.e, i2);
        this.e = b2;
        if (this.f5477d == 0 && b2 == 0) {
            PointF c2 = c(getTargetPosition());
            if (c2 == null || (c2.x == BitmapDescriptorFactory.HUE_RED && c2.y == BitmapDescriptorFactory.HUE_RED)) {
                aVar.f5366a = getTargetPosition();
                b();
                return;
            }
            float sqrt = (float) Math.sqrt((c2.x * c2.x) + (c2.y * c2.y));
            c2.x /= sqrt;
            c2.y /= sqrt;
            this.f5476c = c2;
            this.f5477d = (int) (c2.x * 10000.0f);
            this.e = (int) (c2.y * 10000.0f);
            aVar.a((int) (this.f5477d * 1.2f), (int) (this.e * 1.2f), (int) (b(10000) * 1.2f), this.f5474a);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    protected void a(View view, RecyclerView.s sVar, RecyclerView.r.a aVar) {
        int i;
        int horizontalSnapPreference = getHorizontalSnapPreference();
        RecyclerView.i layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.e()) {
            i = 0;
        } else {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            i = a(RecyclerView.i.g(view) - layoutParams.leftMargin, RecyclerView.i.i(view) + layoutParams.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), horizontalSnapPreference);
        }
        int verticalSnapPreference = getVerticalSnapPreference();
        RecyclerView.i layoutManager2 = getLayoutManager();
        int i2 = 0;
        if (layoutManager2 != null) {
            if (!layoutManager2.f()) {
                i2 = 0;
            } else {
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                i2 = a(RecyclerView.i.h(view) - layoutParams2.topMargin, RecyclerView.i.j(view) + layoutParams2.bottomMargin, layoutManager2.getPaddingTop(), layoutManager2.getHeight() - layoutManager2.getPaddingBottom(), verticalSnapPreference);
            }
        }
        int a2 = a((int) Math.sqrt((i * i) + (i2 * i2)));
        if (a2 > 0) {
            aVar.a(-i, -i2, a2, this.f5475b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(int i) {
        return (int) Math.ceil(Math.abs(i) * getSpeedPerPixel());
    }

    protected int getHorizontalSnapPreference() {
        PointF pointF = this.f5476c;
        if (pointF == null || pointF.x == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return this.f5476c.x > BitmapDescriptorFactory.HUE_RED ? 1 : -1;
    }

    protected int getVerticalSnapPreference() {
        PointF pointF = this.f5476c;
        if (pointF == null || pointF.y == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return this.f5476c.y > BitmapDescriptorFactory.HUE_RED ? 1 : -1;
    }
}
