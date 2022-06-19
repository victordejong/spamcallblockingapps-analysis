package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
public class C0641p extends RecyclerView.AbstractC0589w {

    /* renamed from: k */
    public PointF f2531k;

    /* renamed from: l */
    public final DisplayMetrics f2532l;

    /* renamed from: n */
    public float f2534n;

    /* renamed from: i */
    public final LinearInterpolator f2529i = new LinearInterpolator();

    /* renamed from: j */
    public final DecelerateInterpolator f2530j = new DecelerateInterpolator();

    /* renamed from: m */
    public boolean f2533m = false;

    /* renamed from: o */
    public int f2535o = 0;

    /* renamed from: p */
    public int f2536p = 0;

    public C0641p(Context context) {
        this.f2532l = context.getResources().getDisplayMetrics();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0589w
    /* renamed from: c */
    public void mo7537c(View view, RecyclerView.C0592x c0592x, RecyclerView.AbstractC0589w.C0590a c0590a) {
        int i;
        int i2;
        int i3;
        PointF pointF = this.f2531k;
        int i4 = (pointF == null || pointF.x == 0.0f) ? 0 : i3 > 0 ? 1 : -1;
        RecyclerView.AbstractC0573m abstractC0573m = this.f2298c;
        if (abstractC0573m == null || !abstractC0573m.mo7707e()) {
            i = 0;
        } else {
            RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view.getLayoutParams();
            i = m7554e(abstractC0573m.m7816C(view) - ((ViewGroup.MarginLayoutParams) c0578n).leftMargin, abstractC0573m.m7810F(view) + ((ViewGroup.MarginLayoutParams) c0578n).rightMargin, abstractC0573m.m7800N(), abstractC0573m.f2268n - abstractC0573m.m7799O(), i4);
        }
        PointF pointF2 = this.f2531k;
        int i5 = (pointF2 == null || pointF2.y == 0.0f) ? 0 : i2 > 0 ? 1 : -1;
        RecyclerView.AbstractC0573m abstractC0573m2 = this.f2298c;
        int i6 = 0;
        if (abstractC0573m2 != null) {
            if (!abstractC0573m2.mo7704f()) {
                i6 = 0;
            } else {
                RecyclerView.C0578n c0578n2 = (RecyclerView.C0578n) view.getLayoutParams();
                i6 = m7554e(abstractC0573m2.m7808G(view) - ((ViewGroup.MarginLayoutParams) c0578n2).topMargin, abstractC0573m2.m7819A(view) + ((ViewGroup.MarginLayoutParams) c0578n2).bottomMargin, abstractC0573m2.m7798P(), abstractC0573m2.f2269o - abstractC0573m2.m7801M(), i5);
            }
        }
        int ceil = (int) Math.ceil(mo7536g((int) Math.sqrt((i6 * i6) + (i * i))) / 0.3356d);
        if (ceil > 0) {
            c0590a.m7746b(-i, -i6, ceil, this.f2530j);
        }
    }

    /* renamed from: e */
    public int m7554e(int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: f */
    public float mo4590f(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: g */
    public int mo7536g(int i) {
        float abs = Math.abs(i);
        if (!this.f2533m) {
            this.f2534n = mo4590f(this.f2532l);
            this.f2533m = true;
        }
        return (int) Math.ceil(abs * this.f2534n);
    }
}
