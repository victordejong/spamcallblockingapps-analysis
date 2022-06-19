package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.C0136e;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
import p117h8.C3035k;
import p140k.AbstractC3295a;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0194a {

    /* renamed from: i */
    public CharSequence f532i;

    /* renamed from: j */
    public CharSequence f533j;

    /* renamed from: k */
    public View f534k;

    /* renamed from: l */
    public View f535l;

    /* renamed from: m */
    public View f536m;

    /* renamed from: n */
    public LinearLayout f537n;

    /* renamed from: o */
    public TextView f538o;

    /* renamed from: p */
    public TextView f539p;

    /* renamed from: q */
    public int f540q;

    /* renamed from: r */
    public int f541r;

    /* renamed from: s */
    public boolean f542s;

    /* renamed from: t */
    public int f543t;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView$a.class */
    public class View$OnClickListenerC0152a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3295a f544a;

        public View$OnClickListenerC0152a(ActionBarContextView actionBarContextView, AbstractC3295a abstractC3295a) {
            this.f544a = abstractC3295a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f544a.mo2422c();
        }
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C3681R.attr.actionModeStyle);
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10217d, C3681R.attr.actionModeStyle, 0);
        Drawable drawable = (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C2788a.m3015b(context, resourceId);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(this, drawable);
        this.f540q = obtainStyledAttributes.getResourceId(5, 0);
        this.f541r = obtainStyledAttributes.getResourceId(4, 0);
        this.f811e = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f543t = obtainStyledAttributes.getResourceId(2, C3681R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: f */
    public void m8670f(AbstractC3295a abstractC3295a) {
        View view = this.f534k;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f543t, (ViewGroup) this, false);
            this.f534k = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f534k);
        }
        View findViewById = this.f534k.findViewById(C3681R.C3684id.action_mode_close_button);
        this.f535l = findViewById;
        findViewById.setOnClickListener(new View$OnClickListenerC0152a(this, abstractC3295a));
        C0136e c0136e = (C0136e) abstractC3295a.mo2420e();
        C0202c c0202c = this.f810d;
        if (c0202c != null) {
            c0202c.m8574b();
        }
        C0202c c0202c2 = new C0202c(getContext());
        this.f810d = c0202c2;
        c0202c2.f846m = true;
        c0202c2.f847n = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0136e.m8713b(this.f810d, this.f808b);
        C0202c c0202c3 = this.f810d;
        AbstractC0146j abstractC0146j = c0202c3.f374h;
        if (abstractC0146j == null) {
            AbstractC0146j abstractC0146j2 = (AbstractC0146j) c0202c3.f370d.inflate(c0202c3.f372f, (ViewGroup) this, false);
            c0202c3.f374h = abstractC0146j2;
            abstractC0146j2.mo4551b(c0202c3.f369c);
            c0202c3.mo711g(true);
        }
        AbstractC0146j abstractC0146j3 = c0202c3.f374h;
        if (abstractC0146j != abstractC0146j3) {
            ((ActionMenuView) abstractC0146j3).setPresenter(c0202c3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) abstractC0146j3;
        this.f809c = actionMenuView;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(actionMenuView, null);
        addView(this.f809c, layoutParams);
    }

    /* renamed from: g */
    public final void m8669g() {
        if (this.f537n == null) {
            LayoutInflater.from(getContext()).inflate(C3681R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f537n = linearLayout;
            this.f538o = (TextView) linearLayout.findViewById(C3681R.C3684id.action_bar_title);
            this.f539p = (TextView) this.f537n.findViewById(C3681R.C3684id.action_bar_subtitle);
            if (this.f540q != 0) {
                this.f538o.setTextAppearance(getContext(), this.f540q);
            }
            if (this.f541r != 0) {
                this.f539p.setTextAppearance(getContext(), this.f541r);
            }
        }
        this.f538o.setText(this.f532i);
        this.f539p.setText(this.f533j);
        boolean isEmpty = TextUtils.isEmpty(this.f532i);
        boolean z = !TextUtils.isEmpty(this.f533j);
        this.f539p.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f537n;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f537n.getParent() == null) {
            addView(this.f537n);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0194a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbstractC0194a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f533j;
    }

    public CharSequence getTitle() {
        return this.f532i;
    }

    /* renamed from: h */
    public void m8668h() {
        removeAllViews();
        this.f536m = null;
        this.f809c = null;
        this.f810d = null;
        View view = this.f535l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0202c c0202c = this.f810d;
        if (c0202c != null) {
            c0202c.m8572m();
            this.f810d.m8571n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m8493a = C0236h1.m8493a(this);
        int paddingRight = m8493a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f534k;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f534k.getLayoutParams();
                int i6 = m8493a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = m8493a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int i8 = m8493a ? paddingRight - i6 : paddingRight + i6;
                int m8589d = i8 + m8589d(this.f534k, i8, paddingTop, paddingTop2, m8493a);
                i5 = m8493a ? m8589d - i7 : m8589d + i7;
            }
        }
        int i9 = i5;
        LinearLayout linearLayout = this.f537n;
        int i10 = i9;
        if (linearLayout != null) {
            i10 = i9;
            if (this.f536m == null) {
                i10 = i9;
                if (linearLayout.getVisibility() != 8) {
                    i10 = i9 + m8589d(this.f537n, i9, paddingTop, paddingTop2, m8493a);
                }
            }
        }
        View view2 = this.f536m;
        if (view2 != null) {
            m8589d(view2, i10, paddingTop, paddingTop2, m8493a);
        }
        int paddingLeft = m8493a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f809c;
        if (actionMenuView != null) {
            m8589d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !m8493a);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        } else {
            int size = View.MeasureSpec.getSize(i);
            int i3 = this.f811e;
            if (i3 <= 0) {
                i3 = View.MeasureSpec.getSize(i2);
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i4 = i3 - paddingBottom;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            View view = this.f534k;
            int i5 = paddingLeft;
            if (view != null) {
                int m8590c = m8590c(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f534k.getLayoutParams();
                i5 = m8590c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f809c;
            int i6 = i5;
            if (actionMenuView != null) {
                i6 = i5;
                if (actionMenuView.getParent() == this) {
                    i6 = m8590c(this.f809c, i5, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f537n;
            int i7 = i6;
            if (linearLayout != null) {
                i7 = i6;
                if (this.f536m == null) {
                    if (this.f542s) {
                        this.f537n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f537n.getMeasuredWidth();
                        boolean z = measuredWidth <= i6;
                        i7 = i6;
                        if (z) {
                            i7 = i6 - measuredWidth;
                        }
                        this.f537n.setVisibility(z ? 0 : 8);
                    } else {
                        i7 = m8590c(linearLayout, i6, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f536m;
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
                this.f536m.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i13, i12));
            }
            if (this.f811e > 0) {
                setMeasuredDimension(size, i3);
                return;
            }
            int childCount = getChildCount();
            int i14 = 0;
            int i15 = 0;
            while (i15 < childCount) {
                int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingBottom;
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

    @Override // androidx.appcompat.widget.AbstractC0194a
    public void setContentHeight(int i) {
        this.f811e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f536m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f536m = view;
        if (view != null && (linearLayout = this.f537n) != null) {
            removeView(linearLayout);
            this.f537n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f533j = charSequence;
        m8669g();
    }

    public void setTitle(CharSequence charSequence) {
        this.f532i = charSequence;
        m8669g();
        C3589v.m2102v(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f542s) {
            requestLayout();
        }
        this.f542s = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0194a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
