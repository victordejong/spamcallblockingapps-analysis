package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.C0618c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0396b<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    OnDismissListener listener;
    private boolean sensitivitySet;
    C0618c viewDragHelper;
    private float sensitivity = 0.0f;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = 0.0f;
    float alphaEndSwipeDistance = 0.5f;
    private final C0618c.AbstractC0621a dragCallback = new C0618c.AbstractC0621a() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
            if (r0 > 0) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
            if (r5 < 0.0f) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
            r9 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean shouldDismiss(android.view.View r4, float r5) {
            /*
                r3 = this;
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r6
                if (r0 == 0) goto L80
                r0 = r4
                int r0 = androidx.core.p023g.C0552u.m6245f(r0)
                r1 = 1
                if (r0 != r1) goto L1f
                r0 = 1
                r10 = r0
                goto L22
            L1f:
                r0 = 0
                r10 = r0
            L22:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 2
                if (r0 != r1) goto L2f
                r0 = 1
                return r0
            L2f:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                if (r0 != 0) goto L51
                r0 = r10
                if (r0 == 0) goto L47
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L4e
                goto L4b
            L47:
                r0 = r6
                if (r0 <= 0) goto L4e
            L4b:
                r0 = 1
                r9 = r0
            L4e:
                r0 = r9
                return r0
            L51:
                r0 = r7
                r9 = r0
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 1
                if (r0 != r1) goto L7d
                r0 = r10
                if (r0 == 0) goto L70
                r0 = r7
                r9 = r0
                r0 = r6
                if (r0 <= 0) goto L7d
                goto L7a
            L70:
                r0 = r7
                r9 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L7d
            L7a:
                r0 = 1
                r9 = r0
            L7d:
                r0 = r9
                return r0
            L80:
                r0 = r4
                int r0 = r0.getLeft()
                r6 = r0
                r0 = r3
                int r0 = r0.originalCapturedViewLeft
                r10 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r1 = r1.dragDismissThreshold
                float r0 = r0 * r1
                int r0 = java.lang.Math.round(r0)
                r11 = r0
                r0 = r8
                r9 = r0
                r0 = r6
                r1 = r10
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = r11
                if (r0 < r1) goto Lb0
                r0 = 1
                r9 = r0
            Lb0:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C12931.shouldDismiss(android.view.View, float):boolean");
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = C0552u.m6245f(view) == 1;
            if (SwipeDismissBehavior.this.swipeDirection == 0) {
                if (z) {
                    i3 = this.originalCapturedViewLeft - view.getWidth();
                    i4 = this.originalCapturedViewLeft;
                } else {
                    i3 = this.originalCapturedViewLeft;
                    width = view.getWidth();
                    i4 = width + i3;
                }
            } else if (SwipeDismissBehavior.this.swipeDirection != 1) {
                i3 = this.originalCapturedViewLeft - view.getWidth();
                i4 = view.getWidth() + this.originalCapturedViewLeft;
            } else if (z) {
                i3 = this.originalCapturedViewLeft;
                width = view.getWidth();
                i4 = width + i3;
            } else {
                i3 = this.originalCapturedViewLeft - view.getWidth();
                i4 = this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(i3, i, i4);
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewCaptured(View view, int i) {
            this.activePointerId = i;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.listener != null) {
                SwipeDismissBehavior.this.listener.onDragStateChanged(i);
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance);
            float width2 = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(0.0f, 1.0f - SwipeDismissBehavior.fraction(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewReleased(View view, float f, float f2) {
            boolean z;
            int i;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f)) {
                int left = view.getLeft();
                int i2 = this.originalCapturedViewLeft;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.originalCapturedViewLeft;
                z = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.m5925a(i, view.getTop())) {
                C0552u.m6265a(view, new SettleRunnable(view, z));
            } else if (!z || SwipeDismissBehavior.this.listener == null) {
            } else {
                SwipeDismissBehavior.this.listener.onDismiss(view);
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public boolean tryCaptureView(View view, int i) {
            return this.activePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener.class */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable.class */
    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z) {
            SwipeDismissBehavior.this = r4;
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.viewDragHelper != null && SwipeDismissBehavior.this.viewDragHelper.m5915a(true)) {
                C0552u.m6265a(this.view, this);
            } else if (!this.dismiss || SwipeDismissBehavior.this.listener == null) {
            } else {
                SwipeDismissBehavior.this.listener.onDismiss(this.view);
            }
        }
    }

    static float clamp(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int clamp(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        if (this.viewDragHelper == null) {
            this.viewDragHelper = this.sensitivitySet ? C0618c.m5917a(viewGroup, this.sensitivity, this.dragCallback) : C0618c.m5916a(viewGroup, this.dragCallback);
        }
    }

    static float fraction(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public int getDragState() {
        C0618c c0618c = this.viewDragHelper;
        return c0618c != null ? c0618c.m5932a() : 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.interceptingEvents = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.interceptingEvents;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (z) {
            ensureViewDragHelper(coordinatorLayout);
            return this.viewDragHelper.m5922a(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0618c c0618c = this.viewDragHelper;
        if (c0618c != null) {
            c0618c.m5907b(motionEvent);
            return true;
        }
        return false;
    }

    public void setDragDismissDistance(float f) {
        this.dragDismissThreshold = clamp(0.0f, f, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.alphaEndSwipeDistance = clamp(0.0f, f, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public void setSensitivity(float f) {
        this.sensitivity = f;
        this.sensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.alphaStartSwipeDistance = clamp(0.0f, f, 1.0f);
    }

    public void setSwipeDirection(int i) {
        this.swipeDirection = i;
    }
}
