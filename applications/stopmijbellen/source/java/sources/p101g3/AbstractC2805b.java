package p101g3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.common.api.Api;
import java.util.WeakHashMap;
import p015b0.C0713a;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: g3.b */
/* loaded from: classes-dex2jar.jar:g3/b.class */
public abstract class AbstractC2805b<V extends View> extends C2808d<V> {

    /* renamed from: c */
    public Runnable f9528c;

    /* renamed from: d */
    public OverScroller f9529d;

    /* renamed from: e */
    public boolean f9530e;

    /* renamed from: g */
    public int f9532g;

    /* renamed from: i */
    public VelocityTracker f9534i;

    /* renamed from: f */
    public int f9531f = -1;

    /* renamed from: h */
    public int f9533h = -1;

    /* renamed from: g3.b$a */
    /* loaded from: classes-dex2jar.jar:g3/b$a.class */
    public class RunnableC2806a implements Runnable {

        /* renamed from: a */
        public final CoordinatorLayout f9535a;

        /* renamed from: b */
        public final V f9536b;

        public RunnableC2806a(CoordinatorLayout coordinatorLayout, V v) {
            AbstractC2805b.this = r4;
            this.f9535a = coordinatorLayout;
            this.f9536b = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f9536b == null || (overScroller = AbstractC2805b.this.f9529d) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                AbstractC2805b.this.mo2982z(this.f9535a, this.f9536b);
                return;
            }
            AbstractC2805b abstractC2805b = AbstractC2805b.this;
            abstractC2805b.m2990B(this.f9535a, this.f9536b, abstractC2805b.f9529d.getCurrY());
            V v = this.f9536b;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2081m(v, this);
        }
    }

    public AbstractC2805b() {
    }

    public AbstractC2805b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: A */
    public final int m2991A(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo2989C(coordinatorLayout, v, mo2983y() - i, i2, i3);
    }

    /* renamed from: B */
    public int m2990B(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo2989C(coordinatorLayout, v, i, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: C */
    public int mo2989C(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int m7443d;
        int m2975s = m2975s();
        if (i2 == 0 || m2975s < i2 || m2975s > i3 || m2975s == (m7443d = C0713a.m7443d(i, i2, i3))) {
            i4 = 0;
        } else {
            m2973u(m7443d);
            i4 = m2975s - m7443d;
        }
        return i4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: g */
    public boolean mo2988g(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f9533h < 0) {
            this.f9533h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f9530e) {
            int i = this.f9531f;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f9532g) > this.f9533h) {
                this.f9532g = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f9531f = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo2986v(v) && coordinatorLayout.m8330q(v, x, y2);
            this.f9530e = z;
            if (z) {
                this.f9532g = y2;
                this.f9531f = motionEvent.getPointerId(0);
                if (this.f9534i == null) {
                    this.f9534i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f9529d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f9529d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f9534i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0178  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2987r(androidx.coordinatorlayout.widget.CoordinatorLayout r11, V r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p101g3.AbstractC2805b.mo2987r(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: v */
    public boolean mo2986v(V v) {
        return false;
    }

    /* renamed from: w */
    public int mo2985w(V v) {
        return -v.getHeight();
    }

    /* renamed from: x */
    public int mo2984x(V v) {
        return v.getHeight();
    }

    /* renamed from: y */
    public int mo2983y() {
        return m2975s();
    }

    /* renamed from: z */
    public void mo2982z(CoordinatorLayout coordinatorLayout, V v) {
    }
}
