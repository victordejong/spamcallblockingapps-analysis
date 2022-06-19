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
import p020b.p021a.C1428f;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: d */
    private boolean f744d;

    /* renamed from: e */
    private View f745e;

    /* renamed from: f */
    private View f746f;

    /* renamed from: g */
    private View f747g;

    /* renamed from: h */
    Drawable f748h;

    /* renamed from: i */
    Drawable f749i;

    /* renamed from: j */
    Drawable f750j;

    /* renamed from: k */
    boolean f751k;

    /* renamed from: l */
    boolean f752l;

    /* renamed from: m */
    private int f753m;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C1679w.m29267u0(this, new C0279b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.ActionBar);
        this.f748h = obtainStyledAttributes.getDrawable(C1432j.ActionBar_background);
        this.f749i = obtainStyledAttributes.getDrawable(C1432j.ActionBar_backgroundStacked);
        this.f753m = obtainStyledAttributes.getDimensionPixelSize(C1432j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C1428f.split_action_bar) {
            this.f751k = true;
            this.f750j = obtainStyledAttributes.getDrawable(C1432j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f751k ? this.f748h != null || this.f749i != null : this.f750j != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private int m35296a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    private boolean m35295b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f748h;
        if (drawable != null && drawable.isStateful()) {
            this.f748h.setState(getDrawableState());
        }
        Drawable drawable2 = this.f749i;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f749i.setState(getDrawableState());
        }
        Drawable drawable3 = this.f750j;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f750j.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f745e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f748h;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f749i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f750j;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f746f = findViewById(C1428f.action_bar);
        this.f747g = findViewById(C1428f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f744d || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f745e;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f751k) {
            Drawable drawable2 = this.f750j;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
            if (this.f748h != null) {
                if (this.f746f.getVisibility() == 0) {
                    this.f748h.setBounds(this.f746f.getLeft(), this.f746f.getTop(), this.f746f.getRight(), this.f746f.getBottom());
                } else {
                    View view2 = this.f747g;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f748h.setBounds(0, 0, 0, 0);
                    } else {
                        this.f748h.setBounds(this.f747g.getLeft(), this.f747g.getTop(), this.f747g.getRight(), this.f747g.getBottom());
                    }
                }
                z2 = true;
            }
            this.f752l = z3;
            if (z3 && (drawable = this.f749i) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                z2 = true;
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = i2;
        if (this.f746f == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f753m;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f746f == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f745e;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m35295b(this.f746f) ? m35296a(this.f746f) : !m35295b(this.f747g) ? m35296a(this.f747g) : 0) + m35296a(this.f745e), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f748h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f748h);
        }
        this.f748h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f746f;
            if (view != null) {
                this.f748h.setBounds(view.getLeft(), this.f746f.getTop(), this.f746f.getRight(), this.f746f.getBottom());
            }
        }
        boolean z = true;
        if (!this.f751k ? this.f748h != null || this.f749i != null : this.f750j != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f750j == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f749i == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f750j
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f750j
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f750j = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f751k
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f750j
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
            boolean r0 = r0.f751k
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f750j
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f748h
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f749i
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
        Drawable drawable3 = this.f749i;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f749i);
        }
        this.f749i = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f752l && (drawable2 = this.f749i) != null) {
                drawable2.setBounds(this.f745e.getLeft(), this.f745e.getTop(), this.f745e.getRight(), this.f745e.getBottom());
            }
        }
        boolean z = true;
        if (!this.f751k ? this.f748h != null || this.f749i != null : this.f750j != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f745e;
        if (view != null) {
            removeView(view);
        }
        this.f745e = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f744d = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f748h;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f749i;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f750j;
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
        return (drawable == this.f748h && !this.f751k) || (drawable == this.f749i && this.f752l) || ((drawable == this.f750j && this.f751k) || super.verifyDrawable(drawable));
    }
}
