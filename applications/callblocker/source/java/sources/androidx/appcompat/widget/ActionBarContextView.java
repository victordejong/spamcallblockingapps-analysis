package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.view.menu.C0199g;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0607y;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0278a {

    /* renamed from: g */
    private CharSequence f896g;

    /* renamed from: h */
    private CharSequence f897h;

    /* renamed from: i */
    private View f898i;

    /* renamed from: j */
    private View f899j;

    /* renamed from: k */
    private LinearLayout f900k;

    /* renamed from: l */
    private TextView f901l;

    /* renamed from: m */
    private TextView f902m;

    /* renamed from: n */
    private int f903n;

    /* renamed from: o */
    private int f904o;

    /* renamed from: p */
    private boolean f905p;

    /* renamed from: q */
    private int f906q;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.ActionMode, i, 0);
        C0595u.m20350a(this, m21433a.m21440a(C0083a.C0093j.ActionMode_background));
        this.f903n = m21433a.m21420g(C0083a.C0093j.ActionMode_titleTextStyle, 0);
        this.f904o = m21433a.m21420g(C0083a.C0093j.ActionMode_subtitleTextStyle, 0);
        this.f1193e = m21433a.m21422f(C0083a.C0093j.ActionMode_height, 0);
        this.f906q = m21433a.m21420g(C0083a.C0093j.ActionMode_closeItemLayout, C0083a.C0090g.abc_action_mode_close_item_material);
        m21433a.m21441a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c7, code lost:
        if (r7 != false) goto L22;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21773e() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.m21773e():void");
    }

    @Override // androidx.appcompat.widget.AbstractC0278a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C0607y mo21567a(int i, long j) {
        return super.mo21567a(i, j);
    }

    /* renamed from: a */
    public void m21777a(final AbstractC0172b abstractC0172b) {
        if (this.f898i == null) {
            this.f898i = LayoutInflater.from(getContext()).inflate(this.f906q, (ViewGroup) this, false);
            addView(this.f898i);
        } else if (this.f898i.getParent() == null) {
            addView(this.f898i);
        }
        this.f898i.findViewById(C0083a.C0089f.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                abstractC0172b.mo21971c();
            }
        });
        C0199g c0199g = (C0199g) abstractC0172b.mo21974b();
        if (this.f1192d != null) {
            this.f1192d.m21365h();
        }
        this.f1192d = new C0330c(getContext());
        this.f1192d.m21374b(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0199g.m21883a(this.f1192d, this.f1190b);
        this.f1191c = (ActionMenuView) this.f1192d.mo21381a(this);
        C0595u.m20350a(this.f1191c, (Drawable) null);
        addView(this.f1191c, layoutParams);
    }

    @Override // androidx.appcompat.widget.AbstractC0278a
    /* renamed from: a */
    public boolean mo21569a() {
        return this.f1192d != null ? this.f1192d.m21369e() : false;
    }

    /* renamed from: b */
    public void m21776b() {
        if (this.f898i == null) {
            m21775c();
        }
    }

    /* renamed from: c */
    public void m21775c() {
        removeAllViews();
        this.f899j = null;
        this.f1191c = null;
    }

    /* renamed from: d */
    public boolean m21774d() {
        return this.f905p;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0278a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbstractC0278a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f897h;
    }

    public CharSequence getTitle() {
        return this.f896g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1192d != null) {
            this.f1192d.m21366g();
            this.f1192d.m21364i();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0278a, android.view.View
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
        accessibilityEvent.setContentDescription(this.f896g);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean m21389a = C0327av.m21389a(this);
        int paddingRight = m21389a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (this.f898i == null || this.f898i.getVisibility() == 8) {
            i5 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f898i.getLayoutParams();
            int i6 = m21389a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = m21389a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a = m21568a(paddingRight, i6, m21389a);
            i5 = m21568a(m21565a(this.f898i, a, paddingTop, paddingTop2, m21389a) + a, i7, m21389a);
        }
        int i8 = i5;
        if (this.f900k != null) {
            i8 = i5;
            if (this.f899j == null) {
                i8 = i5;
                if (this.f900k.getVisibility() != 8) {
                    i8 = i5 + m21565a(this.f900k, i5, paddingTop, paddingTop2, m21389a);
                }
            }
        }
        if (this.f899j != null) {
            m21565a(this.f899j, i8, paddingTop, paddingTop2, m21389a);
        }
        int paddingLeft = m21389a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f1191c != null) {
            m21565a(this.f1191c, paddingLeft, paddingTop, paddingTop2, !m21389a);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f1193e > 0 ? this.f1193e : View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i3 = size2 - paddingTop;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, RecyclerView.UNDEFINED_DURATION);
        int i4 = paddingLeft;
        if (this.f898i != null) {
            int a = m21566a(this.f898i, paddingLeft, makeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f898i.getLayoutParams();
            i4 = a - (marginLayoutParams.rightMargin + marginLayoutParams.leftMargin);
        }
        int i5 = i4;
        if (this.f1191c != null) {
            i5 = i4;
            if (this.f1191c.getParent() == this) {
                i5 = m21566a(this.f1191c, i4, makeMeasureSpec, 0);
            }
        }
        int i6 = i5;
        if (this.f900k != null) {
            i6 = i5;
            if (this.f899j == null) {
                if (this.f905p) {
                    this.f900k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    int measuredWidth = this.f900k.getMeasuredWidth();
                    boolean z = measuredWidth <= i5;
                    i6 = i5;
                    if (z) {
                        i6 = i5 - measuredWidth;
                    }
                    this.f900k.setVisibility(z ? 0 : 8);
                } else {
                    i6 = m21566a(this.f900k, i5, makeMeasureSpec, 0);
                }
            }
        }
        if (this.f899j != null) {
            ViewGroup.LayoutParams layoutParams = this.f899j.getLayoutParams();
            int i7 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            int i8 = i6;
            if (layoutParams.width >= 0) {
                i8 = Math.min(layoutParams.width, i6);
            }
            this.f899j.measure(View.MeasureSpec.makeMeasureSpec(i8, i7), View.MeasureSpec.makeMeasureSpec(layoutParams.height >= 0 ? Math.min(layoutParams.height, i3) : i3, layoutParams.height != -2 ? 1073741824 : Integer.MIN_VALUE));
        }
        if (this.f1193e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // androidx.appcompat.widget.AbstractC0278a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbstractC0278a
    public void setContentHeight(int i) {
        this.f1193e = i;
    }

    public void setCustomView(View view) {
        if (this.f899j != null) {
            removeView(this.f899j);
        }
        this.f899j = view;
        if (view != null && this.f900k != null) {
            removeView(this.f900k);
            this.f900k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f897h = charSequence;
        m21773e();
    }

    public void setTitle(CharSequence charSequence) {
        this.f896g = charSequence;
        m21773e();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f905p) {
            requestLayout();
        }
        this.f905p = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0278a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
