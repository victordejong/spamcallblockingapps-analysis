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
import androidx.appcompat.C0142a;
import androidx.core.view.C0926v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    View f996a;

    /* renamed from: b */
    Drawable f997b;

    /* renamed from: c */
    Drawable f998c;

    /* renamed from: d */
    Drawable f999d;

    /* renamed from: e */
    boolean f1000e;

    /* renamed from: f */
    boolean f1001f;

    /* renamed from: g */
    private boolean f1002g;

    /* renamed from: h */
    private View f1003h;

    /* renamed from: i */
    private View f1004i;

    /* renamed from: j */
    private int f1005j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0926v.m44128a(this, new C0382b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ActionBar);
        this.f997b = obtainStyledAttributes.getDrawable(C0142a.C0152j.ActionBar_background);
        this.f998c = obtainStyledAttributes.getDrawable(C0142a.C0152j.ActionBar_backgroundStacked);
        this.f1005j = obtainStyledAttributes.getDimensionPixelSize(C0142a.C0152j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0142a.C0148f.split_action_bar) {
            this.f1000e = true;
            this.f999d = obtainStyledAttributes.getDrawable(C0142a.C0152j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f1000e ? this.f997b != null || this.f998c != null : this.f999d != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private static boolean m46033a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    /* renamed from: b */
    private static int m46032b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f997b;
        if (drawable != null && drawable.isStateful()) {
            this.f997b.setState(getDrawableState());
        }
        Drawable drawable2 = this.f998c;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f998c.setState(getDrawableState());
        }
        Drawable drawable3 = this.f999d;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f999d.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f997b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f998c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f999d;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1003h = findViewById(C0142a.C0148f.action_bar);
        this.f1004i = findViewById(C0142a.C0148f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1002g || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f996a;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f1000e) {
            Drawable drawable2 = this.f999d;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
            if (this.f997b != null) {
                if (this.f1003h.getVisibility() == 0) {
                    this.f997b.setBounds(this.f1003h.getLeft(), this.f1003h.getTop(), this.f1003h.getRight(), this.f1003h.getBottom());
                } else {
                    View view2 = this.f1004i;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f997b.setBounds(0, 0, 0, 0);
                    } else {
                        this.f997b.setBounds(this.f1004i.getLeft(), this.f1004i.getTop(), this.f1004i.getRight(), this.f1004i.getBottom());
                    }
                }
                z2 = true;
            }
            this.f1001f = z3;
            if (z3 && (drawable = this.f998c) != null) {
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
        if (this.f1003h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f1005j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f1003h == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f996a;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m46033a(this.f1003h) ? m46032b(this.f1003h) : !m46033a(this.f1004i) ? m46032b(this.f1004i) : 0) + m46032b(this.f996a), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f997b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f997b);
        }
        this.f997b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1003h;
            if (view != null) {
                this.f997b.setBounds(view.getLeft(), this.f1003h.getTop(), this.f1003h.getRight(), this.f1003h.getBottom());
            }
        }
        boolean z = true;
        if (!this.f1000e ? this.f997b != null || this.f998c != null : this.f999d != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f999d == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f998c == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f999d
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f999d
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f999d = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f1000e
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f999d
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
            boolean r0 = r0.f1000e
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f999d
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f997b
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f998c
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
        Drawable drawable3 = this.f998c;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f998c);
        }
        this.f998c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1001f && (drawable2 = this.f998c) != null) {
                drawable2.setBounds(this.f996a.getLeft(), this.f996a.getTop(), this.f996a.getRight(), this.f996a.getBottom());
            }
        }
        boolean z = true;
        if (!this.f1000e ? this.f997b != null || this.f998c != null : this.f999d != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f996a;
        if (view != null) {
            removeView(view);
        }
        this.f996a = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f1002g = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f997b;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f998c;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f999d;
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
        if (drawable != this.f997b || this.f1000e) {
            if (drawable == this.f998c && this.f1001f) {
                return true;
            }
            return (drawable == this.f999d && this.f1000e) || super.verifyDrawable(drawable);
        }
        return true;
    }
}
