package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/PagerSnapHelper.class */
public class PagerSnapHelper extends SnapHelper {
    @Nullable

    /* renamed from: d */
    private OrientationHelper f4736d;
    @Nullable

    /* renamed from: e */
    private OrientationHelper f4737e;

    /* renamed from: m */
    private int m17527m(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.mo17538g(view) + (orientationHelper.mo17540e(view) / 2)) - (orientationHelper.mo17532m() + (orientationHelper.mo17531n() / 2));
    }

    @Nullable
    /* renamed from: n */
    private View m17526n(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int K = layoutManager.m17441K();
        View view = null;
        if (K == 0) {
            return null;
        }
        int m = orientationHelper.mo17532m();
        int n = orientationHelper.mo17531n() / 2;
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i2 = 0; i2 < K; i2++) {
            View J = layoutManager.m17442J(i2);
            int abs = Math.abs((orientationHelper.mo17538g(J) + (orientationHelper.mo17540e(J) / 2)) - (m + n));
            i = i;
            if (abs < i) {
                view = J;
                i = abs;
            }
        }
        return view;
    }

    @NonNull
    /* renamed from: o */
    private OrientationHelper m17525o(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f4737e;
        if (orientationHelper == null || orientationHelper.f4733a != layoutManager) {
            this.f4737e = OrientationHelper.m17546a(layoutManager);
        }
        return this.f4737e;
    }

    @Nullable
    /* renamed from: p */
    private OrientationHelper m17524p(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.mo17142m()) {
            return m17523q(layoutManager);
        }
        if (layoutManager.mo17145l()) {
            return m17525o(layoutManager);
        }
        return null;
    }

    @NonNull
    /* renamed from: q */
    private OrientationHelper m17523q(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f4736d;
        if (orientationHelper == null || orientationHelper.f4733a != layoutManager) {
            this.f4736d = OrientationHelper.m17544c(layoutManager);
        }
        return this.f4736d;
    }

    /* renamed from: r */
    private boolean m17522r(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        boolean z = true;
        boolean z2 = true;
        if (layoutManager.mo17145l()) {
            if (i <= 0) {
                z2 = false;
            }
            return z2;
        }
        if (i2 <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
        if (r0.y < 0.0f) goto L_0x0040;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m17521s(androidx.recyclerview.widget.RecyclerView.LayoutManager r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.m17420Z()
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0043
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider r0 = (androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider) r0
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            android.graphics.PointF r0 = r0.mo17161a(r1)
            r5 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0043
            r0 = r5
            float r0 = r0.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0040
            r0 = r8
            r9 = r0
            r0 = r5
            float r0 = r0.y
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
        L_0x0040:
            r0 = 1
            r9 = r0
        L_0x0043:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.PagerSnapHelper.m17521s(androidx.recyclerview.widget.RecyclerView$LayoutManager):boolean");
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    /* renamed from: c */
    public int[] mo17227c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.mo17145l()) {
            iArr[0] = m17527m(layoutManager, view, m17525o(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.mo17142m()) {
            iArr[1] = m17527m(layoutManager, view, m17523q(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    /* renamed from: f */
    protected LinearSmoothScroller mo17224f(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.f4842a.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            /* renamed from: o */
            protected void mo17218o(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                int[] c = pagerSnapHelper.mo17227c(pagerSnapHelper.f4842a.getLayoutManager(), view);
                int i = c[0];
                int i2 = c[1];
                int w = m17577w(Math.max(Math.abs(i), Math.abs(i2)));
                if (w > 0) {
                    action.m17278d(i, i2, w, this.f4699j);
                }
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            /* renamed from: v */
            protected float mo9857v(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            /* renamed from: x */
            protected int mo17520x(int i) {
                return Math.min(100, super.mo17520x(i));
            }
        };
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    /* renamed from: h */
    public View mo16381h(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.mo17142m()) {
            return m17526n(layoutManager, m17523q(layoutManager));
        }
        if (layoutManager.mo17145l()) {
            return m17526n(layoutManager, m17525o(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    /* renamed from: i */
    public int mo17222i(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        OrientationHelper p;
        int Z = layoutManager.m17420Z();
        if (Z == 0 || (p = m17524p(layoutManager)) == null) {
            return -1;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int K = layoutManager.m17441K();
        View view = null;
        View view2 = null;
        for (int i5 = 0; i5 < K; i5++) {
            View J = layoutManager.m17442J(i5);
            if (J == null) {
                i4 = i4;
                view = view;
            } else {
                int m = m17527m(layoutManager, J, p);
                int i6 = i3;
                View view3 = view2;
                if (m <= 0) {
                    i6 = i3;
                    view3 = view2;
                    if (m > i3) {
                        view3 = J;
                        i6 = m;
                    }
                }
                i3 = i6;
                i4 = i4;
                view = view;
                view2 = view3;
                if (m >= 0) {
                    i3 = i6;
                    i4 = i4;
                    view = view;
                    view2 = view3;
                    if (m < i4) {
                        view2 = view3;
                        view = J;
                        i4 = m;
                        i3 = i6;
                    }
                }
            }
        }
        boolean r = m17522r(layoutManager, i, i2);
        if (r && view != null) {
            return layoutManager.m17400i0(view);
        }
        if (!(r || view2 == null)) {
            return layoutManager.m17400i0(view2);
        }
        if (r) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int i0 = layoutManager.m17400i0(view) + (m17521s(layoutManager) == r ? -1 : 1);
        if (i0 < 0 || i0 >= Z) {
            return -1;
        }
        return i0;
    }
}
