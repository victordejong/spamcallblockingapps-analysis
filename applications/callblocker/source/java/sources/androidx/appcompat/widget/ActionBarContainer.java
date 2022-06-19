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
import androidx.appcompat.C0083a;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    Drawable f886a;

    /* renamed from: b */
    Drawable f887b;

    /* renamed from: c */
    Drawable f888c;

    /* renamed from: d */
    boolean f889d;

    /* renamed from: e */
    boolean f890e;

    /* renamed from: f */
    private boolean f891f;

    /* renamed from: g */
    private View f892g;

    /* renamed from: h */
    private View f893h;

    /* renamed from: i */
    private View f894i;

    /* renamed from: j */
    private int f895j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = true;
        C0595u.m20350a(this, new C0329b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ActionBar);
        this.f886a = obtainStyledAttributes.getDrawable(C0083a.C0093j.ActionBar_background);
        this.f887b = obtainStyledAttributes.getDrawable(C0083a.C0093j.ActionBar_backgroundStacked);
        this.f895j = obtainStyledAttributes.getDimensionPixelSize(C0083a.C0093j.ActionBar_height, -1);
        if (getId() == C0083a.C0089f.split_action_bar) {
            this.f889d = true;
            this.f888c = obtainStyledAttributes.getDrawable(C0083a.C0093j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (this.f889d) {
            if (this.f888c != null) {
                z = false;
            }
        } else if (this.f886a != null || this.f887b != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private boolean m21779a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    /* renamed from: b */
    private int m21778b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return layoutParams.bottomMargin + view.getMeasuredHeight() + layoutParams.topMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f886a != null && this.f886a.isStateful()) {
            this.f886a.setState(getDrawableState());
        }
        if (this.f887b != null && this.f887b.isStateful()) {
            this.f887b.setState(getDrawableState());
        }
        if (this.f888c == null || !this.f888c.isStateful()) {
            return;
        }
        this.f888c.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f892g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f886a != null) {
            this.f886a.jumpToCurrentState();
        }
        if (this.f887b != null) {
            this.f887b.jumpToCurrentState();
        }
        if (this.f888c != null) {
            this.f888c.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f893h = findViewById(C0083a.C0089f.action_bar);
        this.f894i = findViewById(C0083a.C0089f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f891f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f892g;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (!this.f889d) {
            if (this.f886a != null) {
                if (this.f893h.getVisibility() == 0) {
                    this.f886a.setBounds(this.f893h.getLeft(), this.f893h.getTop(), this.f893h.getRight(), this.f893h.getBottom());
                } else if (this.f894i == null || this.f894i.getVisibility() != 0) {
                    this.f886a.setBounds(0, 0, 0, 0);
                } else {
                    this.f886a.setBounds(this.f894i.getLeft(), this.f894i.getTop(), this.f894i.getRight(), this.f894i.getBottom());
                }
                z2 = true;
            } else {
                z2 = false;
            }
            this.f890e = z3;
            if (z3 && this.f887b != null) {
                this.f887b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                z2 = true;
            }
        } else if (this.f888c != null) {
            this.f888c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = i2;
        if (this.f893h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                i3 = i2;
                if (this.f895j >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(this.f895j, View.MeasureSpec.getSize(i2)), RecyclerView.UNDEFINED_DURATION);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f893h == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        if (this.f892g == null || this.f892g.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m21779a(this.f893h) ? m21778b(this.f893h) : !m21779a(this.f894i) ? m21778b(this.f894i) : 0) + m21778b(this.f892g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        boolean z = true;
        if (this.f886a != null) {
            this.f886a.setCallback(null);
            unscheduleDrawable(this.f886a);
        }
        this.f886a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f893h != null) {
                this.f886a.setBounds(this.f893h.getLeft(), this.f893h.getTop(), this.f893h.getRight(), this.f893h.getBottom());
            }
        }
        if (this.f889d) {
            if (this.f888c != null) {
                z = false;
            }
        } else if (this.f886a != null || this.f887b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        boolean z = true;
        if (this.f888c != null) {
            this.f888c.setCallback(null);
            unscheduleDrawable(this.f888c);
        }
        this.f888c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f889d && this.f888c != null) {
                this.f888c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (this.f889d) {
            if (this.f888c != null) {
                z = false;
            }
        } else if (this.f886a != null || this.f887b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        boolean z = true;
        if (this.f887b != null) {
            this.f887b.setCallback(null);
            unscheduleDrawable(this.f887b);
        }
        this.f887b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f890e && this.f887b != null) {
                this.f887b.setBounds(this.f892g.getLeft(), this.f892g.getTop(), this.f892g.getRight(), this.f892g.getBottom());
            }
        }
        if (this.f889d) {
            if (this.f888c != null) {
                z = false;
            }
        } else if (this.f886a != null || this.f887b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0305ai c0305ai) {
        if (this.f892g != null) {
            removeView(this.f892g);
        }
        this.f892g = c0305ai;
        if (c0305ai != null) {
            addView(c0305ai);
            ViewGroup.LayoutParams layoutParams = c0305ai.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0305ai.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f891f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f886a != null) {
            this.f886a.setVisible(z, false);
        }
        if (this.f887b != null) {
            this.f887b.setVisible(z, false);
        }
        if (this.f888c != null) {
            this.f888c.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        return i != 0 ? super.startActionModeForChild(view, callback, i) : null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f886a && !this.f889d) || (drawable == this.f887b && this.f890e) || ((drawable == this.f888c && this.f889d) || super.verifyDrawable(drawable));
    }
}
