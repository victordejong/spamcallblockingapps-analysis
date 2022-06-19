package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p032b.C0770a;
import androidx.core.view.C0926v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: a */
    OverScroller f52462a;

    /* renamed from: b */
    private Runnable f52463b;

    /* renamed from: c */
    private boolean f52464c;

    /* renamed from: e */
    private int f52466e;

    /* renamed from: g */
    private VelocityTracker f52468g;

    /* renamed from: d */
    private int f52465d = -1;

    /* renamed from: f */
    private int f52467f = -1;

    /* renamed from: com.google.android.material.appbar.HeaderBehavior$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$a.class */
    final class RunnableC14413a implements Runnable {

        /* renamed from: b */
        private final CoordinatorLayout f52470b;

        /* renamed from: c */
        private final V f52471c;

        RunnableC14413a(CoordinatorLayout coordinatorLayout, V v) {
            HeaderBehavior.this = r4;
            this.f52470b = coordinatorLayout;
            this.f52471c = v;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f52471c == null || HeaderBehavior.this.f52462a == null) {
                return;
            }
            if (!HeaderBehavior.this.f52462a.computeScrollOffset()) {
                HeaderBehavior.this.mo11257c(this.f52470b, this.f52471c);
                return;
            }
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            headerBehavior.m11261a_(this.f52470b, this.f52471c, headerBehavior.f52462a.getCurrY());
            C0926v.m44117a(this.f52471c, this);
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    int mo11263a(V v) {
        return v.getHeight();
    }

    /* renamed from: a */
    int mo11262a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int m44521a;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i2 == 0 || topAndBottomOffset < i2 || topAndBottomOffset > i3 || topAndBottomOffset == (m44521a = C0770a.m44521a(i, i2, i3))) {
            i4 = 0;
        } else {
            mo11250b(m44521a);
            i4 = topAndBottomOffset - m44521a;
        }
        return i4;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo10175a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f52467f < 0) {
            this.f52467f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f52464c) {
            int i = this.f52465d;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f52466e) > this.f52467f) {
                this.f52466e = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f52465d = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo11258c(v) && coordinatorLayout.m44663a(v, x, y2);
            this.f52464c = z;
            if (z) {
                this.f52466e = y2;
                this.f52465d = motionEvent.getPointerId(0);
                if (this.f52468g == null) {
                    this.f52468g = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f52462a;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f52462a.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f52468g;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
            return false;
        }
        return false;
    }

    /* renamed from: a_ */
    public final int m11261a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo11262a(coordinatorLayout, (CoordinatorLayout) v, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
    }

    /* renamed from: b */
    int mo11260b(V v) {
        return -v.getHeight();
    }

    /* renamed from: b */
    public final int m11259b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo11262a(coordinatorLayout, (CoordinatorLayout) v, getTopBottomOffsetForScrollingSibling() - i, i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0174 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9836b(androidx.coordinatorlayout.widget.CoordinatorLayout r11, V r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo9836b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: c */
    void mo11257c(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: c */
    boolean mo11258c(V v) {
        return false;
    }

    int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }
}
