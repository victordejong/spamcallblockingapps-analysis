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
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    public boolean f486a;

    /* renamed from: b */
    public View f487b;

    /* renamed from: c */
    public View f488c;

    /* renamed from: d */
    public View f489d;

    /* renamed from: f */
    public Drawable f490f;

    /* renamed from: g */
    public Drawable f491g;

    /* renamed from: h */
    public Drawable f492h;

    /* renamed from: j */
    public boolean f493j;

    /* renamed from: k */
    public boolean f494k;

    /* renamed from: l */
    public int f495l;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        jb.q0(this, new l1(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.ActionBar);
        this.f490f = obtainStyledAttributes.getDrawable(o.ActionBar_background);
        this.f491g = obtainStyledAttributes.getDrawable(o.ActionBar_backgroundStacked);
        this.f495l = obtainStyledAttributes.getDimensionPixelSize(o.ActionBar_height, -1);
        boolean z = true;
        if (getId() == k.split_action_bar) {
            this.f493j = true;
            this.f492h = obtainStyledAttributes.getDrawable(o.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f493j ? this.f490f != null || this.f491g != null : this.f492h != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    public final int m6996a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final boolean m6995b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f490f;
        if (drawable != null && drawable.isStateful()) {
            this.f490f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f491g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f491g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f492h;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f492h.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f487b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f490f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f491g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f492h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f488c = findViewById(k.action_bar);
        this.f489d = findViewById(k.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f486a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        Drawable drawable2;
        int left;
        int top;
        int right;
        View view;
        super.onLayout(z, i, i2, i3, i4);
        View view2 = this.f487b;
        boolean z3 = (view2 == null || view2.getVisibility() == 8) ? false : true;
        if (view2 != null && view2.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view2.getLayoutParams();
            int measuredHeight2 = view2.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view2.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f493j) {
            Drawable drawable3 = this.f492h;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
            if (this.f490f != null) {
                if (this.f488c.getVisibility() == 0) {
                    drawable2 = this.f490f;
                    left = this.f488c.getLeft();
                    top = this.f488c.getTop();
                    right = this.f488c.getRight();
                    view = this.f488c;
                } else {
                    View view3 = this.f489d;
                    if (view3 == null || view3.getVisibility() != 0) {
                        this.f490f.setBounds(0, 0, 0, 0);
                        z2 = true;
                    } else {
                        drawable2 = this.f490f;
                        left = this.f489d.getLeft();
                        top = this.f489d.getTop();
                        right = this.f489d.getRight();
                        view = this.f489d;
                    }
                }
                drawable2.setBounds(left, top, right, view.getBottom());
                z2 = true;
            }
            this.f494k = z3;
            if (z3 && (drawable = this.f491g) != null) {
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
            android.view.View r0 = r0.f488c
            if (r0 != 0) goto L30
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L30
            r0 = r6
            int r0 = r0.f495l
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 < 0) goto L30
            r0 = r10
            r1 = r8
            int r1 = android.view.View.MeasureSpec.getSize(r1)
            int r0 = java.lang.Math.min(r0, r1)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r9 = r0
        L30:
            r0 = r6
            r1 = r7
            r2 = r9
            super.onMeasure(r1, r2)
            r0 = r6
            android.view.View r0 = r0.f488c
            if (r0 != 0) goto L3e
            return
        L3e:
            r0 = r9
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r8 = r0
            r0 = r6
            android.view.View r0 = r0.f487b
            r11 = r0
            r0 = r11
            if (r0 == 0) goto Lb6
            r0 = r11
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 == r1) goto Lb6
            r0 = r8
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto Lb6
            r0 = r6
            r1 = r6
            android.view.View r1 = r1.f488c
            boolean r0 = r0.m6995b(r1)
            if (r0 != 0) goto L79
            r0 = r6
            android.view.View r0 = r0.f488c
            r11 = r0
        L6f:
            r0 = r6
            r1 = r11
            int r0 = r0.m6996a(r1)
            r7 = r0
            goto L8f
        L79:
            r0 = r6
            r1 = r6
            android.view.View r1 = r1.f489d
            boolean r0 = r0.m6995b(r1)
            if (r0 != 0) goto L8d
            r0 = r6
            android.view.View r0 = r0.f489d
            r11 = r0
            goto L6f
        L8d:
            r0 = 0
            r7 = r0
        L8f:
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L9d
            r0 = r9
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r8 = r0
            goto La0
        L9d:
            r0 = 2147483647(0x7fffffff, float:NaN)
            r8 = r0
        La0:
            r0 = r6
            r1 = r6
            int r1 = r1.getMeasuredWidth()
            r2 = r7
            r3 = r6
            r4 = r6
            android.view.View r4 = r4.f487b
            int r3 = r3.m6996a(r4)
            int r2 = r2 + r3
            r3 = r8
            int r2 = java.lang.Math.min(r2, r3)
            r0.setMeasuredDimension(r1, r2)
        Lb6:
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
        Drawable drawable2 = this.f490f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f490f);
        }
        this.f490f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f488c;
            if (view != null) {
                this.f490f.setBounds(view.getLeft(), this.f488c.getTop(), this.f488c.getRight(), this.f488c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f493j ? this.f490f != null || this.f491g != null : this.f492h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f492h == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f491g == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f492h
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f492h
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f492h = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f493j
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f492h
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = 0
            r2 = 0
            r3 = r6
            int r3 = r3.getMeasuredWidth()
            r4 = r6
            int r4 = r4.getMeasuredHeight()
            r0.setBounds(r1, r2, r3, r4)
        L44:
            r0 = r6
            boolean r0 = r0.f493j
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f492h
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f490f
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f491g
            if (r0 != 0) goto L72
            goto L55
        L72:
            r0 = r6
            r1 = r10
            r0.setWillNotDraw(r1)
            r0 = r6
            r0.invalidate()
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L88
            r0 = r6
            r0.invalidateOutline()
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.setSplitBackground(android.graphics.drawable.Drawable):void");
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f491g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f491g);
        }
        this.f491g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f494k && (drawable2 = this.f491g) != null) {
                drawable2.setBounds(this.f487b.getLeft(), this.f487b.getTop(), this.f487b.getRight(), this.f487b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f493j ? this.f490f != null || this.f491g != null : this.f492h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f487b;
        if (view != null) {
            removeView(view);
        }
        this.f487b = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f486a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f490f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f491g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f492h;
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
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f490f && !this.f493j) || (drawable == this.f491g && this.f494k) || ((drawable == this.f492h && this.f493j) || super.verifyDrawable(drawable));
    }
}
