package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.api.Api;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    @Nullable

    /* renamed from: d */
    private Runnable f10018d;

    /* renamed from: e */
    OverScroller f10019e;

    /* renamed from: f */
    private boolean f10020f;

    /* renamed from: h */
    private int f10022h;
    @Nullable

    /* renamed from: j */
    private VelocityTracker f10024j;

    /* renamed from: g */
    private int f10021g = -1;

    /* renamed from: i */
    private int f10023i = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$FlingRunnable.class */
    public class FlingRunnable implements Runnable {

        /* renamed from: f */
        private final CoordinatorLayout f10025f;

        /* renamed from: g */
        private final V f10026g;

        FlingRunnable(CoordinatorLayout coordinatorLayout, V v) {
            this.f10025f = coordinatorLayout;
            this.f10026g = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f10026g != null && (overScroller = HeaderBehavior.this.f10019e) != null) {
                if (overScroller.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.m10648P(this.f10025f, this.f10026g, headerBehavior.f10019e.getCurrY());
                    ViewCompat.m19199f0(this.f10026g, this);
                    return;
                }
                HeaderBehavior.this.mo10650N(this.f10025f, this.f10026g);
            }
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: I */
    private void m10655I() {
        if (this.f10024j == null) {
            this.f10024j = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010d  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8654D(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r8, @androidx.annotation.NonNull V r9, @androidx.annotation.NonNull android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo8654D(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: H */
    boolean mo10656H(V v) {
        return false;
    }

    /* renamed from: J */
    final boolean m10654J(CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, float f) {
        Runnable runnable = this.f10018d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f10018d = null;
        }
        if (this.f10019e == null) {
            this.f10019e = new OverScroller(v.getContext());
        }
        this.f10019e.fling(0, m10635E(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f10019e.computeScrollOffset()) {
            FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, v);
            this.f10018d = flingRunnable;
            ViewCompat.m19199f0(v, flingRunnable);
            return true;
        }
        mo10650N(coordinatorLayout, v);
        return false;
    }

    /* renamed from: K */
    int mo10653K(@NonNull V v) {
        return -v.getHeight();
    }

    /* renamed from: L */
    int mo10652L(@NonNull V v) {
        return v.getHeight();
    }

    /* renamed from: M */
    int mo10651M() {
        return m10635E();
    }

    /* renamed from: N */
    void mo10650N(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public final int m10649O(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo10647Q(coordinatorLayout, v, mo10651M() - i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public int m10648P(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo10647Q(coordinatorLayout, v, i, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: Q */
    int mo10647Q(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int b;
        int E = m10635E();
        if (i2 == 0 || E < i2 || E > i3 || E == (b = MathUtils.m19451b(i, i2, i3))) {
            i4 = 0;
        } else {
            m10633G(b);
            i4 = E - b;
        }
        return i4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo9030k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f10023i < 0) {
            this.f10023i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f10020f) {
            int i = this.f10021g;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f10022h) > this.f10023i) {
                this.f10022h = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f10021g = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo10656H(v) && coordinatorLayout.m19948F(v, x, y2);
            this.f10020f = z;
            if (z) {
                this.f10022h = y2;
                this.f10021g = motionEvent.getPointerId(0);
                m10655I();
                OverScroller overScroller = this.f10019e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f10019e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f10024j;
        if (velocityTracker == null) {
            return false;
        }
        velocityTracker.addMovement(motionEvent);
        return false;
    }
}
