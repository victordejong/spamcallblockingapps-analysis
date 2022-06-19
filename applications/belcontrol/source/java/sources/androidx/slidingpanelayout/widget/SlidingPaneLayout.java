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
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a */
    public int f1440a;

    /* renamed from: b */
    public int f1441b;

    /* renamed from: c */
    public Drawable f1442c;

    /* renamed from: d */
    public Drawable f1443d;

    /* renamed from: f */
    public final int f1444f;

    /* renamed from: g */
    public boolean f1445g;

    /* renamed from: h */
    public View f1446h;

    /* renamed from: j */
    public float f1447j;

    /* renamed from: k */
    public float f1448k;

    /* renamed from: l */
    public int f1449l;

    /* renamed from: m */
    public boolean f1450m;

    /* renamed from: n */
    public int f1451n;

    /* renamed from: o */
    public float f1452o;

    /* renamed from: p */
    public float f1453p;

    /* renamed from: q */
    public AbstractC0193d f1454q;

    /* renamed from: r */
    public final rc f1455r;

    /* renamed from: s */
    public boolean f1456s;

    /* renamed from: t */
    public boolean f1457t;

    /* renamed from: u */
    public final Rect f1458u;

    /* renamed from: v */
    public final ArrayList<RunnableC0192b> f1459v;

    /* renamed from: w */
    public Method f1460w;

    /* renamed from: x */
    public Field f1461x;

    /* renamed from: y */
    public boolean f1462y;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        public static final int[] f1463e = {16843137};

        /* renamed from: a */
        public float f1464a;

        /* renamed from: b */
        public boolean f1465b;

        /* renamed from: c */
        public boolean f1466c;

        /* renamed from: d */
        public Paint f1467d;

        public LayoutParams() {
            super(-1, -1);
            this.f1464a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1464a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1463e);
            this.f1464a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1464a = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1464a = 0.0f;
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public class RunnableC0192b implements Runnable {

        /* renamed from: a */
        public final View f1468a;

        public RunnableC0192b(View view) {
            SlidingPaneLayout.this = r4;
            this.f1468a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1468a.getParent() == SlidingPaneLayout.this) {
                this.f1468a.setLayerType(0, null);
                SlidingPaneLayout.this.m6045g(this.f1468a);
            }
            SlidingPaneLayout.this.f1459v.remove(this);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface AbstractC0193d {
        /* renamed from: a */
        void m6029a(View view);

        /* renamed from: b */
        void m6028b(View view);

        /* renamed from: c */
        void m6027c(View view, float f);
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1440a = -858993460;
        this.f1457t = true;
        this.f1458u = new Rect();
        this.f1459v = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f1444f = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        jb.n0(this, new a(this));
        jb.x0(this, 1);
        rc o = rc.o(this, 0.5f, new c(this));
        this.f1455r = o;
        o.M(f * 400.0f);
    }

    /* renamed from: s */
    public static boolean m6033s(View view) {
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
    public boolean m6051a() {
        return m6050b(this.f1446h, 0);
    }

    /* renamed from: b */
    public final boolean m6050b(View view, int i) {
        if (this.f1457t || m6035q(0.0f, i)) {
            this.f1456s = false;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final void m6049c(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f1467d == null) {
                layoutParams.f1467d = new Paint();
            }
            layoutParams.f1467d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f1467d);
            }
            m6045g(view);
        } else if (view.getLayerType() == 0) {
        } else {
            Paint paint = layoutParams.f1467d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            RunnableC0192b runnableC0192b = new RunnableC0192b(view);
            this.f1459v.add(runnableC0192b);
            jb.f0(this, runnableC0192b);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1455r.n(true)) {
            if (!this.f1445g) {
                this.f1455r.a();
            } else {
                jb.d0(this);
            }
        }
    }

    /* renamed from: d */
    public void m6048d(View view) {
        AbstractC0193d abstractC0193d = this.f1454q;
        if (abstractC0193d != null) {
            abstractC0193d.m6028b(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m6043i() ? this.f1443d : this.f1442c;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (m6043i()) {
            i2 = childAt.getRight();
            i = intrinsicWidth + i2;
        } else {
            int left = childAt.getLeft();
            i = left;
            i2 = left - intrinsicWidth;
        }
        drawable.setBounds(i2, top, i, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f1445g && !layoutParams.f1465b && this.f1446h != null) {
            canvas.getClipBounds(this.f1458u);
            if (m6043i()) {
                Rect rect = this.f1458u;
                rect.left = Math.max(rect.left, this.f1446h.getRight());
            } else {
                Rect rect2 = this.f1458u;
                rect2.right = Math.min(rect2.right, this.f1446h.getLeft());
            }
            canvas.clipRect(this.f1458u);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: e */
    public void m6047e(View view) {
        AbstractC0193d abstractC0193d = this.f1454q;
        if (abstractC0193d != null) {
            abstractC0193d.m6029a(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: f */
    public void m6046f(View view) {
        AbstractC0193d abstractC0193d = this.f1454q;
        if (abstractC0193d != null) {
            abstractC0193d.m6027c(view, this.f1447j);
        }
    }

    /* renamed from: g */
    public void m6045g(View view) {
        Field field;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            jb.z0(view, ((LayoutParams) view.getLayoutParams()).f1467d);
            return;
        }
        if (i >= 16) {
            if (!this.f1462y) {
                try {
                    this.f1460w = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f1461x = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f1462y = true;
            }
            if (this.f1460w == null || (field = this.f1461x) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f1460w.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        jb.e0(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.f1441b;
    }

    public int getParallaxDistance() {
        return this.f1451n;
    }

    public int getSliderFadeColor() {
        return this.f1440a;
    }

    /* renamed from: h */
    public boolean m6044h(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = false;
        if (this.f1445g) {
            z = false;
            if (layoutParams.f1466c) {
                z = false;
                if (this.f1447j > 0.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    public boolean m6043i() {
        boolean z = true;
        if (jb.B(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m6042j() {
        return !this.f1445g || this.f1447j == 1.0f;
    }

    /* renamed from: k */
    public boolean m6041k() {
        return this.f1445g;
    }

    /* renamed from: l */
    public void m6040l(int i) {
        if (this.f1446h == null) {
            this.f1447j = 0.0f;
            return;
        }
        boolean m6043i = m6043i();
        LayoutParams layoutParams = (LayoutParams) this.f1446h.getLayoutParams();
        int width = this.f1446h.getWidth();
        int i2 = i;
        if (m6043i) {
            i2 = (getWidth() - i) - width;
        }
        float paddingRight = (i2 - ((m6043i ? getPaddingRight() : getPaddingLeft()) + (m6043i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f1449l;
        this.f1447j = paddingRight;
        if (this.f1451n != 0) {
            m6037o(paddingRight);
        }
        if (layoutParams.f1466c) {
            m6049c(this.f1446h, this.f1447j, this.f1440a);
        }
        m6046f(this.f1446h);
    }

    /* renamed from: m */
    public boolean m6039m() {
        return m6038n(this.f1446h, 0);
    }

    /* renamed from: n */
    public final boolean m6038n(View view, int i) {
        if (this.f1457t || m6035q(1.0f, i)) {
            this.f1456s = true;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6037o(float r6) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m6037o(float):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1457t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1457t = true;
        int size = this.f1459v.size();
        for (int i = 0; i < size; i++) {
            this.f1459v.get(i).run();
        }
        this.f1459v.clear();
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean m6043i = m6043i();
        rc rcVar = this.f1455r;
        if (m6043i) {
            rcVar.L(2);
        } else {
            rcVar.L(1);
        }
        int i9 = i3 - i;
        int paddingRight = m6043i ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m6043i ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f1457t) {
            this.f1447j = (!this.f1445g || !this.f1456s) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f1465b) {
                    int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f1444f) - i10) - (i12 + i13);
                    this.f1449l = min;
                    int i15 = m6043i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f1466c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f1447j);
                    i10 += i15 + i16;
                    this.f1447j = i16 / min;
                    i5 = 0;
                } else if (!this.f1445g || (i8 = this.f1451n) == 0) {
                    i10 = paddingRight;
                    i5 = 0;
                } else {
                    i5 = (int) ((1.0f - this.f1447j) * i8);
                    i10 = paddingRight;
                }
                if (m6043i) {
                    i6 = (i9 - i10) + i5;
                    i7 = i6 - measuredWidth;
                } else {
                    i7 = i10 - i5;
                    i6 = i7 + measuredWidth;
                }
                childAt.layout(i7, paddingTop, i6, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f1457t) {
            if (this.f1445g) {
                if (this.f1451n != 0) {
                    m6037o(this.f1447j);
                }
                if (((LayoutParams) this.f1446h.getLayoutParams()).f1466c) {
                    m6049c(this.f1446h, this.f1447j, this.f1440a);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m6049c(getChildAt(i17), 0.0f, this.f1440a);
                }
            }
            m6034r(this.f1446h);
        }
        this.f1457t = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03c4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a) {
            m6039m();
        } else {
            m6051a();
        }
        this.f1456s = savedState.a;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = m6041k() ? m6042j() : this.f1456s;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f1457t = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f1445g) {
            return super.onTouchEvent(motionEvent);
        }
        this.f1455r.F(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f1452o = x;
            this.f1453p = y;
            return true;
        } else if (actionMasked != 1 || !m6044h(this.f1446h)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f1452o;
            float f2 = y2 - this.f1453p;
            int z = this.f1455r.z();
            if ((f * f) + (f2 * f2) >= z * z || !this.f1455r.E(this.f1446h, (int) x2, (int) y2)) {
                return true;
            }
            m6050b(this.f1446h, 0);
            return true;
        }
    }

    /* renamed from: p */
    public void m6036p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: q */
    public boolean m6035q(float f, int i) {
        int i2;
        if (!this.f1445g) {
            return false;
        }
        boolean m6043i = m6043i();
        LayoutParams layoutParams = (LayoutParams) this.f1446h.getLayoutParams();
        if (m6043i) {
            i2 = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f1449l)) + this.f1446h.getWidth()));
        } else {
            i2 = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f1449l));
        }
        rc rcVar = this.f1455r;
        View view = this.f1446h;
        if (!rcVar.P(view, i2, view.getTop())) {
            return false;
        }
        m6036p();
        jb.d0(this);
        return true;
    }

    /* renamed from: r */
    public void m6034r(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean m6043i = m6043i();
        int width = m6043i ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = m6043i ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !m6033s(view)) {
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
        for (int i5 = 0; i5 < childCount && (childAt = getChildAt(i5)) != view; i5++) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(m6043i ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(m6043i ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f1445g) {
            return;
        }
        this.f1456s = view == this.f1446h;
    }

    public void setCoveredFadeColor(int i) {
        this.f1441b = i;
    }

    public void setPanelSlideListener(AbstractC0193d abstractC0193d) {
        this.f1454q = abstractC0193d;
    }

    public void setParallaxDistance(int i) {
        this.f1451n = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f1442c = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f1443d = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(g8.f(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(g8.f(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f1440a = i;
    }
}
