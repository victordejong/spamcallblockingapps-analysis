package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.C0032R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1743f.C25492b;
import p1727n3.p1734b.p1743f.C25525k0;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    public boolean f198a;

    /* renamed from: b */
    public View f199b;

    /* renamed from: c */
    public View f200c;

    /* renamed from: d */
    public View f201d;

    /* renamed from: e */
    public Drawable f202e;

    /* renamed from: f */
    public Drawable f203f;

    /* renamed from: g */
    public Drawable f204g;

    /* renamed from: h */
    public boolean f205h;

    /* renamed from: i */
    public boolean f206i;

    /* renamed from: j */
    public int f207j;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C25492b c25492b = new C25492b(this);
        AtomicInteger atomicInteger = C26614s.f74505a;
        setBackground(c25492b);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.ActionBar);
        this.f202e = obtainStyledAttributes.getDrawable(C0032R.styleable.ActionBar_background);
        this.f203f = obtainStyledAttributes.getDrawable(C0032R.styleable.ActionBar_backgroundStacked);
        this.f207j = obtainStyledAttributes.getDimensionPixelSize(C0032R.styleable.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0032R.C0034id.split_action_bar) {
            this.f205h = true;
            this.f204g = obtainStyledAttributes.getDrawable(C0032R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f205h ? this.f202e != null || this.f203f != null : this.f204g != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    public final int m43160a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final boolean m43159b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f202e;
        if (drawable != null && drawable.isStateful()) {
            this.f202e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f203f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f203f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f204g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f204g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f199b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f202e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f203f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f204g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f200c = findViewById(C0032R.C0034id.action_bar);
        this.f201d = findViewById(C0032R.C0034id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f198a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f199b;
        boolean z2 = false;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f205h) {
            Drawable drawable = this.f204g;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            }
        } else {
            boolean z4 = false;
            if (this.f202e != null) {
                if (this.f200c.getVisibility() == 0) {
                    this.f202e.setBounds(this.f200c.getLeft(), this.f200c.getTop(), this.f200c.getRight(), this.f200c.getBottom());
                } else {
                    View view2 = this.f201d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f202e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f202e.setBounds(this.f201d.getLeft(), this.f201d.getTop(), this.f201d.getRight(), this.f201d.getBottom());
                    }
                }
                z4 = true;
            }
            this.f206i = z3;
            z2 = z4;
            if (z3) {
                Drawable drawable2 = this.f203f;
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
        if (this.f200c == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f207j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f200c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f199b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(m43160a(this.f199b) + (!m43159b(this.f200c) ? m43160a(this.f200c) : !m43159b(this.f201d) ? m43160a(this.f201d) : 0), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f202e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f202e);
        }
        this.f202e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f200c;
            if (view != null) {
                this.f202e.setBounds(view.getLeft(), this.f200c.getTop(), this.f200c.getRight(), this.f200c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f205h ? this.f202e != null || this.f203f != null : this.f204g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f204g == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f203f == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f204g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f204g
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f204g = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f205h
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f204g
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
            boolean r0 = r0.f205h
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f204g
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f202e
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f203f
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
        Drawable drawable3 = this.f203f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f203f);
        }
        this.f203f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f206i && (drawable2 = this.f203f) != null) {
                drawable2.setBounds(this.f199b.getLeft(), this.f199b.getTop(), this.f199b.getRight(), this.f199b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f205h ? this.f202e != null || this.f203f != null : this.f204g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(C25525k0 c25525k0) {
        View view = this.f199b;
        if (view != null) {
            removeView(view);
        }
        this.f199b = c25525k0;
        if (c25525k0 != null) {
            addView(c25525k0);
            ViewGroup.LayoutParams layoutParams = c25525k0.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c25525k0.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f198a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f202e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f203f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f204g;
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
        return (drawable == this.f202e && !this.f205h) || (drawable == this.f203f && this.f206i) || ((drawable == this.f204g && this.f205h) || super.verifyDrawable(drawable));
    }
}
