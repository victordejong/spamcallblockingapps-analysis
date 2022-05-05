package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: A */
    private Field f4936A;

    /* renamed from: B */
    private boolean f4937B;

    /* renamed from: f */
    private int f4938f;

    /* renamed from: g */
    private int f4939g;

    /* renamed from: h */
    private Drawable f4940h;

    /* renamed from: i */
    private Drawable f4941i;

    /* renamed from: j */
    private final int f4942j;

    /* renamed from: k */
    private boolean f4943k;

    /* renamed from: l */
    View f4944l;

    /* renamed from: m */
    float f4945m;

    /* renamed from: n */
    private float f4946n;

    /* renamed from: o */
    int f4947o;

    /* renamed from: p */
    boolean f4948p;

    /* renamed from: q */
    private int f4949q;

    /* renamed from: r */
    private float f4950r;

    /* renamed from: s */
    private float f4951s;

    /* renamed from: t */
    private PanelSlideListener f4952t;

    /* renamed from: u */
    final ViewDragHelper f4953u;

    /* renamed from: v */
    boolean f4954v;

    /* renamed from: w */
    private boolean f4955w;

    /* renamed from: x */
    private final Rect f4956x;

    /* renamed from: y */
    final ArrayList<DisableLayerRunnable> f4957y;

    /* renamed from: z */
    private Method f4958z;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate.class */
    class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a */
        private final Rect f4959a = new Rect();

        AccessibilityDelegate() {
        }

        /* renamed from: a */
        private void m16985a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f4959a;
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
            accessibilityNodeInfoCompat.m18998q0(accessibilityNodeInfoCompat2.m18993t());
        }

        /* renamed from: b */
        public boolean m16984b(View view) {
            return SlidingPaneLayout.this.m16997h(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat Q = AccessibilityNodeInfoCompat.m19041Q(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, Q);
            m16985a(accessibilityNodeInfoCompat, Q);
            Q.m19039S();
            accessibilityNodeInfoCompat.m19026c0(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.m19061B0(view);
            ViewParent H = ViewCompat.m19230H(view);
            if (H instanceof View) {
                accessibilityNodeInfoCompat.m18992t0((View) H);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m16984b(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.m19163x0(childAt, 1);
                    accessibilityNodeInfoCompat.m19027c(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!m16984b(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable.class */
    public class DisableLayerRunnable implements Runnable {

        /* renamed from: f */
        final View f4961f;

        DisableLayerRunnable(View view) {
            this.f4961f = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4961f.getParent() == SlidingPaneLayout.this) {
                this.f4961f.setLayerType(0, null);
                SlidingPaneLayout.this.m16998g(this.f4961f);
            }
            SlidingPaneLayout.this.f4957y.remove(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback.class */
    private class DragHelperCallback extends ViewDragHelper.Callback {
        DragHelperCallback() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: a */
        public int mo10388a(View view, int i, int i2) {
            int i3;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f4944l.getLayoutParams();
            if (SlidingPaneLayout.this.m16996i()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.f4944l.getWidth());
                i3 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f4947o);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i3 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f4947o + paddingLeft);
            }
            return i3;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: b */
        public int mo10387b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: d */
        public int mo10556d(View view) {
            return SlidingPaneLayout.this.f4947o;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: f */
        public void mo16983f(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.f4953u.m18715c(slidingPaneLayout.f4944l, i2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: i */
        public void mo10555i(View view, int i) {
            SlidingPaneLayout.this.m16989p();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: j */
        public void mo10385j(int i) {
            if (SlidingPaneLayout.this.f4953u.m18734A() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f4945m == 0.0f) {
                    slidingPaneLayout.m16987r(slidingPaneLayout.f4944l);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.m17001d(slidingPaneLayout2.f4944l);
                    SlidingPaneLayout.this.f4954v = false;
                    return;
                }
                slidingPaneLayout.m17000e(slidingPaneLayout.f4944l);
                SlidingPaneLayout.this.f4954v = true;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: k */
        public void mo10384k(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.m16993l(i);
            SlidingPaneLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00a1, code lost:
            if (r4.f4963a.f4945m > 0.5f) goto L_0x00a4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (r4.f4963a.f4945m > 0.5f) goto L_0x0043;
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
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.m16996i()
                if (r0 == 0) goto L_0x006d
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingRight()
                r1 = r8
                int r1 = r1.rightMargin
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0043
                r0 = r9
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x004f
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4945m
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x004f
            L_0x0043:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4947o
                int r0 = r0 + r1
                r10 = r0
            L_0x004f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f4944l
                int r0 = r0.getWidth()
                r9 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getWidth()
                r1 = r10
                int r0 = r0 - r1
                r1 = r9
                int r0 = r0 - r1
                r10 = r0
                goto L_0x00b0
            L_0x006d:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingLeft()
                r10 = r0
                r0 = r8
                int r0 = r0.leftMargin
                r1 = r10
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r11 = r0
                r0 = r11
                if (r0 > 0) goto L_0x00a4
                r0 = r9
                r10 = r0
                r0 = r11
                if (r0 != 0) goto L_0x00b0
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4945m
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00b0
            L_0x00a4:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4947o
                int r0 = r0 + r1
                r10 = r0
            L_0x00b0:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                androidx.customview.widget.ViewDragHelper r0 = r0.f4953u
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m18721N(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.DragHelperCallback.mo10383l(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /* renamed from: m */
        public boolean mo10382m(View view, int i) {
            if (SlidingPaneLayout.this.f4948p) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f4966b;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        private static final int[] f4964e = {16843137};

        /* renamed from: a */
        public float f4965a;

        /* renamed from: b */
        boolean f4966b;

        /* renamed from: c */
        boolean f4967c;

        /* renamed from: d */
        Paint f4968d;

        public LayoutParams() {
            super(-1, -1);
            this.f4965a = 0.0f;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4965a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4964e);
            this.f4965a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4965a = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4965a = 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener.class */
    public interface PanelSlideListener {
        /* renamed from: a */
        void mo16979a(@NonNull View view, float f);

        /* renamed from: b */
        void mo16978b(@NonNull View view);

        /* renamed from: c */
        void mo16977c(@NonNull View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        boolean f4969h;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4969h = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4969h ? 1 : 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener.class */
    public static class SimplePanelSlideListener implements PanelSlideListener {
        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        /* renamed from: a */
        public void mo16979a(View view, float f) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        /* renamed from: b */
        public void mo16978b(View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        /* renamed from: c */
        public void mo16977c(View view) {
        }
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4938f = -858993460;
        this.f4955w = true;
        this.f4956x = new Rect();
        this.f4957y = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f4942j = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.m19183n0(this, new AccessibilityDelegate());
        ViewCompat.m19163x0(this, 1);
        ViewDragHelper o = ViewDragHelper.m18703o(this, 0.5f, new DragHelperCallback());
        this.f4953u = o;
        o.m18722M(f * 400.0f);
    }

    /* renamed from: b */
    private boolean m17003b(View view, int i) {
        if (!this.f4955w && !m16988q(0.0f, i)) {
            return false;
        }
        this.f4954v = false;
        return true;
    }

    /* renamed from: c */
    private void m17002c(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f4968d == null) {
                layoutParams.f4968d = new Paint();
            }
            layoutParams.f4968d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f4968d);
            }
            m16998g(view);
        } else if (view.getLayerType() != 0) {
            Paint paint = layoutParams.f4968d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            DisableLayerRunnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.f4957y.add(disableLayerRunnable);
            ViewCompat.m19199f0(this, disableLayerRunnable);
        }
    }

    /* renamed from: n */
    private boolean m16991n(View view, int i) {
        if (!this.f4955w && !m16988q(1.0f, i)) {
            return false;
        }
        this.f4954v = true;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m16990o(float r6) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m16990o(float):void");
    }

    /* renamed from: s */
    private static boolean m16986s(View view) {
        Drawable background;
        boolean z = true;
        if (view.isOpaque()) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 18 || (background = view.getBackground()) == null) {
            return false;
        }
        if (background.getOpacity() != -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m17004a() {
        return m17003b(this.f4944l, 0);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f4953u.m18704n(true)) {
            return;
        }
        if (!this.f4943k) {
            this.f4953u.m18717a();
        } else {
            ViewCompat.m19203d0(this);
        }
    }

    /* renamed from: d */
    void m17001d(View view) {
        PanelSlideListener panelSlideListener = this.f4952t;
        if (panelSlideListener != null) {
            panelSlideListener.mo16977c(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m16996i() ? this.f4941i : this.f4940h;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (m16996i()) {
                i2 = childAt.getRight();
                i = intrinsicWidth + i2;
            } else {
                int left = childAt.getLeft();
                i2 = left - intrinsicWidth;
                i = left;
            }
            drawable.setBounds(i2, top, i, bottom);
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f4943k && !layoutParams.f4966b && this.f4944l != null) {
            canvas.getClipBounds(this.f4956x);
            if (m16996i()) {
                Rect rect = this.f4956x;
                rect.left = Math.max(rect.left, this.f4944l.getRight());
            } else {
                Rect rect2 = this.f4956x;
                rect2.right = Math.min(rect2.right, this.f4944l.getLeft());
            }
            canvas.clipRect(this.f4956x);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: e */
    void m17000e(View view) {
        PanelSlideListener panelSlideListener = this.f4952t;
        if (panelSlideListener != null) {
            panelSlideListener.mo16978b(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: f */
    void m16999f(View view) {
        PanelSlideListener panelSlideListener = this.f4952t;
        if (panelSlideListener != null) {
            panelSlideListener.mo16979a(view, this.f4945m);
        }
    }

    /* renamed from: g */
    void m16998g(View view) {
        Field field;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            ViewCompat.m19159z0(view, ((LayoutParams) view.getLayoutParams()).f4968d);
            return;
        }
        if (i >= 16) {
            if (!this.f4937B) {
                try {
                    this.f4958z = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f4936A = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f4937B = true;
            }
            if (this.f4958z == null || (field = this.f4936A) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f4958z.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        ViewCompat.m19201e0(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.f4939g;
    }

    @AbstractC0040Px
    public int getParallaxDistance() {
        return this.f4949q;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.f4938f;
    }

    /* renamed from: h */
    boolean m16997h(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = false;
        if (this.f4943k) {
            z = false;
            if (layoutParams.f4967c) {
                z = false;
                if (this.f4945m > 0.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    boolean m16996i() {
        boolean z = true;
        if (ViewCompat.m19244A(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m16995j() {
        return !this.f4943k || this.f4945m == 1.0f;
    }

    /* renamed from: k */
    public boolean m16994k() {
        return this.f4943k;
    }

    /* renamed from: l */
    void m16993l(int i) {
        if (this.f4944l == null) {
            this.f4945m = 0.0f;
            return;
        }
        boolean i2 = m16996i();
        LayoutParams layoutParams = (LayoutParams) this.f4944l.getLayoutParams();
        int width = this.f4944l.getWidth();
        int i3 = i;
        if (i2) {
            i3 = (getWidth() - i) - width;
        }
        float paddingRight = (i3 - ((i2 ? getPaddingRight() : getPaddingLeft()) + (i2 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f4947o;
        this.f4945m = paddingRight;
        if (this.f4949q != 0) {
            m16990o(paddingRight);
        }
        if (layoutParams.f4967c) {
            m17002c(this.f4944l, this.f4945m, this.f4938f);
        }
        m16999f(this.f4944l);
    }

    /* renamed from: m */
    public boolean m16992m() {
        return m16991n(this.f4944l, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4955w = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f4955w = true;
        int size = this.f4957y.size();
        for (int i = 0; i < size; i++) {
            this.f4957y.get(i).run();
        }
        this.f4957y.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0109  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean i9 = m16996i();
        if (i9) {
            this.f4953u.m18723L(2);
        } else {
            this.f4953u.m18723L(1);
        }
        int i10 = i3 - i;
        int paddingRight = i9 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = i9 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f4955w) {
            this.f4945m = (!this.f4943k || !this.f4954v) ? 0.0f : 1.0f;
        }
        int i11 = paddingRight;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f4966b) {
                    int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int i15 = i10 - paddingLeft;
                    int min = (Math.min(paddingRight, i15 - this.f4942j) - i11) - (i13 + i14);
                    this.f4947o = min;
                    int i16 = i9 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f4967c = ((i11 + i16) + min) + (measuredWidth / 2) > i15;
                    int i17 = (int) (min * this.f4945m);
                    i11 += i16 + i17;
                    this.f4945m = i17 / this.f4947o;
                    i5 = 0;
                } else if (!this.f4943k || (i8 = this.f4949q) == 0) {
                    i11 = paddingRight;
                    i5 = 0;
                } else {
                    i5 = (int) ((1.0f - this.f4945m) * i8);
                    i11 = paddingRight;
                }
                if (i9) {
                    i7 = (i10 - i11) + i5;
                    i6 = i7 - measuredWidth;
                } else {
                    i6 = i11 - i5;
                    i7 = i6 + measuredWidth;
                }
                childAt.layout(i6, paddingTop, i7, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f4955w) {
            if (this.f4943k) {
                if (this.f4949q != 0) {
                    m16990o(this.f4945m);
                }
                if (((LayoutParams) this.f4944l.getLayoutParams()).f4967c) {
                    m17002c(this.f4944l, this.f4945m, this.f4938f);
                }
            } else {
                for (int i18 = 0; i18 < childCount; i18++) {
                    m17002c(getChildAt(i18), 0.0f, this.f4938f);
                }
            }
            m16987r(this.f4944l);
        }
        this.f4955w = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode2 == 0) {
                if (isInEditMode()) {
                    i4 = size;
                    i3 = mode2;
                    i5 = size2;
                    if (mode2 == 0) {
                        i3 = Integer.MIN_VALUE;
                        i5 = 300;
                        i4 = size;
                    }
                } else {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                }
            }
        } else if (!isInEditMode()) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else if (mode == Integer.MIN_VALUE) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
        } else {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode == 0) {
                i4 = 300;
                i3 = mode2;
                i5 = size2;
            }
        }
        if (i3 == Integer.MIN_VALUE) {
            i6 = (i5 - getPaddingTop()) - getPaddingBottom();
            i7 = 0;
        } else if (i3 != 1073741824) {
            i7 = 0;
            i6 = 0;
        } else {
            i7 = (i5 - getPaddingTop()) - getPaddingBottom();
            i6 = i7;
        }
        int paddingLeft = (i4 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f4944l = null;
        int i10 = paddingLeft;
        boolean z = false;
        float f = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f4967c = false;
                i7 = i7;
            } else {
                float f2 = layoutParams.f4965a;
                f = f;
                if (f2 > 0.0f) {
                    f += f2;
                    f = f;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                        i7 = i7;
                    }
                }
                int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                int makeMeasureSpec = i13 == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, Integer.MIN_VALUE) : i13 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                childAt.measure(makeMeasureSpec, i14 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i14 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i7;
                if (i3 == Integer.MIN_VALUE) {
                    i7 = i7;
                    if (measuredHeight > i7) {
                        i7 = Math.min(measuredHeight, i6);
                    }
                }
                i10 -= measuredWidth;
                boolean z2 = i10 < 0;
                layoutParams.f4966b = z2;
                z |= z2;
                if (z2) {
                    this.f4944l = childAt;
                }
            }
        }
        if (z || f > 0.0f) {
            int i15 = paddingLeft - this.f4942j;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt2 = getChildAt(i16);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z3 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.f4965a > 0.0f;
                        int measuredWidth2 = z3 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.f4944l) {
                            if (layoutParams2.f4965a > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i17 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    i8 = i17 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i17 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i17, 1073741824);
                                } else {
                                    i8 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z) {
                                    int i18 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
                                    if (measuredWidth2 != i18) {
                                        childAt2.measure(makeMeasureSpec2, i8);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f4965a * Math.max(0, i10)) / f)), 1073741824), i8);
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i15 || layoutParams2.f4965a > 0.0f)) {
                            if (z3) {
                                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                i9 = i19 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i19 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                            } else {
                                i9 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i15, 1073741824), i9);
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, i7 + getPaddingTop() + getPaddingBottom());
        this.f4943k = z;
        if (!(this.f4953u.m18734A() == 0 || z)) {
            this.f4953u.m18717a();
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        if (savedState.f4969h) {
            m16992m();
        } else {
            m17004a();
        }
        this.f4954v = savedState.f4969h;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4969h = m16994k() ? m16995j() : this.f4954v;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f4955w = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f4943k) {
            return super.onTouchEvent(motionEvent);
        }
        this.f4953u.m18729F(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f4950r = x;
            this.f4951s = y;
            return true;
        } else if (actionMasked != 1 || !m16997h(this.f4944l)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f4950r;
            float f2 = y2 - this.f4951s;
            int z = this.f4953u.m18692z();
            if ((f * f) + (f2 * f2) >= z * z || !this.f4953u.m18730E(this.f4944l, (int) x2, (int) y2)) {
                return true;
            }
            m17003b(this.f4944l, 0);
            return true;
        }
    }

    /* renamed from: p */
    void m16989p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: q */
    boolean m16988q(float f, int i) {
        int i2;
        if (!this.f4943k) {
            return false;
        }
        boolean i3 = m16996i();
        LayoutParams layoutParams = (LayoutParams) this.f4944l.getLayoutParams();
        if (i3) {
            i2 = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f4947o)) + this.f4944l.getWidth()));
        } else {
            i2 = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f4947o));
        }
        ViewDragHelper viewDragHelper = this.f4953u;
        View view = this.f4944l;
        if (!viewDragHelper.m18719P(view, i2, view.getTop())) {
            return false;
        }
        m16989p();
        ViewCompat.m19203d0(this);
        return true;
    }

    /* renamed from: r */
    void m16987r(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean i5 = m16996i();
        int width = i5 ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = i5 ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !m16986s(view)) {
            i4 = 0;
            i3 = 0;
            i2 = 0;
            i = 0;
        } else {
            i4 = view.getLeft();
            i3 = view.getRight();
            i2 = view.getTop();
            i = view.getBottom();
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount && (childAt = getChildAt(i6)) != view; i6++) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(i5 ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(i5 ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.f4943k) {
            this.f4954v = view == this.f4944l;
        }
    }

    public void setCoveredFadeColor(@ColorInt int i) {
        this.f4939g = i;
    }

    public void setPanelSlideListener(@Nullable PanelSlideListener panelSlideListener) {
        this.f4952t = panelSlideListener;
    }

    public void setParallaxDistance(@AbstractC0040Px int i) {
        this.f4949q = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f4940h = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f4941i = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(ContextCompat.m19673f(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(ContextCompat.m19673f(getContext(), i));
    }

    public void setSliderFadeColor(@ColorInt int i) {
        this.f4938f = i;
    }
}
