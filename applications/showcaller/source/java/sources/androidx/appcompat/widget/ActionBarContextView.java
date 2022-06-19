package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0178g;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1432j;
import p020b.p021a.p028o.AbstractC1455b;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0276a {

    /* renamed from: l */
    private CharSequence f754l;

    /* renamed from: m */
    private CharSequence f755m;

    /* renamed from: n */
    private View f756n;

    /* renamed from: o */
    private View f757o;

    /* renamed from: p */
    private View f758p;

    /* renamed from: q */
    private LinearLayout f759q;

    /* renamed from: r */
    private TextView f760r;

    /* renamed from: s */
    private TextView f761s;

    /* renamed from: t */
    private int f762t;

    /* renamed from: u */
    private int f763u;

    /* renamed from: v */
    private boolean f764v;

    /* renamed from: w */
    private int f765w;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView$a.class */
    public class View$OnClickListenerC0204a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC1455b f766d;

        View$OnClickListenerC0204a(AbstractC1455b abstractC1455b) {
            ActionBarContextView.this = r4;
            this.f766d = abstractC1455b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f766d.mo30036c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, C1432j.ActionMode, i, 0);
        C1679w.m29267u0(this, m34946v.m34961g(C1432j.ActionMode_background));
        this.f762t = m34946v.m34954n(C1432j.ActionMode_titleTextStyle, 0);
        this.f763u = m34946v.m34954n(C1432j.ActionMode_subtitleTextStyle, 0);
        this.f1224h = m34946v.m34955m(C1432j.ActionMode_height, 0);
        this.f765w = m34946v.m34954n(C1432j.ActionMode_closeItemLayout, C1429g.abc_action_mode_close_item_material);
        m34946v.m34945w();
    }

    /* renamed from: i */
    private void m35292i() {
        if (this.f759q == null) {
            LayoutInflater.from(getContext()).inflate(C1429g.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f759q = linearLayout;
            this.f760r = (TextView) linearLayout.findViewById(C1428f.action_bar_title);
            this.f761s = (TextView) this.f759q.findViewById(C1428f.action_bar_subtitle);
            if (this.f762t != 0) {
                this.f760r.setTextAppearance(getContext(), this.f762t);
            }
            if (this.f763u != 0) {
                this.f761s.setTextAppearance(getContext(), this.f763u);
            }
        }
        this.f760r.setText(this.f754l);
        this.f761s.setText(this.f755m);
        boolean isEmpty = TextUtils.isEmpty(this.f754l);
        boolean z = !TextUtils.isEmpty(this.f755m);
        this.f761s.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f759q;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f759q.getParent() == null) {
            addView(this.f759q);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0276a
    /* renamed from: f */
    public /* bridge */ /* synthetic */ C1601a0 mo34991f(int i, long j) {
        return super.mo34991f(i, j);
    }

    /* renamed from: g */
    public void m35294g() {
        if (this.f756n == null) {
            m35290k();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0276a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbstractC0276a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f755m;
    }

    public CharSequence getTitle() {
        return this.f754l;
    }

    /* renamed from: h */
    public void m35293h(AbstractC1455b abstractC1455b) {
        View view = this.f756n;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f765w, (ViewGroup) this, false);
            this.f756n = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f756n);
        }
        View findViewById = this.f756n.findViewById(C1428f.action_mode_close_button);
        this.f757o = findViewById;
        findViewById.setOnClickListener(new View$OnClickListenerC0204a(abstractC1455b));
        C0178g c0178g = (C0178g) abstractC1455b.mo30034e();
        ActionMenuPresenter actionMenuPresenter = this.f1223g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m35269B();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f1223g = actionMenuPresenter2;
        actionMenuPresenter2.m35258M(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0178g.m35391c(this.f1223g, this.f1221e);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1223g.mo35253r(this);
        this.f1222f = actionMenuView;
        C1679w.m29267u0(actionMenuView, null);
        addView(this.f1222f, layoutParams);
    }

    /* renamed from: j */
    public boolean m35291j() {
        return this.f764v;
    }

    /* renamed from: k */
    public void m35290k() {
        removeAllViews();
        this.f758p = null;
        this.f1222f = null;
        this.f1223g = null;
        View view = this.f757o;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    /* renamed from: l */
    public boolean m35289l() {
        ActionMenuPresenter actionMenuPresenter = this.f1223g;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m35257N();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f1223g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m35266E();
            this.f1223g.m35265F();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0276a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f754l);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m34869b = C0305k0.m34869b(this);
        int paddingRight = m34869b ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f756n;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f756n.getLayoutParams();
                int i6 = m34869b ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = m34869b ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int m34993d = AbstractC0276a.m34993d(paddingRight, i6, m34869b);
                i5 = AbstractC0276a.m34993d(m34993d + m34992e(this.f756n, m34993d, paddingTop, paddingTop2, m34869b), i7, m34869b);
            }
        }
        LinearLayout linearLayout = this.f759q;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f758p == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m34992e(this.f759q, i5, paddingTop, paddingTop2, m34869b);
                }
            }
        }
        View view2 = this.f758p;
        if (view2 != null) {
            m34992e(view2, i8, paddingTop, paddingTop2, m34869b);
        }
        int paddingLeft = m34869b ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1222f;
        if (actionMenuView != null) {
            m34992e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !m34869b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        } else {
            int size = View.MeasureSpec.getSize(i);
            int i3 = this.f1224h;
            if (i3 <= 0) {
                i3 = View.MeasureSpec.getSize(i2);
            }
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i4 = i3 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            View view = this.f756n;
            int i5 = paddingLeft;
            if (view != null) {
                int m34994c = m34994c(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f756n.getLayoutParams();
                i5 = m34994c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f1222f;
            int i6 = i5;
            if (actionMenuView != null) {
                i6 = i5;
                if (actionMenuView.getParent() == this) {
                    i6 = m34994c(this.f1222f, i5, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f759q;
            int i7 = i6;
            if (linearLayout != null) {
                i7 = i6;
                if (this.f758p == null) {
                    if (this.f764v) {
                        this.f759q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f759q.getMeasuredWidth();
                        boolean z = measuredWidth <= i6;
                        i7 = i6;
                        if (z) {
                            i7 = i6 - measuredWidth;
                        }
                        this.f759q.setVisibility(z ? 0 : 8);
                    } else {
                        i7 = m34994c(linearLayout, i6, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f758p;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i8 = layoutParams.width;
                int i9 = i8 != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i10 = i7;
                if (i8 >= 0) {
                    i10 = Math.min(i8, i7);
                }
                int i11 = layoutParams.height;
                int i12 = i11 != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i13 = i4;
                if (i11 >= 0) {
                    i13 = Math.min(i11, i4);
                }
                this.f758p.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i13, i12));
            }
            if (this.f1224h > 0) {
                setMeasuredDimension(size, i3);
                return;
            }
            int childCount = getChildCount();
            int i14 = 0;
            int i15 = 0;
            while (i15 < childCount) {
                int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingTop;
                int i16 = i14;
                if (measuredHeight > i14) {
                    i16 = measuredHeight;
                }
                i15++;
                i14 = i16;
            }
            setMeasuredDimension(size, i14);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0276a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbstractC0276a
    public void setContentHeight(int i) {
        this.f1224h = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f758p;
        if (view2 != null) {
            removeView(view2);
        }
        this.f758p = view;
        if (view != null && (linearLayout = this.f759q) != null) {
            removeView(linearLayout);
            this.f759q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f755m = charSequence;
        m35292i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f754l = charSequence;
        m35292i();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f764v) {
            requestLayout();
        }
        this.f764v = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0276a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
