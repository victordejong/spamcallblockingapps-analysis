package androidx.appcompat.widget;

import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    public boolean f522a;

    /* renamed from: b */
    public View f523b;

    /* renamed from: c */
    public View f524c;

    /* renamed from: d */
    public View f525d;

    /* renamed from: e */
    public Drawable f526e;

    /* renamed from: f */
    public Drawable f527f;

    /* renamed from: g */
    public Drawable f528g;

    /* renamed from: h */
    public boolean f529h;

    /* renamed from: i */
    public boolean f530i;

    /* renamed from: j */
    public int f531j;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0088, code lost:
        if (r5.f527f == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x006c, code lost:
        if (r5.f528g == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x006f, code lost:
        r11 = true;
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
            androidx.appcompat.widget.b r0 = new androidx.appcompat.widget.b
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r8 = r0
            java.util.WeakHashMap<android.view.View, m0.y> r0 = p163m0.C3589v.f11780a
            r9 = r0
            r0 = r5
            r1 = r8
            p163m0.C3589v.C3593d.m2077q(r0, r1)
            r0 = r6
            r1 = r7
            int[] r2 = p117h8.C3035k.f10214a
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2)
            r6 = r0
            r0 = 0
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = 0
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f526e = r1
            r0 = r5
            r1 = r6
            r2 = 2
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f527f = r1
            r0 = r5
            r1 = r6
            r2 = 13
            r3 = -1
            int r1 = r1.getDimensionPixelSize(r2, r3)
            r0.f531j = r1
            r0 = r5
            int r0 = r0.getId()
            r1 = 2131297036(0x7f09030c, float:1.8212006E38)
            if (r0 != r1) goto L59
            r0 = r5
            r1 = 1
            r0.f529h = r1
            r0 = r5
            r1 = r6
            r2 = 1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f528g = r1
        L59:
            r0 = r6
            r0.recycle()
            r0 = r5
            boolean r0 = r0.f529h
            if (r0 == 0) goto L75
            r0 = r10
            r11 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f528g
            if (r0 != 0) goto L8e
        L6f:
            r0 = 1
            r11 = r0
            goto L8e
        L75:
            r0 = r10
            r11 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f526e
            if (r0 != 0) goto L8e
            r0 = r10
            r11 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f527f
            if (r0 != 0) goto L8e
            goto L6f
        L8e:
            r0 = r5
            r1 = r11
            r0.setWillNotDraw(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: a */
    public final int m8672a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final boolean m8671b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f526e;
        if (drawable != null && drawable.isStateful()) {
            this.f526e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f527f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f527f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f528g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f528g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f523b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f526e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f527f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f528g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f524c = findViewById(C3681R.C3684id.action_bar);
        this.f525d = findViewById(C3681R.C3684id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f522a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f523b;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f529h) {
            Drawable drawable2 = this.f528g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
            if (this.f526e != null) {
                if (this.f524c.getVisibility() == 0) {
                    this.f526e.setBounds(this.f524c.getLeft(), this.f524c.getTop(), this.f524c.getRight(), this.f524c.getBottom());
                } else {
                    View view2 = this.f525d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f526e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f526e.setBounds(this.f525d.getLeft(), this.f525d.getTop(), this.f525d.getRight(), this.f525d.getBottom());
                    }
                }
                z2 = true;
            }
            this.f530i = z3;
            if (z3 && (drawable = this.f527f) != null) {
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
        if (this.f524c == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f531j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f524c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f523b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(m8672a(this.f523b) + (!m8671b(this.f524c) ? m8672a(this.f524c) : !m8671b(this.f525d) ? m8672a(this.f525d) : 0), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f526e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f526e);
        }
        this.f526e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f524c;
            if (view != null) {
                this.f526e.setBounds(view.getLeft(), this.f524c.getTop(), this.f524c.getRight(), this.f524c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f529h ? this.f526e != null || this.f527f != null : this.f528g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f528g == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f527f == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f528g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f528g
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f528g = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f529h
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f528g
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
            boolean r0 = r0.f529h
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f528g
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f526e
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f527f
            if (r0 != 0) goto L72
            goto L55
        L72:
            r0 = r6
            r1 = r10
            r0.setWillNotDraw(r1)
            r0 = r6
            r0.invalidate()
            r0 = r6
            r0.invalidateOutline()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.setSplitBackground(android.graphics.drawable.Drawable):void");
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f527f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f527f);
        }
        this.f527f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f530i && (drawable2 = this.f527f) != null) {
                drawable2.setBounds(this.f523b.getLeft(), this.f523b.getTop(), this.f523b.getRight(), this.f523b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f529h ? this.f526e != null || this.f527f != null : this.f528g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(C0277s0 c0277s0) {
        View view = this.f523b;
        if (view != null) {
            removeView(view);
        }
        this.f523b = c0277s0;
        if (c0277s0 != null) {
            addView(c0277s0);
            ViewGroup.LayoutParams layoutParams = c0277s0.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0277s0.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f522a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f526e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f527f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f528g;
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
        return (drawable == this.f526e && !this.f529h) || (drawable == this.f527f && this.f530i) || ((drawable == this.f528g && this.f529h) || super.verifyDrawable(drawable));
    }
}
