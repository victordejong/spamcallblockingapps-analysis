package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: a  reason: collision with root package name */
    OverScroller f30225a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f30226b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30227c;
    private int e;
    private VelocityTracker g;

    /* renamed from: d  reason: collision with root package name */
    private int f30228d = -1;
    private int f = -1;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$a.class */
    final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final CoordinatorLayout f30230b;

        /* renamed from: c  reason: collision with root package name */
        private final V f30231c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f30230b = coordinatorLayout;
            this.f30231c = v;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f30231c != null && HeaderBehavior.this.f30225a != null) {
                if (HeaderBehavior.this.f30225a.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.a_(this.f30230b, this.f30231c, headerBehavior.f30225a.getCurrY());
                    v.a(this.f30231c, this);
                    return;
                }
                HeaderBehavior.this.c(this.f30230b, this.f30231c);
            }
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    int a(V v) {
        return v.getHeight();
    }

    int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int a2;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i2 == 0 || topAndBottomOffset < i2 || topAndBottomOffset > i3 || topAndBottomOffset == (a2 = androidx.core.b.a.a(i, i2, i3))) {
            i4 = 0;
        } else {
            b(a2);
            i4 = topAndBottomOffset - a2;
        }
        return i4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f30227c) {
            int i = this.f30228d;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.e) > this.f) {
                this.e = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f30228d = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = c(v) && coordinatorLayout.a(v, x, y2);
            this.f30227c = z;
            if (z) {
                this.e = y2;
                this.f30228d = motionEvent.getPointerId(0);
                if (this.g == null) {
                    this.g = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f30225a;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f30225a.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.g;
        if (velocityTracker == null) {
            return false;
        }
        velocityTracker.addMovement(motionEvent);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, (CoordinatorLayout) v, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
    }

    int b(V v) {
        return -v.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, (CoordinatorLayout) v, getTopBottomOffsetForScrollingSibling() - i, i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0174 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(androidx.coordinatorlayout.widget.CoordinatorLayout r11, V r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    void c(CoordinatorLayout coordinatorLayout, V v) {
    }

    boolean c(V v) {
        return false;
    }

    int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }
}
