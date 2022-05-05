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
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.api.Api;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: f */
    private boolean f757f;

    /* renamed from: g */
    private View f758g;

    /* renamed from: h */
    private View f759h;

    /* renamed from: i */
    private View f760i;

    /* renamed from: j */
    Drawable f761j;

    /* renamed from: k */
    Drawable f762k;

    /* renamed from: l */
    Drawable f763l;

    /* renamed from: m */
    boolean f764m;

    /* renamed from: n */
    boolean f765n;

    /* renamed from: o */
    private int f766o;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ViewCompat.m19177q0(this, new ActionBarBackgroundDrawable(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ActionBar);
        this.f761j = obtainStyledAttributes.getDrawable(C0042R.styleable.ActionBar_background);
        this.f762k = obtainStyledAttributes.getDrawable(C0042R.styleable.ActionBar_backgroundStacked);
        this.f766o = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0042R.C0045id.split_action_bar) {
            this.f764m = true;
            this.f763l = obtainStyledAttributes.getDrawable(C0042R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f764m ? !(this.f761j == null && this.f762k == null) : this.f763l != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private int m21771a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    private boolean m21770b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f761j;
        if (drawable != null && drawable.isStateful()) {
            this.f761j.setState(getDrawableState());
        }
        Drawable drawable2 = this.f762k;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f762k.setState(getDrawableState());
        }
        Drawable drawable3 = this.f763l;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f763l.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.f758g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f761j;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f762k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f763l;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f759h = findViewById(C0042R.C0045id.action_bar);
        this.f760i = findViewById(C0042R.C0045id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f757f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f758g;
        boolean z2 = false;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f764m) {
            Drawable drawable2 = this.f763l;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (this.f761j != null) {
                if (this.f759h.getVisibility() == 0) {
                    this.f761j.setBounds(this.f759h.getLeft(), this.f759h.getTop(), this.f759h.getRight(), this.f759h.getBottom());
                } else {
                    View view2 = this.f760i;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f761j.setBounds(0, 0, 0, 0);
                    } else {
                        this.f761j.setBounds(this.f760i.getLeft(), this.f760i.getTop(), this.f760i.getRight(), this.f760i.getBottom());
                    }
                }
                z2 = true;
            }
            this.f765n = z3;
            if (z3 && (drawable = this.f762k) != null) {
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
        if (this.f759h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f766o;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f759h != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.f758g;
            if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
                setMeasuredDimension(getMeasuredWidth(), Math.min((!m21770b(this.f759h) ? m21771a(this.f759h) : !m21770b(this.f760i) ? m21771a(this.f760i) : 0) + m21771a(this.f758g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Api.BaseClientBuilder.API_PRIORITY_OTHER));
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f761j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f761j);
        }
        this.f761j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f759h;
            if (view != null) {
                this.f761j.setBounds(view.getLeft(), this.f759h.getTop(), this.f759h.getRight(), this.f759h.getBottom());
            }
        }
        boolean z = true;
        if (!this.f764m ? !(this.f761j == null && this.f762k == null) : this.f763l != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f763l == null) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f762k == null) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f763l
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0016
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f763l
            r0.unscheduleDrawable(r1)
        L_0x0016:
            r0 = r6
            r1 = r7
            r0.f763l = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f764m
            if (r0 == 0) goto L_0x0044
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f763l
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
            boolean r0 = r0.f764m
            if (r0 == 0) goto L_0x005b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f763l
            if (r0 != 0) goto L_0x0072
        L_0x0055:
            r0 = 1
            r10 = r0
            goto L_0x0072
        L_0x005b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f761j
            if (r0 != 0) goto L_0x0072
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f762k
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
        Drawable drawable3 = this.f762k;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f762k);
        }
        this.f762k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f765n && (drawable2 = this.f762k) != null) {
                drawable2.setBounds(this.f758g.getLeft(), this.f758g.getTop(), this.f758g.getRight(), this.f758g.getBottom());
            }
        }
        boolean z = true;
        if (!this.f764m ? !(this.f761j == null && this.f762k == null) : this.f763l != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f758g;
        if (view != null) {
            removeView(view);
        }
        this.f758g = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f757f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f761j;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f762k;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f763l;
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
        return (drawable == this.f761j && !this.f764m) || (drawable == this.f762k && this.f765n) || ((drawable == this.f763l && this.f764m) || super.verifyDrawable(drawable));
    }
}
