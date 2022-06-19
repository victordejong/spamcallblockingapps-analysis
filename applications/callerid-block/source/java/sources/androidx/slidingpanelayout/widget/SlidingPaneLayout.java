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
import androidx.core.content.C0265a;
import d.h.m.t;
import d.j.a.c;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: b */
    private int f2543b;

    /* renamed from: c */
    private int f2544c;

    /* renamed from: d */
    private Drawable f2545d;

    /* renamed from: e */
    private Drawable f2546e;

    /* renamed from: f */
    private final int f2547f;

    /* renamed from: g */
    private boolean f2548g;

    /* renamed from: h */
    View f2549h;

    /* renamed from: i */
    float f2550i;

    /* renamed from: j */
    private float f2551j;

    /* renamed from: k */
    int f2552k;

    /* renamed from: l */
    boolean f2553l;

    /* renamed from: m */
    private int f2554m;

    /* renamed from: n */
    private float f2555n;

    /* renamed from: o */
    private float f2556o;

    /* renamed from: p */
    private AbstractC0473d f2557p;

    /* renamed from: q */
    final c f2558q;

    /* renamed from: r */
    boolean f2559r;

    /* renamed from: s */
    private boolean f2560s;

    /* renamed from: t */
    private final Rect f2561t;

    /* renamed from: u */
    final ArrayList<RunnableC0472b> f2562u;

    /* renamed from: v */
    private Method f2563v;

    /* renamed from: w */
    private Field f2564w;

    /* renamed from: x */
    private boolean f2565x;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        private static final int[] f2566e = {16843137};

        /* renamed from: a */
        public float f2567a;

        /* renamed from: b */
        boolean f2568b;

        /* renamed from: c */
        boolean f2569c;

        /* renamed from: d */
        Paint f2570d;

        public LayoutParams() {
            super(-1, -1);
            this.f2567a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2567a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2566e);
            this.f2567a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2567a = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2567a = 0.0f;
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public class RunnableC0472b implements Runnable {

        /* renamed from: b */
        final View f2571b;

        RunnableC0472b(View view) {
            SlidingPaneLayout.this = r4;
            this.f2571b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2571b.getParent() == SlidingPaneLayout.this) {
                this.f2571b.setLayerType(0, null);
                SlidingPaneLayout.this.m12214g(this.f2571b);
            }
            SlidingPaneLayout.this.f2562u.remove(this);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface AbstractC0473d {
        /* renamed from: a */
        void m12198a(View view, float f);

        /* renamed from: b */
        void m12197b(View view);

        /* renamed from: c */
        void m12196c(View view);
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2543b = -858993460;
        this.f2560s = true;
        this.f2561t = new Rect();
        this.f2562u = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f2547f = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        t.n0(this, new a(this));
        t.x0(this, 1);
        c o = c.o(this, 0.5f, new c(this));
        this.f2558q = o;
        o.M(f * 400.0f);
    }

    /* renamed from: b */
    private boolean m12219b(View view, int i) {
        if (this.f2560s || m12204q(0.0f, i)) {
            this.f2559r = false;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private void m12218c(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f2570d == null) {
                layoutParams.f2570d = new Paint();
            }
            layoutParams.f2570d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f2570d);
            }
            m12214g(view);
        } else if (view.getLayerType() == 0) {
        } else {
            Paint paint = layoutParams.f2570d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            RunnableC0472b runnableC0472b = new RunnableC0472b(view);
            this.f2562u.add(runnableC0472b);
            t.f0(this, runnableC0472b);
        }
    }

    /* renamed from: n */
    private boolean m12207n(View view, int i) {
        if (this.f2560s || m12204q(1.0f, i)) {
            this.f2559r = true;
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
    private void m12206o(float r6) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m12206o(float):void");
    }

    /* renamed from: s */
    private static boolean m12202s(View view) {
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
    public boolean m12220a() {
        return m12219b(this.f2549h, 0);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f2558q.n(true)) {
            if (!this.f2548g) {
                this.f2558q.a();
            } else {
                t.d0(this);
            }
        }
    }

    /* renamed from: d */
    void m12217d(View view) {
        AbstractC0473d abstractC0473d = this.f2557p;
        if (abstractC0473d != null) {
            abstractC0473d.m12196c(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m12212i() ? this.f2546e : this.f2545d;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (m12212i()) {
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
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f2548g && !layoutParams.f2568b && this.f2549h != null) {
            canvas.getClipBounds(this.f2561t);
            if (m12212i()) {
                Rect rect = this.f2561t;
                rect.left = Math.max(rect.left, this.f2549h.getRight());
            } else {
                Rect rect2 = this.f2561t;
                rect2.right = Math.min(rect2.right, this.f2549h.getLeft());
            }
            canvas.clipRect(this.f2561t);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: e */
    void m12216e(View view) {
        AbstractC0473d abstractC0473d = this.f2557p;
        if (abstractC0473d != null) {
            abstractC0473d.m12197b(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: f */
    void m12215f(View view) {
        AbstractC0473d abstractC0473d = this.f2557p;
        if (abstractC0473d != null) {
            abstractC0473d.m12198a(view, this.f2550i);
        }
    }

    /* renamed from: g */
    void m12214g(View view) {
        Field field;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            t.z0(view, ((LayoutParams) view.getLayoutParams()).f2570d);
            return;
        }
        if (i >= 16) {
            if (!this.f2565x) {
                try {
                    this.f2563v = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f2564w = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f2565x = true;
            }
            if (this.f2563v == null || (field = this.f2564w) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f2563v.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        t.e0(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
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

    public int getCoveredFadeColor() {
        return this.f2544c;
    }

    public int getParallaxDistance() {
        return this.f2554m;
    }

    public int getSliderFadeColor() {
        return this.f2543b;
    }

    /* renamed from: h */
    boolean m12213h(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = false;
        if (this.f2548g) {
            z = false;
            if (layoutParams.f2569c) {
                z = false;
                if (this.f2550i > 0.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    boolean m12212i() {
        boolean z = true;
        if (t.B(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m12211j() {
        return !this.f2548g || this.f2550i == 1.0f;
    }

    /* renamed from: k */
    public boolean m12210k() {
        return this.f2548g;
    }

    /* renamed from: l */
    void m12209l(int i) {
        if (this.f2549h == null) {
            this.f2550i = 0.0f;
            return;
        }
        boolean m12212i = m12212i();
        LayoutParams layoutParams = (LayoutParams) this.f2549h.getLayoutParams();
        int width = this.f2549h.getWidth();
        int i2 = i;
        if (m12212i) {
            i2 = (getWidth() - i) - width;
        }
        float paddingRight = (i2 - ((m12212i ? getPaddingRight() : getPaddingLeft()) + (m12212i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f2552k;
        this.f2550i = paddingRight;
        if (this.f2554m != 0) {
            m12206o(paddingRight);
        }
        if (layoutParams.f2569c) {
            m12218c(this.f2549h, this.f2550i, this.f2543b);
        }
        m12215f(this.f2549h);
    }

    /* renamed from: m */
    public boolean m12208m() {
        return m12207n(this.f2549h, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2560s = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2560s = true;
        int size = this.f2562u.size();
        for (int i = 0; i < size; i++) {
            this.f2562u.get(i).run();
        }
        this.f2562u.clear();
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
        boolean m12212i = m12212i();
        c cVar = this.f2558q;
        if (m12212i) {
            cVar.L(2);
        } else {
            cVar.L(1);
        }
        int i9 = i3 - i;
        int paddingRight = m12212i ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m12212i ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f2560s) {
            this.f2550i = (!this.f2548g || !this.f2559r) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f2568b) {
                    int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f2547f) - i10) - (i12 + i13);
                    this.f2552k = min;
                    int i15 = m12212i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f2569c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f2550i);
                    i10 += i15 + i16;
                    this.f2550i = i16 / min;
                    i5 = 0;
                } else if (!this.f2548g || (i8 = this.f2554m) == 0) {
                    i10 = paddingRight;
                    i5 = 0;
                } else {
                    i5 = (int) ((1.0f - this.f2550i) * i8);
                    i10 = paddingRight;
                }
                if (m12212i) {
                    i7 = (i9 - i10) + i5;
                    i6 = i7 - measuredWidth;
                } else {
                    i6 = i10 - i5;
                    i7 = i6 + measuredWidth;
                }
                childAt.layout(i6, paddingTop, i7, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f2560s) {
            if (this.f2548g) {
                if (this.f2554m != 0) {
                    m12206o(this.f2550i);
                }
                if (((LayoutParams) this.f2549h.getLayoutParams()).f2569c) {
                    m12218c(this.f2549h, this.f2550i, this.f2543b);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m12218c(getChildAt(i17), 0.0f, this.f2543b);
                }
            }
            m12203r(this.f2549h);
        }
        this.f2560s = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03c4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m13379a());
        if (savedState.d) {
            m12208m();
        } else {
            m12220a();
        }
        this.f2559r = savedState.d;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = m12210k() ? m12211j() : this.f2559r;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f2560s = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2548g) {
            return super.onTouchEvent(motionEvent);
        }
        this.f2558q.F(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f2555n = x;
            this.f2556o = y;
            return true;
        } else if (actionMasked != 1 || !m12213h(this.f2549h)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f2555n;
            float f2 = y2 - this.f2556o;
            int z = this.f2558q.z();
            if ((f * f) + (f2 * f2) >= z * z || !this.f2558q.E(this.f2549h, (int) x2, (int) y2)) {
                return true;
            }
            m12219b(this.f2549h, 0);
            return true;
        }
    }

    /* renamed from: p */
    void m12205p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: q */
    boolean m12204q(float f, int i) {
        int i2;
        if (!this.f2548g) {
            return false;
        }
        boolean m12212i = m12212i();
        LayoutParams layoutParams = (LayoutParams) this.f2549h.getLayoutParams();
        if (m12212i) {
            i2 = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f2552k)) + this.f2549h.getWidth()));
        } else {
            i2 = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f2552k));
        }
        c cVar = this.f2558q;
        View view = this.f2549h;
        if (!cVar.P(view, i2, view.getTop())) {
            return false;
        }
        m12205p();
        t.d0(this);
        return true;
    }

    /* renamed from: r */
    void m12203r(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean m12212i = m12212i();
        int width = m12212i ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = m12212i ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !m12202s(view)) {
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
                childAt.setVisibility((Math.max(m12212i ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(m12212i ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f2548g) {
            return;
        }
        this.f2559r = view == this.f2549h;
    }

    public void setCoveredFadeColor(int i) {
        this.f2544c = i;
    }

    public void setPanelSlideListener(AbstractC0473d abstractC0473d) {
        this.f2557p = abstractC0473d;
    }

    public void setParallaxDistance(int i) {
        this.f2554m = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f2545d = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f2546e = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(C0265a.m13551f(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(C0265a.m13551f(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f2543b = i;
    }
}
