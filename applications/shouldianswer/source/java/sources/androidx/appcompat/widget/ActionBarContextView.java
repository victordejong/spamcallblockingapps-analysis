package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.view.menu.C0182g;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.customview.p026a.AbstractC0610a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0266a {

    /* renamed from: g */
    private CharSequence f815g;

    /* renamed from: h */
    private CharSequence f816h;

    /* renamed from: i */
    private View f817i;

    /* renamed from: j */
    private View f818j;

    /* renamed from: k */
    private LinearLayout f819k;

    /* renamed from: l */
    private TextView f820l;

    /* renamed from: m */
    private TextView f821m;

    /* renamed from: n */
    private int f822n;

    /* renamed from: o */
    private int f823o;

    /* renamed from: p */
    private boolean f824p;

    /* renamed from: q */
    private int f825q;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0311as m7156a = C0311as.m7156a(context, attributeSet, C0051a.C0061j.ActionMode, i, 0);
        C0552u.m6272a(this, m7156a.m7163a(C0051a.C0061j.ActionMode_background));
        this.f822n = m7156a.m7143g(C0051a.C0061j.ActionMode_titleTextStyle, 0);
        this.f823o = m7156a.m7143g(C0051a.C0061j.ActionMode_subtitleTextStyle, 0);
        this.f1114e = m7156a.m7145f(C0051a.C0061j.ActionMode_height, 0);
        this.f825q = m7156a.m7143g(C0051a.C0061j.ActionMode_closeItemLayout, C0051a.C0058g.abc_action_mode_close_item_material);
        m7156a.m7164a();
    }

    /* renamed from: e */
    private void m7502e() {
        if (this.f819k == null) {
            LayoutInflater.from(getContext()).inflate(C0051a.C0058g.abc_action_bar_title_item, this);
            this.f819k = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f820l = (TextView) this.f819k.findViewById(C0051a.C0057f.action_bar_title);
            this.f821m = (TextView) this.f819k.findViewById(C0051a.C0057f.action_bar_subtitle);
            if (this.f822n != 0) {
                this.f820l.setTextAppearance(getContext(), this.f822n);
            }
            if (this.f823o != 0) {
                this.f821m.setTextAppearance(getContext(), this.f823o);
            }
        }
        this.f820l.setText(this.f815g);
        this.f821m.setText(this.f816h);
        boolean isEmpty = TextUtils.isEmpty(this.f815g);
        boolean z = !TextUtils.isEmpty(this.f816h);
        this.f821m.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = this.f819k;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout.setVisibility(i);
        if (this.f819k.getParent() == null) {
            addView(this.f819k);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0266a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C0564y mo7312a(int i, long j) {
        return super.mo7312a(i, j);
    }

    /* renamed from: a */
    public void m7506a(final AbstractC0155b abstractC0155b) {
        View view = this.f817i;
        if (view == null) {
            this.f817i = LayoutInflater.from(getContext()).inflate(this.f825q, (ViewGroup) this, false);
            addView(this.f817i);
        } else if (view.getParent() == null) {
            addView(this.f817i);
        }
        this.f817i.findViewById(C0051a.C0057f.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                abstractC0155b.mo7640c();
            }
        });
        C0182g c0182g = (C0182g) abstractC0155b.mo7643b();
        if (this.f1113d != null) {
            this.f1113d.m7464e();
        }
        this.f1113d = new ActionMenuPresenter(getContext());
        this.f1113d.m7472a(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0182g.addMenuPresenter(this.f1113d, this.f1111b);
        this.f1112c = (ActionMenuView) this.f1113d.mo7478a(this);
        C0552u.m6272a(this.f1112c, (Drawable) null);
        addView(this.f1112c, layoutParams);
    }

    @Override // androidx.appcompat.widget.AbstractC0266a
    /* renamed from: a */
    public boolean mo7314a() {
        if (this.f1113d != null) {
            return this.f1113d.m7468c();
        }
        return false;
    }

    /* renamed from: b */
    public void m7505b() {
        if (this.f817i == null) {
            m7504c();
        }
    }

    /* renamed from: c */
    public void m7504c() {
        removeAllViews();
        this.f818j = null;
        this.f1112c = null;
    }

    /* renamed from: d */
    public boolean m7503d() {
        return this.f824p;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0266a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbstractC0266a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f816h;
    }

    public CharSequence getTitle() {
        return this.f815g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1113d != null) {
            this.f1113d.m7466d();
            this.f1113d.m7462f();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0266a, android.view.View
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
        accessibilityEvent.setContentDescription(this.f815g);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean m7115a = C0321ay.m7115a(this);
        int paddingRight = m7115a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f817i;
        if (view == null || view.getVisibility() == 8) {
            i5 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f817i.getLayoutParams();
            int i6 = m7115a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = m7115a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a = m7313a(paddingRight, i6, m7115a);
            i5 = m7313a(a + m7310a(this.f817i, a, paddingTop, paddingTop2, m7115a), i7, m7115a);
        }
        LinearLayout linearLayout = this.f819k;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f818j == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m7310a(this.f819k, i5, paddingTop, paddingTop2, m7115a);
                }
            }
        }
        View view2 = this.f818j;
        if (view2 != null) {
            m7310a(view2, i8, paddingTop, paddingTop2, m7115a);
        }
        int paddingLeft = m7115a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f1112c != null) {
            m7310a(this.f1112c, paddingLeft, paddingTop, paddingTop2, !m7115a);
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
            int size2 = this.f1114e > 0 ? this.f1114e : View.MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i3 = size2 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, AbstractC0610a.INVALID_ID);
            View view = this.f817i;
            int i4 = paddingLeft;
            if (view != null) {
                int a = m7311a(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f817i.getLayoutParams();
                i4 = a - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            int i5 = i4;
            if (this.f1112c != null) {
                i5 = i4;
                if (this.f1112c.getParent() == this) {
                    i5 = m7311a(this.f1112c, i4, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f819k;
            int i6 = i5;
            if (linearLayout != null) {
                i6 = i5;
                if (this.f818j == null) {
                    if (this.f824p) {
                        this.f819k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f819k.getMeasuredWidth();
                        boolean z = measuredWidth <= i5;
                        i6 = i5;
                        if (z) {
                            i6 = i5 - measuredWidth;
                        }
                        this.f819k.setVisibility(z ? 0 : 8);
                    } else {
                        i6 = m7311a(linearLayout, i5, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f818j;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i7 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i8 = i6;
                if (layoutParams.width >= 0) {
                    i8 = Math.min(layoutParams.width, i6);
                }
                int i9 = layoutParams.height != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i10 = i3;
                if (layoutParams.height >= 0) {
                    i10 = Math.min(layoutParams.height, i3);
                }
                this.f818j.measure(View.MeasureSpec.makeMeasureSpec(i8, i7), View.MeasureSpec.makeMeasureSpec(i10, i9));
            }
            if (this.f1114e > 0) {
                setMeasuredDimension(size, size2);
                return;
            }
            int childCount = getChildCount();
            int i11 = 0;
            int i12 = 0;
            while (i12 < childCount) {
                int measuredHeight = getChildAt(i12).getMeasuredHeight() + paddingTop;
                int i13 = i11;
                if (measuredHeight > i11) {
                    i13 = measuredHeight;
                }
                i12++;
                i11 = i13;
            }
            setMeasuredDimension(size, i11);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0266a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbstractC0266a
    public void setContentHeight(int i) {
        this.f1114e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f818j;
        if (view2 != null) {
            removeView(view2);
        }
        this.f818j = view;
        if (view != null && (linearLayout = this.f819k) != null) {
            removeView(linearLayout);
            this.f819k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f816h = charSequence;
        m7502e();
    }

    public void setTitle(CharSequence charSequence) {
        this.f815g = charSequence;
        m7502e();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f824p) {
            requestLayout();
        }
        this.f824p = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0266a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
