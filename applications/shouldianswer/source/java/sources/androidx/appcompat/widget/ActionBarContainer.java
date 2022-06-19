package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.C0051a;
import androidx.customview.p026a.AbstractC0610a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    Drawable f805a;

    /* renamed from: b */
    Drawable f806b;

    /* renamed from: c */
    Drawable f807c;

    /* renamed from: d */
    boolean f808d;

    /* renamed from: e */
    boolean f809e;

    /* renamed from: f */
    private boolean f810f;

    /* renamed from: g */
    private View f811g;

    /* renamed from: h */
    private View f812h;

    /* renamed from: i */
    private View f813i;

    /* renamed from: j */
    private int f814j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0087, code lost:
        if (r5.f806b == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x006e, code lost:
        if (r5.f807c == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0071, code lost:
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarContainer(android.content.Context r6, android.util.AttributeSet r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            androidx.appcompat.widget.b r1 = new androidx.appcompat.widget.b
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            androidx.core.p023g.C0552u.m6272a(r0, r1)
            r0 = r6
            r1 = r7
            int[] r2 = androidx.appcompat.C0051a.C0061j.ActionBar
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2)
            r6 = r0
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0051a.C0061j.ActionBar_background
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f805a = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0051a.C0061j.ActionBar_backgroundStacked
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f806b = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0051a.C0061j.ActionBar_height
            r3 = -1
            int r1 = r1.getDimensionPixelSize(r2, r3)
            r0.f814j = r1
            r0 = r5
            int r0 = r0.getId()
            int r1 = androidx.appcompat.C0051a.C0057f.split_action_bar
            if (r0 != r1) goto L57
            r0 = r5
            r1 = 1
            r0.f808d = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0051a.C0061j.ActionBar_backgroundSplit
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f807c = r1
        L57:
            r0 = r6
            r0.recycle()
            r0 = r5
            boolean r0 = r0.f808d
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L76
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f807c
            if (r0 != 0) goto L8d
        L71:
            r0 = 1
            r8 = r0
            goto L8d
        L76:
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f805a
            if (r0 != 0) goto L8d
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f806b
            if (r0 != 0) goto L8d
            goto L71
        L8d:
            r0 = r5
            r1 = r8
            r0.setWillNotDraw(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: a */
    private boolean m7508a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    /* renamed from: b */
    private int m7507b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f805a;
        if (drawable != null && drawable.isStateful()) {
            this.f805a.setState(getDrawableState());
        }
        Drawable drawable2 = this.f806b;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f806b.setState(getDrawableState());
        }
        Drawable drawable3 = this.f807c;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f807c.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f811g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f805a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f806b;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f807c;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f812h = findViewById(C0051a.C0057f.action_bar);
        this.f813i = findViewById(C0051a.C0057f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f810f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f811g;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f808d) {
            Drawable drawable = this.f807c;
            z2 = false;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            }
        } else {
            boolean z4 = false;
            if (this.f805a != null) {
                if (this.f812h.getVisibility() == 0) {
                    this.f805a.setBounds(this.f812h.getLeft(), this.f812h.getTop(), this.f812h.getRight(), this.f812h.getBottom());
                } else {
                    View view2 = this.f813i;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f805a.setBounds(0, 0, 0, 0);
                    } else {
                        this.f805a.setBounds(this.f813i.getLeft(), this.f813i.getTop(), this.f813i.getRight(), this.f813i.getBottom());
                    }
                }
                z4 = true;
            }
            this.f809e = z3;
            z2 = z4;
            if (z3) {
                Drawable drawable2 = this.f806b;
                z2 = z4;
                if (drawable2 != null) {
                    drawable2.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    z2 = true;
                }
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = i2;
        if (this.f812h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f814j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), AbstractC0610a.INVALID_ID);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f812h == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f811g;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m7508a(this.f812h) ? m7507b(this.f812h) : !m7508a(this.f813i) ? m7507b(this.f813i) : 0) + m7507b(this.f811g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f805a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f805a);
        }
        this.f805a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f812h;
            if (view != null) {
                this.f805a.setBounds(view.getLeft(), this.f812h.getTop(), this.f812h.getRight(), this.f812h.getBottom());
            }
        }
        boolean z = true;
        if (!this.f808d ? this.f805a != null || this.f806b != null : this.f807c != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f807c == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f806b == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f807c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f807c
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f807c = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f808d
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f807c
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
            boolean r0 = r0.f808d
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f807c
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f805a
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f806b
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
        Drawable drawable3 = this.f806b;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f806b);
        }
        this.f806b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f809e && (drawable2 = this.f806b) != null) {
                drawable2.setBounds(this.f811g.getLeft(), this.f811g.getTop(), this.f811g.getRight(), this.f811g.getBottom());
            }
        }
        boolean z = true;
        if (!this.f808d ? this.f805a != null || this.f806b != null : this.f807c != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0299al c0299al) {
        View view = this.f811g;
        if (view != null) {
            removeView(view);
        }
        this.f811g = c0299al;
        if (c0299al != null) {
            addView(c0299al);
            ViewGroup.LayoutParams layoutParams = c0299al.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0299al.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f810f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f805a;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f806b;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f807c;
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
        return (drawable == this.f805a && !this.f808d) || (drawable == this.f806b && this.f809e) || ((drawable == this.f807c && this.f808d) || super.verifyDrawable(drawable));
    }
}
