package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: P */
    private static final int[] f3636P = {16843828};

    /* renamed from: Q */
    static final int[] f3637Q = {16842931};

    /* renamed from: R */
    static final boolean f3638R;

    /* renamed from: S */
    private static final boolean f3639S;

    /* renamed from: A */
    private float f3640A;

    /* renamed from: B */
    private Drawable f3641B;

    /* renamed from: C */
    private Drawable f3642C;

    /* renamed from: D */
    private Drawable f3643D;

    /* renamed from: E */
    private CharSequence f3644E;

    /* renamed from: F */
    private CharSequence f3645F;

    /* renamed from: G */
    private Object f3646G;

    /* renamed from: H */
    private boolean f3647H;

    /* renamed from: I */
    private Drawable f3648I;

    /* renamed from: J */
    private Drawable f3649J;

    /* renamed from: K */
    private Drawable f3650K;

    /* renamed from: L */
    private Drawable f3651L;

    /* renamed from: M */
    private final ArrayList<View> f3652M;

    /* renamed from: N */
    private Rect f3653N;

    /* renamed from: O */
    private Matrix f3654O;

    /* renamed from: f */
    private final ChildAccessibilityDelegate f3655f;

    /* renamed from: g */
    private float f3656g;

    /* renamed from: h */
    private int f3657h;

    /* renamed from: i */
    private int f3658i;

    /* renamed from: j */
    private float f3659j;

    /* renamed from: k */
    private Paint f3660k;

    /* renamed from: l */
    private final ViewDragHelper f3661l;

    /* renamed from: m */
    private final ViewDragHelper f3662m;

    /* renamed from: n */
    private final ViewDragCallback f3663n;

    /* renamed from: o */
    private final ViewDragCallback f3664o;

    /* renamed from: p */
    private int f3665p;

    /* renamed from: q */
    private boolean f3666q;

    /* renamed from: r */
    private boolean f3667r;

    /* renamed from: s */
    private int f3668s;

    /* renamed from: t */
    private int f3669t;

    /* renamed from: u */
    private int f3670u;

    /* renamed from: v */
    private int f3671v;

    /* renamed from: w */
    private boolean f3672w;
    @Nullable

    /* renamed from: x */
    private DrawerListener f3673x;

    /* renamed from: y */
    private List<DrawerListener> f3674y;

    /* renamed from: z */
    private float f3675z;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate.class */
    class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a */
        private final Rect f3676a = new Rect();

        AccessibilityDelegate() {
        }

        /* renamed from: a */
        private void m18532a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.m18579A(childAt)) {
                    accessibilityNodeInfoCompat.m19027c(childAt);
                }
            }
        }

        /* renamed from: b */
        private void m18531b(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f3676a;
            accessibilityNodeInfoCompat2.m19007m(rect);
            accessibilityNodeInfoCompat.m19034X(rect);
            accessibilityNodeInfoCompat2.m19005n(rect);
            accessibilityNodeInfoCompat.m19033Y(rect);
            accessibilityNodeInfoCompat.m19055E0(accessibilityNodeInfoCompat2.m19044N());
            accessibilityNodeInfoCompat.m18996r0(accessibilityNodeInfoCompat2.m18989v());
            accessibilityNodeInfoCompat.m19026c0(accessibilityNodeInfoCompat2.m19001p());
            accessibilityNodeInfoCompat.m19018g0(accessibilityNodeInfoCompat2.m18997r());
            accessibilityNodeInfoCompat.m19014i0(accessibilityNodeInfoCompat2.m19054F());
            accessibilityNodeInfoCompat.m19024d0(accessibilityNodeInfoCompat2.m19056E());
            accessibilityNodeInfoCompat.m19010k0(accessibilityNodeInfoCompat2.m19052G());
            accessibilityNodeInfoCompat.m19008l0(accessibilityNodeInfoCompat2.m19050H());
            accessibilityNodeInfoCompat.m19036V(accessibilityNodeInfoCompat2.m19062B());
            accessibilityNodeInfoCompat.m18980z0(accessibilityNodeInfoCompat2.m19046L());
            accessibilityNodeInfoCompat.m19002o0(accessibilityNodeInfoCompat2.m19049I());
            accessibilityNodeInfoCompat.m19031a(accessibilityNodeInfoCompat2.m19011k());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View p = DrawerLayout.this.m18543p();
            if (p == null) {
                return true;
            }
            CharSequence s = DrawerLayout.this.m18540s(DrawerLayout.this.m18539t(p));
            if (s == null) {
                return true;
            }
            text.add(s);
            return true;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.f3638R) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat Q = AccessibilityNodeInfoCompat.m19041Q(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, Q);
                accessibilityNodeInfoCompat.m19061B0(view);
                ViewParent H = ViewCompat.m19230H(view);
                if (H instanceof View) {
                    accessibilityNodeInfoCompat.m18992t0((View) H);
                }
                m18531b(accessibilityNodeInfoCompat, Q);
                Q.m19039S();
                m18532a(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.m19026c0(DrawerLayout.class.getName());
            accessibilityNodeInfoCompat.m19010k0(false);
            accessibilityNodeInfoCompat.m19008l0(false);
            accessibilityNodeInfoCompat.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3330e);
            accessibilityNodeInfoCompat.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3331f);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f3638R || DrawerLayout.m18579A(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate.class */
    static final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!DrawerLayout.m18579A(view)) {
                accessibilityNodeInfoCompat.m18992t0(null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$DrawerListener.class */
    public interface DrawerListener {
        /* renamed from: a */
        void mo18275a(@NonNull View view);

        /* renamed from: b */
        void mo18274b(@NonNull View view);

        /* renamed from: c */
        void mo18273c(int i);

        /* renamed from: d */
        void mo18272d(@NonNull View view, float f);
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f3678a;

        /* renamed from: b */
        float f3679b;

        /* renamed from: c */
        boolean f3680c;

        /* renamed from: d */
        int f3681d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f3678a = 0;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3678a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f3637Q);
            this.f3678a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3678a = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3678a = 0;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f3678a = 0;
            this.f3678a = layoutParams.f3678a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        int f3682h;

        /* renamed from: i */
        int f3683i;

        /* renamed from: j */
        int f3684j;

        /* renamed from: k */
        int f3685k;

        /* renamed from: l */
        int f3686l;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3682h = 0;
            this.f3682h = parcel.readInt();
            this.f3683i = parcel.readInt();
            this.f3684j = parcel.readInt();
            this.f3685k = parcel.readInt();
            this.f3686l = parcel.readInt();
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.f3682h = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3682h);
            parcel.writeInt(this.f3683i);
            parcel.writeInt(this.f3684j);
            parcel.writeInt(this.f3685k);
            parcel.writeInt(this.f3686l);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener.class */
    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        /* renamed from: a */
        public void mo18275a(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        /* renamed from: b */
        public void mo18274b(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        /* renamed from: c */
        public void mo18273c(int i) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        /* renamed from: d */
        public void mo18272d(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$ViewDragCallback.class */
    public class ViewDragCallback extends ViewDragHelper.Callback {

        /* renamed from: a */
        private final int f3687a;

        /* renamed from: b */
        private ViewDragHelper f3688b;

        /* renamed from: c */
        private final Runnable f3689c = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.m18524o();
            }
        };

        ViewDragCallback(int i) {
            this.f3687a = i;
        }

        /* renamed from: n */
        private void m18525n() {
            int i = 3;
            if (this.f3687a == 3) {
                i = 5;
            }
            View n = DrawerLayout.this.m18545n(i);
            if (n != null) {
                DrawerLayout.this.m18553f(n);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: a */
        public int mo10388a(View view, int i, int i2) {
            if (DrawerLayout.this.m18556c(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: b */
        public int mo10387b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: d */
        public int mo10556d(View view) {
            return DrawerLayout.this.m18575E(view) ? view.getWidth() : 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: f */
        public void mo16983f(int i, int i2) {
            View n = (i & 1) == 1 ? DrawerLayout.this.m18545n(3) : DrawerLayout.this.m18545n(5);
            if (n != null && DrawerLayout.this.m18541r(n) == 0) {
                this.f3688b.m18715c(n, i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: g */
        public boolean mo18527g(int i) {
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: h */
        public void mo18526h(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f3689c, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: i */
        public void mo10555i(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f3680c = false;
            m18525n();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: j */
        public void mo10385j(int i) {
            DrawerLayout.this.m18559U(this.f3687a, i, this.f3688b.m18695w());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: k */
        public void mo10384k(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m18556c(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m18561S(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
            if (r0 > 0.5f) goto L_0x0066;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo10383l(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                float r0 = r0.m18538u(r1)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m18556c(r1, r2)
                if (r0 == 0) goto L_0x0042
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L_0x003c
                r0 = r9
                if (r0 != 0) goto L_0x0034
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0034
                goto L_0x003c
            L_0x0034:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L_0x006d
            L_0x003c:
                r0 = 0
                r9 = r0
                goto L_0x006d
            L_0x0042:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0066
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006d
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x006d
            L_0x0066:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L_0x006d:
                r0 = r4
                androidx.customview.widget.ViewDragHelper r0 = r0.f3688b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m18721N(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.ViewDragCallback.mo10383l(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: m */
        public boolean mo10382m(View view, int i) {
            return DrawerLayout.this.m18575E(view) && DrawerLayout.this.m18556c(view, this.f3687a) && DrawerLayout.this.m18541r(view) == 0;
        }

        /* renamed from: o */
        void m18524o() {
            View view;
            int i;
            int x = this.f3688b.m18694x();
            int i2 = 0;
            boolean z = this.f3687a == 3;
            if (z) {
                view = DrawerLayout.this.m18545n(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + x;
            } else {
                view = DrawerLayout.this.m18545n(5);
                i = DrawerLayout.this.getWidth() - x;
            }
            if (view == null) {
                return;
            }
            if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.m18541r(view) == 0) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                this.f3688b.m18719P(view, i, view.getTop());
                layoutParams.f3680c = true;
                DrawerLayout.this.invalidate();
                m18525n();
                DrawerLayout.this.m18557b();
            }
        }

        /* renamed from: p */
        public void m18523p() {
            DrawerLayout.this.removeCallbacks(this.f3689c);
        }

        /* renamed from: q */
        public void m18522q(ViewDragHelper viewDragHelper) {
            this.f3688b = viewDragHelper;
        }
    }

    static {
        boolean z = true;
        f3638R = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        f3639S = z;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3655f = new ChildAccessibilityDelegate();
        this.f3658i = -1728053248;
        this.f3660k = new Paint();
        this.f3667r = true;
        this.f3668s = 3;
        this.f3669t = 3;
        this.f3670u = 3;
        this.f3671v = 3;
        this.f3648I = null;
        this.f3649J = null;
        this.f3650K = null;
        this.f3651L = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f3657h = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.f3663n = new ViewDragCallback(3);
        this.f3664o = new ViewDragCallback(5);
        ViewDragHelper o = ViewDragHelper.m18703o(this, 1.0f, this.f3663n);
        this.f3661l = o;
        o.m18723L(1);
        this.f3661l.m18722M(f2);
        this.f3663n.m18522q(this.f3661l);
        ViewDragHelper o2 = ViewDragHelper.m18703o(this, 1.0f, this.f3664o);
        this.f3662m = o2;
        o2.m18723L(2);
        this.f3662m.m18722M(f2);
        this.f3664o.m18522q(this.f3662m);
        setFocusableInTouchMode(true);
        ViewCompat.m19163x0(this, 1);
        ViewCompat.m19183n0(this, new AccessibilityDelegate());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.m19164x(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this) { // from class: androidx.drawerlayout.widget.DrawerLayout.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3636P);
                try {
                    this.f3641B = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f3641B = null;
            }
        }
        this.f3656g = f * 10.0f;
        this.f3652M = new ArrayList<>();
    }

    /* renamed from: A */
    static boolean m18579A(View view) {
        return (ViewCompat.m19162y(view) == 4 || ViewCompat.m19162y(view) == 2) ? false : true;
    }

    /* renamed from: H */
    private boolean m18572H(float f, float f2, View view) {
        if (this.f3653N == null) {
            this.f3653N = new Rect();
        }
        view.getHitRect(this.f3653N);
        return this.f3653N.contains((int) f, (int) f2);
    }

    /* renamed from: I */
    private boolean m18571I(Drawable drawable, int i) {
        if (drawable == null || !DrawableCompat.m19505h(drawable)) {
            return false;
        }
        DrawableCompat.m19500m(drawable, i);
        return true;
    }

    /* renamed from: P */
    private Drawable m18564P() {
        int A = ViewCompat.m19244A(this);
        if (A == 0) {
            Drawable drawable = this.f3648I;
            if (drawable != null) {
                m18571I(drawable, A);
                return this.f3648I;
            }
        } else {
            Drawable drawable2 = this.f3649J;
            if (drawable2 != null) {
                m18571I(drawable2, A);
                return this.f3649J;
            }
        }
        return this.f3650K;
    }

    /* renamed from: Q */
    private Drawable m18563Q() {
        int A = ViewCompat.m19244A(this);
        if (A == 0) {
            Drawable drawable = this.f3649J;
            if (drawable != null) {
                m18571I(drawable, A);
                return this.f3649J;
            }
        } else {
            Drawable drawable2 = this.f3648I;
            if (drawable2 != null) {
                m18571I(drawable2, A);
                return this.f3648I;
            }
        }
        return this.f3651L;
    }

    /* renamed from: R */
    private void m18562R() {
        if (!f3639S) {
            this.f3642C = m18564P();
            this.f3643D = m18563Q();
        }
    }

    /* renamed from: T */
    private void m18560T(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m18575E(childAt)) && (!z || childAt != view)) {
                ViewCompat.m19163x0(childAt, 4);
            } else {
                ViewCompat.m19163x0(childAt, 1);
            }
        }
    }

    /* renamed from: m */
    private boolean m18546m(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent v = m18537v(motionEvent, view);
            z = view.dispatchGenericMotionEvent(v);
            v.recycle();
        } else {
            float scrollX = getScrollX() - view.getLeft();
            float scrollY = getScrollY() - view.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            z = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
        }
        return z;
    }

    /* renamed from: v */
    private MotionEvent m18537v(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f3654O == null) {
                this.f3654O = new Matrix();
            }
            matrix.invert(this.f3654O);
            obtain.transform(this.f3654O);
        }
        return obtain;
    }

    /* renamed from: w */
    static String m18536w(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: x */
    private static boolean m18535x(View view) {
        Drawable background = view.getBackground();
        boolean z = false;
        if (background != null) {
            z = false;
            if (background.getOpacity() == -1) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: y */
    private boolean m18534y() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f3680c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    private boolean m18533z() {
        return m18543p() != null;
    }

    /* renamed from: B */
    boolean m18578B(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3678a == 0;
    }

    /* renamed from: C */
    public boolean m18577C(int i) {
        View n = m18545n(i);
        if (n != null) {
            return m18576D(n);
        }
        return false;
    }

    /* renamed from: D */
    public boolean m18576D(@NonNull View view) {
        if (m18575E(view)) {
            boolean z = true;
            if ((((LayoutParams) view.getLayoutParams()).f3681d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: E */
    boolean m18575E(View view) {
        int b = GravityCompat.m19304b(((LayoutParams) view.getLayoutParams()).f3678a, ViewCompat.m19244A(view));
        return ((b & 3) == 0 && (b & 5) == 0) ? false : true;
    }

    /* renamed from: F */
    public boolean m18574F(int i) {
        View n = m18545n(i);
        if (n != null) {
            return m18573G(n);
        }
        return false;
    }

    /* renamed from: G */
    public boolean m18573G(@NonNull View view) {
        if (m18575E(view)) {
            return ((LayoutParams) view.getLayoutParams()).f3679b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: J */
    void m18570J(View view, float f) {
        float u = m18538u(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (u * width));
        if (!m18556c(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m18561S(view, f);
    }

    /* renamed from: K */
    public void m18569K(int i) {
        m18568L(i, true);
    }

    /* renamed from: L */
    public void m18568L(int i, boolean z) {
        View n = m18545n(i);
        if (n != null) {
            m18566N(n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m18536w(i));
    }

    /* renamed from: M */
    public void m18567M(@NonNull View view) {
        m18566N(view, true);
    }

    /* renamed from: N */
    public void m18566N(@NonNull View view, boolean z) {
        if (m18575E(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f3667r) {
                layoutParams.f3679b = 1.0f;
                layoutParams.f3681d = 1;
                m18560T(view, true);
            } else if (z) {
                layoutParams.f3681d |= 2;
                if (m18556c(view, 3)) {
                    this.f3661l.m18719P(view, 0, view.getTop());
                } else {
                    this.f3662m.m18719P(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                m18570J(view, 1.0f);
                m18559U(layoutParams.f3678a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: O */
    public void m18565O(@NonNull DrawerListener drawerListener) {
        List<DrawerListener> list;
        if (drawerListener != null && (list = this.f3674y) != null) {
            list.remove(drawerListener);
        }
    }

    /* renamed from: S */
    void m18561S(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.f3679b) {
            layoutParams.f3679b = f;
            m18547l(view, f);
        }
    }

    /* renamed from: U */
    void m18559U(int i, int i2, View view) {
        int i3;
        int A = this.f3661l.m18734A();
        int A2 = this.f3662m.m18734A();
        if (A == 1 || A2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (A != 2) {
                i3 = A2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f3679b;
            if (f == 0.0f) {
                m18549j(view);
            } else if (f == 1.0f) {
                m18548k(view);
            }
        }
        if (i3 != this.f3665p) {
            this.f3665p = i3;
            List<DrawerListener> list = this.f3674y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3674y.get(size).mo18273c(i3);
                }
            }
        }
    }

    /* renamed from: a */
    public void m18558a(@NonNull DrawerListener drawerListener) {
        if (drawerListener != null) {
            if (this.f3674y == null) {
                this.f3674y = new ArrayList();
            }
            this.f3674y.add(drawerListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!m18575E(childAt)) {
                    this.f3652M.add(childAt);
                } else if (m18576D(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
            if (!z) {
                int size = this.f3652M.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.f3652M.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.f3652M.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m18544o() != null || m18575E(view)) {
            ViewCompat.m19163x0(view, 4);
        } else {
            ViewCompat.m19163x0(view, 1);
        }
        if (!f3638R) {
            ViewCompat.m19183n0(view, this.f3655f);
        }
    }

    /* renamed from: b */
    void m18557b() {
        if (!this.f3672w) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f3672w = true;
        }
    }

    /* renamed from: c */
    boolean m18556c(View view, int i) {
        return (m18539t(view) & i) == i;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f3679b);
        }
        this.f3659j = f;
        boolean n = this.f3661l.m18704n(true);
        boolean n2 = this.f3662m.m18704n(true);
        if (n || n2) {
            ViewCompat.m19203d0(this);
        }
    }

    /* renamed from: d */
    public void m18555d(int i) {
        m18554e(i, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f3659j <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return false;
            }
            View childAt = getChildAt(childCount);
            if (m18572H(x, y, childAt) && !m18578B(childAt) && m18546m(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean B = m18578B(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        int i2 = width;
        if (B) {
            int childCount = getChildCount();
            int i3 = 0;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                width = width;
                i3 = i3;
                if (childAt != view) {
                    width = width;
                    i3 = i3;
                    if (childAt.getVisibility() == 0) {
                        width = width;
                        i3 = i3;
                        if (m18535x(childAt)) {
                            width = width;
                            i3 = i3;
                            if (m18575E(childAt)) {
                                if (childAt.getHeight() < height) {
                                    width = width;
                                    i3 = i3;
                                } else if (m18556c(childAt, 3)) {
                                    int right = childAt.getRight();
                                    width = width;
                                    i3 = i3;
                                    if (right > i3) {
                                        i3 = right;
                                        width = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    width = width;
                                    i3 = i3;
                                    if (left < width) {
                                        width = left;
                                        i3 = i3;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i3, 0, width, getHeight());
            i = i3;
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f3659j;
        if (f > 0.0f && B) {
            int i5 = this.f3658i;
            this.f3660k.setColor((i5 & 16777215) | (((int) ((((-16777216) & i5) >>> 24) * f)) << 24));
            canvas.drawRect(i, 0.0f, i2, getHeight(), this.f3660k);
        } else if (this.f3642C != null && m18556c(view, 3)) {
            int intrinsicWidth = this.f3642C.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f3661l.m18694x(), 1.0f));
            this.f3642C.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f3642C.setAlpha((int) (max * 255.0f));
            this.f3642C.draw(canvas);
        } else if (this.f3643D != null && m18556c(view, 5)) {
            int intrinsicWidth2 = this.f3643D.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f3662m.m18694x(), 1.0f));
            this.f3643D.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f3643D.setAlpha((int) (max2 * 255.0f));
            this.f3643D.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m18554e(int i, boolean z) {
        View n = m18545n(i);
        if (n != null) {
            m18552g(n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m18536w(i));
    }

    /* renamed from: f */
    public void m18553f(@NonNull View view) {
        m18552g(view, true);
    }

    /* renamed from: g */
    public void m18552g(@NonNull View view, boolean z) {
        if (m18575E(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f3667r) {
                layoutParams.f3679b = 0.0f;
                layoutParams.f3681d = 0;
            } else if (z) {
                layoutParams.f3681d |= 4;
                if (m18556c(view, 3)) {
                    this.f3661l.m18719P(view, -view.getWidth(), view.getTop());
                } else {
                    this.f3662m.m18719P(view, getWidth(), view.getTop());
                }
            } else {
                m18570J(view, 0.0f);
                m18559U(layoutParams.f3678a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f3639S) {
            return this.f3656g;
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.f3641B;
    }

    /* renamed from: h */
    public void m18551h() {
        m18550i(false);
    }

    /* renamed from: i */
    void m18550i(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (m18575E(childAt)) {
                if (!z || layoutParams.f3680c) {
                    z2 |= m18556c(childAt, 3) ? this.f3661l.m18719P(childAt, -childAt.getWidth(), childAt.getTop()) : this.f3662m.m18719P(childAt, getWidth(), childAt.getTop());
                    layoutParams.f3680c = false;
                } else {
                    z2 = z2;
                }
            }
        }
        this.f3663n.m18523p();
        this.f3664o.m18523p();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: j */
    void m18549j(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f3681d & 1) == 1) {
            layoutParams.f3681d = 0;
            List<DrawerListener> list = this.f3674y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3674y.get(size).mo18274b(view);
                }
            }
            m18560T(view, false);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: k */
    void m18548k(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f3681d & 1) == 0) {
            layoutParams.f3681d = 1;
            List<DrawerListener> list = this.f3674y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3674y.get(size).mo18275a(view);
                }
            }
            m18560T(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: l */
    void m18547l(View view, float f) {
        List<DrawerListener> list = this.f3674y;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f3674y.get(size).mo18272d(view, f);
            }
        }
    }

    /* renamed from: n */
    View m18545n(int i) {
        int b = GravityCompat.m19304b(i, ViewCompat.m19244A(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m18539t(childAt) & 7) == (b & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: o */
    View m18544o() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f3681d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3667r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3667r = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.f3647H && this.f3641B != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f3646G) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.f3641B.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.f3641B.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L_0x0057;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m18533z()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View p = m18543p();
        if (p != null && m18541r(p) == 0) {
            m18551h();
        }
        return p != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        this.f3666q = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m18578B(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m18556c(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f3679b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i6 - ((int) (layoutParams.f3679b * f3));
                        f = (i6 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f3679b;
                    int i10 = layoutParams.f3678a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i12 >= i13) {
                            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            i13 = i12;
                            if (i12 + measuredHeight > i11 - i14) {
                                i13 = (i11 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i13, measuredWidth + i5, measuredHeight + i13);
                    } else if (i10 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        m18561S(childAt, f);
                    }
                    int i17 = layoutParams.f3679b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        this.f3666q = false;
        this.f3667r = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L_0x002e;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View n;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        int i = savedState.f3682h;
        if (!(i == 0 || (n = m18545n(i)) == null)) {
            m18567M(n);
        }
        int i2 = savedState.f3683i;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.f3684j;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.f3685k;
        if (i4 != 3) {
            setDrawerLockMode(i4, 8388611);
        }
        int i5 = savedState.f3686l;
        if (i5 != 3) {
            setDrawerLockMode(i5, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m18562R();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = layoutParams.f3681d == 1;
            if (layoutParams.f3681d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f3682h = layoutParams.f3678a;
                break;
            }
        }
        savedState.f3683i = this.f3668s;
        savedState.f3684j = this.f3669t;
        savedState.f3685k = this.f3670u;
        savedState.f3686l = this.f3671v;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009b, code lost:
        if (m18541r(r0) != 2) goto L_0x00a0;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    View m18543p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m18575E(childAt) && m18573G(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: q */
    public int m18542q(int i) {
        int A = ViewCompat.m19244A(this);
        if (i == 3) {
            int i2 = this.f3668s;
            if (i2 != 3) {
                return i2;
            }
            int i3 = A == 0 ? this.f3670u : this.f3671v;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        } else if (i == 5) {
            int i4 = this.f3669t;
            if (i4 != 3) {
                return i4;
            }
            int i5 = A == 0 ? this.f3671v : this.f3670u;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i == 8388611) {
            int i6 = this.f3670u;
            if (i6 != 3) {
                return i6;
            }
            int i7 = A == 0 ? this.f3668s : this.f3669t;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f3671v;
            if (i8 != 3) {
                return i8;
            }
            int i9 = A == 0 ? this.f3669t : this.f3668s;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
    }

    /* renamed from: r */
    public int m18541r(@NonNull View view) {
        if (m18575E(view)) {
            return m18542q(((LayoutParams) view.getLayoutParams()).f3678a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m18550i(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f3666q) {
            super.requestLayout();
        }
    }

    @Nullable
    /* renamed from: s */
    public CharSequence m18540s(int i) {
        int b = GravityCompat.m19304b(i, ViewCompat.m19244A(this));
        if (b == 3) {
            return this.f3644E;
        }
        if (b == 5) {
            return this.f3645F;
        }
        return null;
    }

    @RestrictTo
    public void setChildInsets(Object obj, boolean z) {
        this.f3646G = obj;
        this.f3647H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f3656g = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m18575E(childAt)) {
                ViewCompat.m19169u0(childAt, this.f3656g);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.f3673x;
        if (drawerListener2 != null) {
            m18565O(drawerListener2);
        }
        if (drawerListener != null) {
            m18558a(drawerListener);
        }
        this.f3673x = drawerListener;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View n;
        int b = GravityCompat.m19304b(i2, ViewCompat.m19244A(this));
        if (i2 == 3) {
            this.f3668s = i;
        } else if (i2 == 5) {
            this.f3669t = i;
        } else if (i2 == 8388611) {
            this.f3670u = i;
        } else if (i2 == 8388613) {
            this.f3671v = i;
        }
        if (i != 0) {
            (b == 3 ? this.f3661l : this.f3662m).m18716b();
        }
        if (i == 1) {
            View n2 = m18545n(b);
            if (n2 != null) {
                m18553f(n2);
            }
        } else if (i == 2 && (n = m18545n(b)) != null) {
            m18567M(n);
        }
    }

    public void setDrawerLockMode(int i, @NonNull View view) {
        if (m18575E(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f3678a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(@DrawableRes int i, int i2) {
        setDrawerShadow(ContextCompat.m19673f(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (!f3639S) {
            if ((i & 8388611) == 8388611) {
                this.f3648I = drawable;
            } else if ((i & 8388613) == 8388613) {
                this.f3649J = drawable;
            } else if ((i & 3) == 3) {
                this.f3650K = drawable;
            } else if ((i & 5) == 5) {
                this.f3651L = drawable;
            } else {
                return;
            }
            m18562R();
            invalidate();
        }
    }

    public void setDrawerTitle(int i, @Nullable CharSequence charSequence) {
        int b = GravityCompat.m19304b(i, ViewCompat.m19244A(this));
        if (b == 3) {
            this.f3644E = charSequence;
        } else if (b == 5) {
            this.f3645F = charSequence;
        }
    }

    public void setScrimColor(@ColorInt int i) {
        this.f3658i = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f3641B = i != 0 ? ContextCompat.m19673f(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.f3641B = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.f3641B = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    int m18539t(View view) {
        return GravityCompat.m19304b(((LayoutParams) view.getLayoutParams()).f3678a, ViewCompat.m19244A(this));
    }

    /* renamed from: u */
    float m18538u(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3679b;
    }
}
