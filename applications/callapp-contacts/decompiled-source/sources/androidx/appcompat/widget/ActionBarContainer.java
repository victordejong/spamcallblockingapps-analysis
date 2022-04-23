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
import androidx.appcompat.a;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    View f844a;

    /* renamed from: b  reason: collision with root package name */
    Drawable f845b;

    /* renamed from: c  reason: collision with root package name */
    Drawable f846c;

    /* renamed from: d  reason: collision with root package name */
    Drawable f847d;
    boolean e;
    boolean f;
    private boolean g;
    private View h;
    private View i;
    private int j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        v.a(this, new b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionBar);
        this.f845b = obtainStyledAttributes.getDrawable(a.j.ActionBar_background);
        this.f846c = obtainStyledAttributes.getDrawable(a.j.ActionBar_backgroundStacked);
        this.j = obtainStyledAttributes.getDimensionPixelSize(a.j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == a.f.split_action_bar) {
            this.e = true;
            this.f847d = obtainStyledAttributes.getDrawable(a.j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.e ? !(this.f845b == null && this.f846c == null) : this.f847d != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    private static boolean a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    private static int b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f845b;
        if (drawable != null && drawable.isStateful()) {
            this.f845b.setState(getDrawableState());
        }
        Drawable drawable2 = this.f846c;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f846c.setState(getDrawableState());
        }
        Drawable drawable3 = this.f847d;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f847d.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f845b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f846c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f847d;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.h = findViewById(a.f.action_bar);
        this.i = findViewById(a.f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.g || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f844a;
        boolean z2 = false;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.e) {
            Drawable drawable2 = this.f847d;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (this.f845b != null) {
                if (this.h.getVisibility() == 0) {
                    this.f845b.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
                } else {
                    View view2 = this.i;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f845b.setBounds(0, 0, 0, 0);
                    } else {
                        this.f845b.setBounds(this.i.getLeft(), this.i.getTop(), this.i.getRight(), this.i.getBottom());
                    }
                }
                z2 = true;
            }
            this.f = z3;
            if (z3 && (drawable = this.f846c) != null) {
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
        if (this.h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.h != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.f844a;
            if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
                setMeasuredDimension(getMeasuredWidth(), Math.min((!a(this.h) ? b(this.h) : !a(this.i) ? b(this.i) : 0) + b(this.f844a), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f845b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f845b);
        }
        this.f845b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.h;
            if (view != null) {
                this.f845b.setBounds(view.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
            }
        }
        boolean z = true;
        if (!this.e ? !(this.f845b == null && this.f846c == null) : this.f847d != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f847d == null) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f846c == null) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f847d
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0016
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f847d
            r0.unscheduleDrawable(r1)
        L_0x0016:
            r0 = r6
            r1 = r7
            r0.f847d = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x0044
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f847d
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
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x005b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f847d
            if (r0 != 0) goto L_0x0072
        L_0x0055:
            r0 = 1
            r10 = r0
            goto L_0x0072
        L_0x005b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f845b
            if (r0 != 0) goto L_0x0072
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f846c
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
        Drawable drawable3 = this.f846c;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f846c);
        }
        this.f846c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f && (drawable2 = this.f846c) != null) {
                drawable2.setBounds(this.f844a.getLeft(), this.f844a.getTop(), this.f844a.getRight(), this.f844a.getBottom());
            }
        }
        boolean z = true;
        if (!this.e ? !(this.f845b == null && this.f846c == null) : this.f847d != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f844a;
        if (view != null) {
            removeView(view);
        }
        this.f844a = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.g = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f845b;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f846c;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f847d;
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
        if (drawable == this.f845b && !this.e) {
            return true;
        }
        if (drawable != this.f846c || !this.f) {
            return (drawable == this.f847d && this.e) || super.verifyDrawable(drawable);
        }
        return true;
    }
}
