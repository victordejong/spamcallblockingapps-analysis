package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
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
    ViewDragHelper viewDragHelper;
    private float sensitivity = 0.0f;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = 0.0f;
    float alphaEndSwipeDistance = 0.5f;
    private final ViewDragHelper.Callback dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
            if (r0 > 0) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
            if (r5 < 0.0f) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
            r8 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean shouldDismiss(android.view.View r4, float r5) {
            /*
                r3 = this;
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L80
                r0 = r4
                int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r0)
                r1 = 1
                if (r0 != r1) goto L20
                r0 = 1
                r10 = r0
                goto L23
            L20:
                r0 = 0
                r10 = r0
            L23:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 2
                if (r0 != r1) goto L30
                r0 = 1
                return r0
            L30:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                if (r0 != 0) goto L53
                r0 = r10
                if (r0 == 0) goto L48
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L50
                goto L4d
            L48:
                r0 = r9
                if (r0 <= 0) goto L50
            L4d:
                r0 = 1
                r8 = r0
            L50:
                r0 = r8
                return r0
            L53:
                r0 = r6
                r8 = r0
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 1
                if (r0 != r1) goto L7d
                r0 = r10
                if (r0 == 0) goto L71
                r0 = r6
                r8 = r0
                r0 = r9
                if (r0 <= 0) goto L7d
                goto L7a
            L71:
                r0 = r6
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L7d
            L7a:
                r0 = 1
                r8 = r0
            L7d:
                r0 = r8
                return r0
            L80:
                r0 = r4
                int r0 = r0.getLeft()
                r10 = r0
                r0 = r3
                int r0 = r0.originalCapturedViewLeft
                r9 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r1 = r1.dragDismissThreshold
                float r0 = r0 * r1
                int r0 = java.lang.Math.round(r0)
                r11 = r0
                r0 = r7
                r8 = r0
                r0 = r10
                r1 = r9
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = r11
                if (r0 < r1) goto Lb2
                r0 = 1
                r8 = r0
            Lb2:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C12531.shouldDismiss(android.view.View, float):boolean");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
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

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.activePointerId = i;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.listener != null) {
                SwipeDismissBehavior.this.listener.onDragStateChanged(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
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

        @Override // androidx.customview.widget.ViewDragHelper.Callback
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
            if (SwipeDismissBehavior.this.viewDragHelper.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z));
            } else if (!z || SwipeDismissBehavior.this.listener == null) {
            } else {
                SwipeDismissBehavior.this.listener.onDismiss(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            int i2 = this.activePointerId;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener.class */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable.class */
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
            if (SwipeDismissBehavior.this.viewDragHelper != null && SwipeDismissBehavior.this.viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
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
            this.viewDragHelper = this.sensitivitySet ? ViewDragHelper.create(viewGroup, this.sensitivity, this.dragCallback) : ViewDragHelper.create(viewGroup, this.dragCallback);
        }
    }

    static float fraction(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    private void updateAccessibilityActions(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (canSwipeDismissView(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
                    if (r8 == false) goto L16;
                 */
                /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
                /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean perform(android.view.View r4, androidx.core.view.accessibility.AccessibilityViewCommand.CommandArguments r5) {
                    /*
                        r3 = this;
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        r1 = r4
                        boolean r0 = r0.canSwipeDismissView(r1)
                        r6 = r0
                        r0 = 0
                        r7 = r0
                        r0 = r6
                        if (r0 == 0) goto L83
                        r0 = r4
                        int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r0)
                        r1 = 1
                        if (r0 != r1) goto L1e
                        r0 = 1
                        r8 = r0
                        goto L21
                    L1e:
                        r0 = 0
                        r8 = r0
                    L21:
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        int r0 = r0.swipeDirection
                        if (r0 != 0) goto L30
                        r0 = r8
                        if (r0 != 0) goto L48
                    L30:
                        r0 = r7
                        r9 = r0
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        int r0 = r0.swipeDirection
                        r1 = 1
                        if (r0 != r1) goto L4b
                        r0 = r7
                        r9 = r0
                        r0 = r8
                        if (r0 != 0) goto L4b
                    L48:
                        r0 = 1
                        r9 = r0
                    L4b:
                        r0 = r4
                        int r0 = r0.getWidth()
                        r7 = r0
                        r0 = r7
                        r8 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r7
                        int r0 = -r0
                        r8 = r0
                    L5f:
                        r0 = r4
                        r1 = r8
                        androidx.core.view.ViewCompat.offsetLeftAndRight(r0, r1)
                        r0 = r4
                        r1 = 0
                        r0.setAlpha(r1)
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        com.google.android.material.behavior.SwipeDismissBehavior$OnDismissListener r0 = r0.listener
                        if (r0 == 0) goto L81
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        com.google.android.material.behavior.SwipeDismissBehavior$OnDismissListener r0 = r0.listener
                        r1 = r4
                        r0.onDismiss(r1)
                    L81:
                        r0 = 1
                        return r0
                    L83:
                        r0 = 0
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C12542.perform(android.view.View, androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments):boolean");
                }
            });
        }
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        return viewDragHelper != null ? viewDragHelper.getViewDragState() : 0;
    }

    public OnDismissListener getListener() {
        return this.listener;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (z) {
            ensureViewDragHelper(coordinatorLayout);
            return this.viewDragHelper.shouldInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v, i);
        if (ViewCompat.getImportantForAccessibility(v) == 0) {
            ViewCompat.setImportantForAccessibility(v, 1);
            updateAccessibilityActions(v);
        }
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
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
