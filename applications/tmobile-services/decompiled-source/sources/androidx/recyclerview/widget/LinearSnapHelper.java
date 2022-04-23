package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearSnapHelper.class */
public class LinearSnapHelper extends SnapHelper {
    @Nullable

    /* renamed from: d */
    private OrientationHelper f4706d;
    @Nullable

    /* renamed from: e */
    private OrientationHelper f4707e;

    /* renamed from: m */
    private float m17574m(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int K = layoutManager.m17441K();
        if (K == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < K; i3++) {
            View J = layoutManager.m17442J(i3);
            int i0 = layoutManager.m17400i0(J);
            if (i0 == -1) {
                view = view;
                i2 = i2;
            } else {
                int i4 = i;
                if (i0 < i) {
                    view = J;
                    i4 = i0;
                }
                view = view;
                i = i4;
                i2 = i2;
                if (i0 > i2) {
                    view2 = J;
                    i2 = i0;
                    i = i4;
                    view = view;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(orientationHelper.mo17541d(view), orientationHelper.mo17541d(view2)) - Math.min(orientationHelper.mo17538g(view), orientationHelper.mo17538g(view2));
        if (max == 0) {
            return 1.0f;
        }
        return (max * 1.0f) / ((i2 - i) + 1);
    }

    /* renamed from: n */
    private int m17573n(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.mo17538g(view) + (orientationHelper.mo17540e(view) / 2)) - (orientationHelper.mo17532m() + (orientationHelper.mo17531n() / 2));
    }

    /* renamed from: o */
    private int m17572o(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i, int i2) {
        int[] d = m17226d(i, i2);
        float m = m17574m(layoutManager, orientationHelper);
        if (m <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(d[0]) > Math.abs(d[1]) ? d[0] : d[1]) / m);
    }

    @Nullable
    /* renamed from: p */
    private View m17571p(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
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
    /* renamed from: q */
    private OrientationHelper m17570q(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f4707e;
        if (orientationHelper == null || orientationHelper.f4733a != layoutManager) {
            this.f4707e = OrientationHelper.m17546a(layoutManager);
        }
        return this.f4707e;
    }

    @NonNull
    /* renamed from: r */
    private OrientationHelper m17569r(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f4706d;
        if (orientationHelper == null || orientationHelper.f4733a != layoutManager) {
            this.f4706d = OrientationHelper.m17544c(layoutManager);
        }
        return this.f4706d;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    /* renamed from: c */
    public int[] mo17227c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.mo17145l()) {
            iArr[0] = m17573n(layoutManager, view, m17570q(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.mo17142m()) {
            iArr[1] = m17573n(layoutManager, view, m17569r(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    /* renamed from: h */
    public View mo16381h(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.mo17142m()) {
            return m17571p(layoutManager, m17569r(layoutManager));
        }
        if (layoutManager.mo17145l()) {
            return m17571p(layoutManager, m17570q(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    /* renamed from: i */
    public int mo17222i(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int Z;
        View h;
        int i0;
        int i3;
        PointF a;
        int i4;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (Z = layoutManager.m17420Z()) == 0 || (h = mo16381h(layoutManager)) == null || (i0 = layoutManager.m17400i0(h)) == -1 || (a = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).mo17161a((i3 = Z - 1))) == null) {
            return -1;
        }
        int i5 = 0;
        if (layoutManager.mo17145l()) {
            int o = m17572o(layoutManager, m17570q(layoutManager), i, 0);
            i4 = o;
            if (a.x < 0.0f) {
                i4 = -o;
            }
        } else {
            i4 = 0;
        }
        if (layoutManager.mo17142m()) {
            int o2 = m17572o(layoutManager, m17569r(layoutManager), 0, i2);
            i4 = o2;
            if (a.y < 0.0f) {
                i4 = -o2;
            }
        } else {
            i4 = 0;
        }
        if (layoutManager.mo17142m()) {
        }
        if (i4 == 0) {
            return -1;
        }
        i5 = i0 + i4;
        if (i5 < 0) {
        }
        if (i5 >= Z) {
            i5 = i3;
        }
        return i5;
    }
}
