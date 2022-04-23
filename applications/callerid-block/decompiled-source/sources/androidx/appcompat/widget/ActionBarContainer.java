package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import d.a.f;
import d.a.j;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: b */
    private boolean f343b;

    /* renamed from: c */
    private View f344c;

    /* renamed from: d */
    private View f345d;

    /* renamed from: e */
    private View f346e;

    /* renamed from: f */
    Drawable f347f;

    /* renamed from: g */
    Drawable f348g;

    /* renamed from: h */
    Drawable f349h;

    /* renamed from: i */
    boolean f350i;

    /* renamed from: j */
    boolean f351j;

    /* renamed from: k */
    private int f352k;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        t.q0(this, new C0123b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ActionBar);
        this.f347f = obtainStyledAttributes.getDrawable(j.ActionBar_background);
        this.f348g = obtainStyledAttributes.getDrawable(j.ActionBar_backgroundStacked);
        this.f352k = obtainStyledAttributes.getDimensionPixelSize(j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == f.split_action_bar) {
            this.f350i = true;
            this.f349h = obtainStyledAttributes.getDrawable(j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f350i ? !(this.f347f == null && this.f348g == null) : this.f349h != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private int m14803a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    private boolean m14802b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f347f;
        if (drawable != null && drawable.isStateful()) {
            this.f347f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f348g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f348g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f349h;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f349h.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.f344c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f347f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f348g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f349h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f345d = findViewById(f.action_bar);
        this.f346e = findViewById(f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f343b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        Drawable drawable2;
        int left;
        int top;
        int right;
        View view;
        super.onLayout(z, i, i2, i3, i4);
        View view2 = this.f344c;
        boolean z2 = false;
        boolean z3 = (view2 == null || view2.getVisibility() == 8) ? false : true;
        if (!(view2 == null || view2.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view2.getLayoutParams();
            int measuredHeight2 = view2.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view2.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f350i) {
            Drawable drawable3 = this.f349h;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (this.f347f != null) {
                if (this.f345d.getVisibility() == 0) {
                    drawable2 = this.f347f;
                    left = this.f345d.getLeft();
                    top = this.f345d.getTop();
                    right = this.f345d.getRight();
                    view = this.f345d;
                } else {
                    View view3 = this.f346e;
                    if (view3 == null || view3.getVisibility() != 0) {
                        this.f347f.setBounds(0, 0, 0, 0);
                        z2 = true;
                    } else {
                        drawable2 = this.f347f;
                        left = this.f346e.getLeft();
                        top = this.f346e.getTop();
                        right = this.f346e.getRight();
                        view = this.f346e;
                    }
                }
                drawable2.setBounds(left, top, right, view.getBottom());
                z2 = true;
            }
            this.f351j = z3;
            if (z3 && (drawable = this.f348g) != null) {
                drawable.setBounds(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z2 = true;
            }
        }
        if (z2) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            r0 = r8
            r9 = r0
            r0 = r6
            android.view.View r0 = r0.f345d
            if (r0 != 0) goto L_0x0030
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L_0x0030
            r0 = r6
            int r0 = r0.f352k
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 < 0) goto L_0x0030
            r0 = r10
            r1 = r8
            int r1 = android.view.View.MeasureSpec.getSize(r1)
            int r0 = java.lang.Math.min(r0, r1)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r9 = r0
        L_0x0030:
            r0 = r6
            r1 = r7
            r2 = r9
            super.onMeasure(r1, r2)
            r0 = r6
            android.view.View r0 = r0.f345d
            if (r0 != 0) goto L_0x003e
            return
        L_0x003e:
            r0 = r9
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r8 = r0
            r0 = r6
            android.view.View r0 = r0.f344c
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00b6
            r0 = r11
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 == r1) goto L_0x00b6
            r0 = r8
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L_0x00b6
            r0 = r6
            r1 = r6
            android.view.View r1 = r1.f345d
            boolean r0 = r0.m14802b(r1)
            if (r0 != 0) goto L_0x0079
            r0 = r6
            android.view.View r0 = r0.f345d
            r11 = r0
        L_0x006f:
            r0 = r6
            r1 = r11
            int r0 = r0.m14803a(r1)
            r7 = r0
            goto L_0x008f
        L_0x0079:
            r0 = r6
            r1 = r6
            android.view.View r1 = r1.f346e
            boolean r0 = r0.m14802b(r1)
            if (r0 != 0) goto L_0x008d
            r0 = r6
            android.view.View r0 = r0.f346e
            r11 = r0
            goto L_0x006f
        L_0x008d:
            r0 = 0
            r7 = r0
        L_0x008f:
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L_0x009d
            r0 = r9
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r8 = r0
            goto L_0x00a0
        L_0x009d:
            r0 = 2147483647(0x7fffffff, float:NaN)
            r8 = r0
        L_0x00a0:
            r0 = r6
            r1 = r6
            int r1 = r1.getMeasuredWidth()
            r2 = r7
            r3 = r6
            r4 = r6
            android.view.View r4 = r4.f344c
            int r3 = r3.m14803a(r4)
            int r2 = r2 + r3
            r3 = r8
            int r2 = java.lang.Math.min(r2, r3)
            r0.setMeasuredDimension(r1, r2)
        L_0x00b6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f347f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f347f);
        }
        this.f347f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f345d;
            if (view != null) {
                this.f347f.setBounds(view.getLeft(), this.f345d.getTop(), this.f345d.getRight(), this.f345d.getBottom());
            }
        }
        boolean z = true;
        if (!this.f350i ? !(this.f347f == null && this.f348g == null) : this.f349h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f349h == null) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f348g == null) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f349h
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0016
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f349h
            r0.unscheduleDrawable(r1)
        L_0x0016:
            r0 = r6
            r1 = r7
            r0.f349h = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f350i
            if (r0 == 0) goto L_0x0044
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f349h
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = 0
            r2 = 0
            r3 = r6
            int r3 = r3.getMeasuredWidth()
            r4 = r6
            int r4 = r4.getMeasuredHeight()
            r0.setBounds(r1, r2, r3, r4)
        L_0x0044:
            r0 = r6
            boolean r0 = r0.f350i
            if (r0 == 0) goto L_0x005b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f349h
            if (r0 != 0) goto L_0x0072
        L_0x0055:
            r0 = 1
            r10 = r0
            goto L_0x0072
        L_0x005b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f347f
            if (r0 != 0) goto L_0x0072
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f348g
            if (r0 != 0) goto L_0x0072
            goto L_0x0055
        L_0x0072:
            r0 = r6
            r1 = r10
            r0.setWillNotDraw(r1)
            r0 = r6
            r0.invalidate()
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0088
            r0 = r6
            r0.invalidateOutline()
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.setSplitBackground(android.graphics.drawable.Drawable):void");
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f348g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f348g);
        }
        this.f348g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f351j && (drawable2 = this.f348g) != null) {
                drawable2.setBounds(this.f344c.getLeft(), this.f344c.getTop(), this.f344c.getRight(), this.f344c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f350i ? !(this.f347f == null && this.f348g == null) : this.f349h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f344c;
        if (view != null) {
            removeView(view);
        }
        this.f344c = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f343b = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f347f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f348g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f349h;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f347f && !this.f350i) || (drawable == this.f348g && this.f351j) || ((drawable == this.f349h && this.f350i) || super.verifyDrawable(drawable));
    }
}
