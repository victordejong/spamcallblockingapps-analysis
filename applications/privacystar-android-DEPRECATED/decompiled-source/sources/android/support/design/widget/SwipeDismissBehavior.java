package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.widget.ViewDragHelper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:android/support/design/widget/SwipeDismissBehavior.class */
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
    private final ViewDragHelper.Callback dragCallback = new ViewDragHelper.Callback() { // from class: android.support.design.widget.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
            r9 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
            if (r0 > 0) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
            r9 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0079, code lost:
            if (r5 < 0.0f) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
            return r9;
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
                if (r0 == 0) goto L_0x0084
                r0 = r4
                int r0 = android.support.p001v4.view.ViewCompat.getLayoutDirection(r0)
                r1 = 1
                if (r0 != r1) goto L_0x001f
                r0 = 1
                r10 = r0
                goto L_0x0022
            L_0x001f:
                r0 = 0
                r10 = r0
            L_0x0022:
                r0 = r3
                android.support.design.widget.SwipeDismissBehavior r0 = android.support.design.widget.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 2
                if (r0 != r1) goto L_0x002f
                r0 = 1
                return r0
            L_0x002f:
                r0 = r3
                android.support.design.widget.SwipeDismissBehavior r0 = android.support.design.widget.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                if (r0 != 0) goto L_0x0054
                r0 = r10
                if (r0 == 0) goto L_0x004a
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0051
            L_0x0044:
                r0 = 1
                r9 = r0
                goto L_0x0051
            L_0x004a:
                r0 = r6
                if (r0 <= 0) goto L_0x0051
                goto L_0x0044
            L_0x0051:
                r0 = r9
                return r0
            L_0x0054:
                r0 = r3
                android.support.design.widget.SwipeDismissBehavior r0 = android.support.design.widget.SwipeDismissBehavior.this
                int r0 = r0.swipeDirection
                r1 = 1
                if (r0 != r1) goto L_0x0082
                r0 = r10
                if (r0 == 0) goto L_0x0072
                r0 = r7
                r9 = r0
                r0 = r6
                if (r0 <= 0) goto L_0x007f
            L_0x006c:
                r0 = 1
                r9 = r0
                goto L_0x007f
            L_0x0072:
                r0 = r7
                r9 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x007f
                goto L_0x006c
            L_0x007f:
                r0 = r9
                return r0
            L_0x0082:
                r0 = 0
                return r0
            L_0x0084:
                r0 = r4
                int r0 = r0.getLeft()
                r11 = r0
                r0 = r3
                int r0 = r0.originalCapturedViewLeft
                r10 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                android.support.design.widget.SwipeDismissBehavior r1 = android.support.design.widget.SwipeDismissBehavior.this
                float r1 = r1.dragDismissThreshold
                float r0 = r0 * r1
                int r0 = java.lang.Math.round(r0)
                r6 = r0
                r0 = r8
                r9 = r0
                r0 = r11
                r1 = r10
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = r6
                if (r0 < r1) goto L_0x00b4
                r0 = 1
                r9 = r0
            L_0x00b4:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.SwipeDismissBehavior.C01691.shouldDismiss(android.view.View, float):boolean");
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int i3;
            int i4;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.swipeDirection == 0) {
                if (z) {
                    i3 = this.originalCapturedViewLeft - view.getWidth();
                    i4 = this.originalCapturedViewLeft;
                } else {
                    i3 = this.originalCapturedViewLeft;
                    i4 = view.getWidth() + this.originalCapturedViewLeft;
                }
            } else if (SwipeDismissBehavior.this.swipeDirection != 1) {
                i3 = this.originalCapturedViewLeft - view.getWidth();
                i4 = view.getWidth() + this.originalCapturedViewLeft;
            } else if (z) {
                i3 = this.originalCapturedViewLeft;
                i4 = view.getWidth() + this.originalCapturedViewLeft;
            } else {
                i3 = this.originalCapturedViewLeft - view.getWidth();
                i4 = this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(i3, i, i4);
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.activePointerId = i;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.listener != null) {
                SwipeDismissBehavior.this.listener.onDragStateChanged(i);
            }
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
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

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            boolean z;
            int i;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f)) {
                i = view.getLeft() < this.originalCapturedViewLeft ? this.originalCapturedViewLeft - width : this.originalCapturedViewLeft + width;
                z = true;
            } else {
                i = this.originalCapturedViewLeft;
                z = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z));
            } else if (z && SwipeDismissBehavior.this.listener != null) {
                SwipeDismissBehavior.this.listener.onDismiss(view);
            }
        }

        @Override // android.support.p001v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.activePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/SwipeDismissBehavior$OnDismissListener.class */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/SwipeDismissBehavior$SettleRunnable.class */
    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z) {
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.viewDragHelper != null && SwipeDismissBehavior.this.viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
            } else if (this.dismiss && SwipeDismissBehavior.this.listener != null) {
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

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    public int getDragState() {
        return this.viewDragHelper != null ? this.viewDragHelper.getViewDragState() : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0063 A[RETURN] */
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.support.design.widget.CoordinatorLayout r7, V r8, android.view.MotionEvent r9) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.interceptingEvents
            r10 = r0
            r0 = r9
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L_0x004b
            r0 = r11
            switch(r0) {
                case 0: goto L_0x002f;
                case 1: goto L_0x004b;
                default: goto L_0x002c;
            }
        L_0x002c:
            goto L_0x0050
        L_0x002f:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            float r3 = r3.getX()
            int r3 = (int) r3
            r4 = r9
            float r4 = r4.getY()
            int r4 = (int) r4
            boolean r1 = r1.isPointInChildBounds(r2, r3, r4)
            r0.interceptingEvents = r1
            r0 = r6
            boolean r0 = r0.interceptingEvents
            r10 = r0
            goto L_0x0050
        L_0x004b:
            r0 = r6
            r1 = 0
            r0.interceptingEvents = r1
        L_0x0050:
            r0 = r10
            if (r0 == 0) goto L_0x0063
            r0 = r6
            r1 = r7
            r0.ensureViewDragHelper(r1)
            r0 = r6
            android.support.v4.widget.ViewDragHelper r0 = r0.viewDragHelper
            r1 = r9
            boolean r0 = r0.shouldInterceptTouchEvent(r1)
            return r0
        L_0x0063:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.SwipeDismissBehavior.onInterceptTouchEvent(android.support.design.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.viewDragHelper == null) {
            return false;
        }
        this.viewDragHelper.processTouchEvent(motionEvent);
        return true;
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
