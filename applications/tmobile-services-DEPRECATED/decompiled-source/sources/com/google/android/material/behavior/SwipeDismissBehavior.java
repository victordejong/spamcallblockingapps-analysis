package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    ViewDragHelper f10079a;

    /* renamed from: b */
    OnDismissListener f10080b;

    /* renamed from: c */
    private boolean f10081c;

    /* renamed from: e */
    private boolean f10083e;

    /* renamed from: d */
    private float f10082d = 0.0f;

    /* renamed from: f */
    int f10084f = 2;

    /* renamed from: g */
    float f10085g = 0.5f;

    /* renamed from: h */
    float f10086h = 0.0f;

    /* renamed from: i */
    float f10087i = 0.5f;

    /* renamed from: j */
    private final ViewDragHelper.Callback f10088j = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* renamed from: a */
        private int f10089a;

        /* renamed from: b */
        private int f10090b = -1;

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
            if (r0 > 0) goto L_0x0074;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
            if (r5 < 0.0f) goto L_0x0074;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
            r8 = true;
         */
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m10554n(@androidx.annotation.NonNull android.view.View r4, float r5) {
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
                if (r0 == 0) goto L_0x007a
                r0 = r4
                int r0 = androidx.core.view.ViewCompat.m19244A(r0)
                r1 = 1
                if (r0 != r1) goto L_0x0020
                r0 = 1
                r10 = r0
                goto L_0x0023
            L_0x0020:
                r0 = 0
                r10 = r0
            L_0x0023:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.f10084f
                r11 = r0
                r0 = r11
                r1 = 2
                if (r0 != r1) goto L_0x0034
                r0 = 1
                return r0
            L_0x0034:
                r0 = r11
                if (r0 != 0) goto L_0x0052
                r0 = r10
                if (r0 == 0) goto L_0x0047
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x004f
                goto L_0x004c
            L_0x0047:
                r0 = r9
                if (r0 <= 0) goto L_0x004f
            L_0x004c:
                r0 = 1
                r8 = r0
            L_0x004f:
                r0 = r8
                return r0
            L_0x0052:
                r0 = r6
                r8 = r0
                r0 = r11
                r1 = 1
                if (r0 != r1) goto L_0x0077
                r0 = r10
                if (r0 == 0) goto L_0x006b
                r0 = r6
                r8 = r0
                r0 = r9
                if (r0 <= 0) goto L_0x0077
                goto L_0x0074
            L_0x006b:
                r0 = r6
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0077
            L_0x0074:
                r0 = 1
                r8 = r0
            L_0x0077:
                r0 = r8
                return r0
            L_0x007a:
                r0 = r4
                int r0 = r0.getLeft()
                r11 = r0
                r0 = r3
                int r0 = r0.f10089a
                r9 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r1 = r1.f10085g
                float r0 = r0 * r1
                int r0 = java.lang.Math.round(r0)
                r10 = r0
                r0 = r7
                r8 = r0
                r0 = r11
                r1 = r9
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = r10
                if (r0 < r1) goto L_0x00ac
                r0 = 1
                r8 = r0
            L_0x00ac:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C10431.m10554n(android.view.View, float):boolean");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: a */
        public int mo10388a(@NonNull View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = ViewCompat.m19244A(view) == 1;
            int i5 = SwipeDismissBehavior.this.f10084f;
            if (i5 == 0) {
                if (z) {
                    i3 = this.f10089a - view.getWidth();
                    i4 = this.f10089a;
                } else {
                    i3 = this.f10089a;
                    width = view.getWidth();
                    i4 = width + i3;
                }
            } else if (i5 != 1) {
                i3 = this.f10089a - view.getWidth();
                i4 = view.getWidth() + this.f10089a;
            } else if (z) {
                i3 = this.f10089a;
                width = view.getWidth();
                i4 = width + i3;
            } else {
                i3 = this.f10089a - view.getWidth();
                i4 = this.f10089a;
            }
            return SwipeDismissBehavior.m10564G(i3, i, i4);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: b */
        public int mo10387b(@NonNull View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: d */
        public int mo10556d(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: i */
        public void mo10555i(@NonNull View view, int i) {
            this.f10090b = i;
            this.f10089a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: j */
        public void mo10385j(int i) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f10080b;
            if (onDismissListener != null) {
                onDismissListener.mo9034b(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: k */
        public void mo10384k(@NonNull View view, int i, int i2, int i3, int i4) {
            float width = this.f10089a + (view.getWidth() * SwipeDismissBehavior.this.f10086h);
            float width2 = this.f10089a + (view.getWidth() * SwipeDismissBehavior.this.f10087i);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m10565F(0.0f, 1.0f - SwipeDismissBehavior.m10562I(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: l */
        public void mo10383l(@NonNull View view, float f, float f2) {
            boolean z;
            int i;
            OnDismissListener onDismissListener;
            this.f10090b = -1;
            int width = view.getWidth();
            if (m10554n(view, f)) {
                int left = view.getLeft();
                int i2 = this.f10089a;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f10089a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f10079a.m18721N(i, view.getTop())) {
                ViewCompat.m19199f0(view, new SettleRunnable(view, z));
            } else if (z && (onDismissListener = SwipeDismissBehavior.this.f10080b) != null) {
                onDismissListener.mo9035a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: m */
        public boolean mo10382m(View view, int i) {
            int i2 = this.f10090b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo9033E(view);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener.class */
    public interface OnDismissListener {
        /* renamed from: a */
        void mo9035a(View view);

        /* renamed from: b */
        void mo9034b(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable.class */
    private class SettleRunnable implements Runnable {

        /* renamed from: f */
        private final View f10093f;

        /* renamed from: g */
        private final boolean f10094g;

        SettleRunnable(View view, boolean z) {
            this.f10093f = view;
            this.f10094g = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f10079a;
            if (viewDragHelper != null && viewDragHelper.m18704n(true)) {
                ViewCompat.m19199f0(this.f10093f, this);
            } else if (this.f10094g && (onDismissListener = SwipeDismissBehavior.this.f10080b) != null) {
                onDismissListener.mo9035a(this.f10093f);
            }
        }
    }

    /* renamed from: F */
    static float m10565F(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: G */
    static int m10564G(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: H */
    private void m10563H(ViewGroup viewGroup) {
        if (this.f10079a == null) {
            this.f10079a = this.f10083e ? ViewDragHelper.m18703o(viewGroup, this.f10082d, this.f10088j) : ViewDragHelper.m18702p(viewGroup, this.f10088j);
        }
    }

    /* renamed from: I */
    static float m10562I(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: N */
    private void m10557N(View view) {
        ViewCompat.m19195h0(view, 1048576);
        if (mo9033E(view)) {
            ViewCompat.m19191j0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3337l, null, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
                    if (r8 == false) goto L_0x0048;
                 */
                /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
                /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean mo10380a(@androidx.annotation.NonNull android.view.View r4, @androidx.annotation.Nullable androidx.core.view.accessibility.AccessibilityViewCommand.CommandArguments r5) {
                    /*
                        r3 = this;
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        r1 = r4
                        boolean r0 = r0.mo9033E(r1)
                        r6 = r0
                        r0 = 0
                        r7 = r0
                        r0 = r6
                        if (r0 == 0) goto L_0x007f
                        r0 = r4
                        int r0 = androidx.core.view.ViewCompat.m19244A(r0)
                        r1 = 1
                        if (r0 != r1) goto L_0x001e
                        r0 = 1
                        r8 = r0
                        goto L_0x0021
                    L_0x001e:
                        r0 = 0
                        r8 = r0
                    L_0x0021:
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        int r0 = r0.f10084f
                        if (r0 != 0) goto L_0x0030
                        r0 = r8
                        if (r0 != 0) goto L_0x0048
                    L_0x0030:
                        r0 = r7
                        r9 = r0
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        int r0 = r0.f10084f
                        r1 = 1
                        if (r0 != r1) goto L_0x004b
                        r0 = r7
                        r9 = r0
                        r0 = r8
                        if (r0 != 0) goto L_0x004b
                    L_0x0048:
                        r0 = 1
                        r9 = r0
                    L_0x004b:
                        r0 = r4
                        int r0 = r0.getWidth()
                        r7 = r0
                        r0 = r7
                        r8 = r0
                        r0 = r9
                        if (r0 == 0) goto L_0x005f
                        r0 = r7
                        int r0 = -r0
                        r8 = r0
                    L_0x005f:
                        r0 = r4
                        r1 = r8
                        androidx.core.view.ViewCompat.m19213X(r0, r1)
                        r0 = r4
                        r1 = 0
                        r0.setAlpha(r1)
                        r0 = r3
                        com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                        com.google.android.material.behavior.SwipeDismissBehavior$OnDismissListener r0 = r0.f10080b
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x007d
                        r0 = r5
                        r1 = r4
                        r0.mo9035a(r1)
                    L_0x007d:
                        r0 = 1
                        return r0
                    L_0x007f:
                        r0 = 0
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C10442.mo10380a(android.view.View, androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments):boolean");
                }
            });
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    public boolean mo8654D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f10079a;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.m18729F(motionEvent);
        return true;
    }

    /* renamed from: E */
    public boolean mo9033E(@NonNull View view) {
        return true;
    }

    /* renamed from: J */
    public void m10561J(float f) {
        this.f10087i = m10565F(0.0f, f, 1.0f);
    }

    /* renamed from: K */
    public void m10560K(@Nullable OnDismissListener onDismissListener) {
        this.f10080b = onDismissListener;
    }

    /* renamed from: L */
    public void m10559L(float f) {
        this.f10086h = m10565F(0.0f, f, 1.0f);
    }

    /* renamed from: M */
    public void m10558M(int i) {
        this.f10084f = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo9030k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        boolean z = this.f10081c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m19948F(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f10081c = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f10081c = false;
        }
        if (!z) {
            return false;
        }
        m10563H(coordinatorLayout);
        return this.f10079a.m18720O(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        boolean l = super.mo8678l(coordinatorLayout, v, i);
        if (ViewCompat.m19162y(v) == 0) {
            ViewCompat.m19163x0(v, 1);
            m10557N(v);
        }
        return l;
    }
}
