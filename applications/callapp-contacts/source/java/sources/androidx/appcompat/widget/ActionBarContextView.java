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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.menu.C0268g;
import androidx.core.view.C0926v;
import androidx.core.view.C0940y;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0367a {

    /* renamed from: g */
    public CharSequence f1006g;

    /* renamed from: h */
    public CharSequence f1007h;

    /* renamed from: i */
    public boolean f1008i;

    /* renamed from: j */
    private View f1009j;

    /* renamed from: k */
    private View f1010k;

    /* renamed from: l */
    private LinearLayout f1011l;

    /* renamed from: m */
    private TextView f1012m;

    /* renamed from: n */
    private TextView f1013n;

    /* renamed from: o */
    private int f1014o;

    /* renamed from: p */
    private int f1015p;

    /* renamed from: q */
    private int f1016q;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.ActionMode, i, 0);
        C0926v.m44128a(this, m45804a.m45810a(C0142a.C0152j.ActionMode_background));
        this.f1014o = m45804a.m45792g(C0142a.C0152j.ActionMode_titleTextStyle, 0);
        this.f1015p = m45804a.m45792g(C0142a.C0152j.ActionMode_subtitleTextStyle, 0);
        this.f1483e = m45804a.m45794f(C0142a.C0152j.ActionMode_height, 0);
        this.f1016q = m45804a.m45792g(C0142a.C0152j.ActionMode_closeItemLayout, C0142a.C0149g.abc_action_mode_close_item_material);
        m45804a.f1491a.recycle();
    }

    /* renamed from: d */
    private void m46028d() {
        if (this.f1011l == null) {
            LayoutInflater.from(getContext()).inflate(C0142a.C0149g.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1011l = linearLayout;
            this.f1012m = (TextView) linearLayout.findViewById(C0142a.C0148f.action_bar_title);
            this.f1013n = (TextView) this.f1011l.findViewById(C0142a.C0148f.action_bar_subtitle);
            if (this.f1014o != 0) {
                this.f1012m.setTextAppearance(getContext(), this.f1014o);
            }
            if (this.f1015p != 0) {
                this.f1013n.setTextAppearance(getContext(), this.f1015p);
            }
        }
        this.f1012m.setText(this.f1006g);
        this.f1013n.setText(this.f1007h);
        boolean isEmpty = TextUtils.isEmpty(this.f1006g);
        boolean z = !TextUtils.isEmpty(this.f1007h);
        this.f1013n.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f1011l;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f1011l.getParent() == null) {
            addView(this.f1011l);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0367a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C0940y mo45816a(int i, long j) {
        return super.mo45816a(i, j);
    }

    /* renamed from: a */
    public final void m46031a(final AbstractC0241b abstractC0241b) {
        View view = this.f1009j;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f1016q, (ViewGroup) this, false);
            this.f1009j = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f1009j);
        }
        this.f1009j.findViewById(C0142a.C0148f.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                abstractC0241b.mo46158c();
            }
        });
        C0268g c0268g = (C0268g) abstractC0241b.mo46161b();
        if (this.f1482d != null) {
            this.f1482d.m46007h();
        }
        this.f1482d = new ActionMenuPresenter(getContext());
        this.f1482d.m46010d();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0268g.m46099a(this.f1482d, this.f1480b);
        this.f1481c = (ActionMenuView) this.f1482d.mo46017a(this);
        C0926v.m44128a(this.f1481c, (Drawable) null);
        addView(this.f1481c, layoutParams);
    }

    @Override // androidx.appcompat.widget.AbstractC0367a
    /* renamed from: a */
    public final boolean mo45818a() {
        if (this.f1482d != null) {
            return this.f1482d.m46009e();
        }
        return false;
    }

    /* renamed from: b */
    public final void m46030b() {
        if (this.f1009j == null) {
            m46029c();
        }
    }

    /* renamed from: c */
    public final void m46029c() {
        removeAllViews();
        this.f1010k = null;
        this.f1481c = null;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1482d != null) {
            this.f1482d.m46008g();
            this.f1482d.m46006i();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0367a, android.view.View
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
        accessibilityEvent.setContentDescription(this.f1006g);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m45770a = C0380ah.m45770a(this);
        int paddingRight = m45770a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1009j;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1009j.getLayoutParams();
                int i6 = m45770a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = m45770a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int a = m45817a(paddingRight, i6, m45770a);
                i5 = m45817a(a + m45814a(this.f1009j, a, paddingTop, paddingTop2, m45770a), i7, m45770a);
            }
        }
        LinearLayout linearLayout = this.f1011l;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f1010k == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m45814a(this.f1011l, i5, paddingTop, paddingTop2, m45770a);
                }
            }
        }
        View view2 = this.f1010k;
        if (view2 != null) {
            m45814a(view2, i8, paddingTop, paddingTop2, m45770a);
        }
        int paddingLeft = m45770a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f1481c != null) {
            m45814a(this.f1481c, paddingLeft, paddingTop, paddingTop2, !m45770a);
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
            int size2 = this.f1483e > 0 ? this.f1483e : View.MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i3 = size2 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            View view = this.f1009j;
            int i4 = paddingLeft;
            if (view != null) {
                int a = m45815a(view, paddingLeft, makeMeasureSpec);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1009j.getLayoutParams();
                i4 = a - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            int i5 = i4;
            if (this.f1481c != null) {
                i5 = i4;
                if (this.f1481c.getParent() == this) {
                    i5 = m45815a(this.f1481c, i4, makeMeasureSpec);
                }
            }
            LinearLayout linearLayout = this.f1011l;
            int i6 = i5;
            if (linearLayout != null) {
                i6 = i5;
                if (this.f1010k == null) {
                    if (this.f1008i) {
                        this.f1011l.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f1011l.getMeasuredWidth();
                        boolean z = measuredWidth <= i5;
                        i6 = i5;
                        if (z) {
                            i6 = i5 - measuredWidth;
                        }
                        this.f1011l.setVisibility(z ? 0 : 8);
                    } else {
                        i6 = m45815a(linearLayout, i5, makeMeasureSpec);
                    }
                }
            }
            View view2 = this.f1010k;
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
                this.f1010k.measure(View.MeasureSpec.makeMeasureSpec(i8, i7), View.MeasureSpec.makeMeasureSpec(i10, i9));
            }
            if (this.f1483e > 0) {
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

    @Override // androidx.appcompat.widget.AbstractC0367a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbstractC0367a
    public void setContentHeight(int i) {
        this.f1483e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1010k;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1010k = view;
        if (view != null && (linearLayout = this.f1011l) != null) {
            removeView(linearLayout);
            this.f1011l = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1007h = charSequence;
        m46028d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1006g = charSequence;
        m46028d();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f1008i) {
            requestLayout();
        }
        this.f1008i = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0367a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
