package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p050l.C1679w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: d */
    private Runnable f36068d;

    /* renamed from: e */
    OverScroller f36069e;

    /* renamed from: f */
    private boolean f36070f;

    /* renamed from: h */
    private int f36072h;

    /* renamed from: j */
    private VelocityTracker f36074j;

    /* renamed from: g */
    private int f36071g = -1;

    /* renamed from: i */
    private int f36073i = -1;

    /* renamed from: com.google.android.material.appbar.HeaderBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$a.class */
    public class RunnableC7999a implements Runnable {

        /* renamed from: d */
        private final CoordinatorLayout f36075d;

        /* renamed from: e */
        private final V f36076e;

        RunnableC7999a(CoordinatorLayout coordinatorLayout, V v) {
            HeaderBehavior.this = r4;
            this.f36075d = coordinatorLayout;
            this.f36076e = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f36076e == null || (overScroller = HeaderBehavior.this.f36069e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                HeaderBehavior.this.mo5686N(this.f36075d, this.f36076e);
                return;
            }
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            headerBehavior.m5684P(this.f36075d, this.f36076e, headerBehavior.f36069e.getCurrY());
            C1679w.m29289j0(this.f36076e, this);
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: I */
    private void m5691I() {
        if (this.f36074j == null) {
            this.f36074j = VelocityTracker.obtain();
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
    public boolean mo3804D(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo3804D(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: H */
    boolean mo5692H(V v) {
        return false;
    }

    /* renamed from: J */
    final boolean m5690J(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.f36068d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f36068d = null;
        }
        if (this.f36069e == null) {
            this.f36069e = new OverScroller(v.getContext());
        }
        this.f36069e.fling(0, mo5670E(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.f36069e.computeScrollOffset()) {
            mo5686N(coordinatorLayout, v);
            return false;
        }
        RunnableC7999a runnableC7999a = new RunnableC7999a(coordinatorLayout, v);
        this.f36068d = runnableC7999a;
        C1679w.m29289j0(v, runnableC7999a);
        return true;
    }

    /* renamed from: K */
    int mo5689K(V v) {
        return -v.getHeight();
    }

    /* renamed from: L */
    int mo5688L(V v) {
        return v.getHeight();
    }

    /* renamed from: M */
    int mo5687M() {
        return mo5670E();
    }

    /* renamed from: N */
    void mo5686N(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: O */
    public final int m5685O(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo5683Q(coordinatorLayout, v, mo5687M() - i, i2, i3);
    }

    /* renamed from: P */
    public int m5684P(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo5683Q(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: Q */
    int mo5683Q(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int m29769b;
        int mo5670E = mo5670E();
        if (i2 == 0 || mo5670E < i2 || mo5670E > i3 || mo5670E == (m29769b = C1542a.m29769b(i, i2, i3))) {
            i4 = 0;
        } else {
            mo5668G(m29769b);
            i4 = mo5670E - m29769b;
        }
        return i4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo4206k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f36073i < 0) {
            this.f36073i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f36070f) {
            int i = this.f36071g;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f36072h) > this.f36073i) {
                this.f36072h = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f36071g = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo5692H(v) && coordinatorLayout.m33593F(v, x, y2);
            this.f36070f = z;
            if (z) {
                this.f36072h = y2;
                this.f36071g = motionEvent.getPointerId(0);
                m5691I();
                OverScroller overScroller = this.f36069e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f36069e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f36074j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
            return false;
        }
        return false;
    }
}
