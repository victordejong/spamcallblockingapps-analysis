package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractC25489a;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC25489a {

    /* renamed from: i */
    public CharSequence f208i;

    /* renamed from: j */
    public CharSequence f209j;

    /* renamed from: k */
    public View f210k;

    /* renamed from: l */
    public View f211l;

    /* renamed from: m */
    public View f212m;

    /* renamed from: n */
    public LinearLayout f213n;

    /* renamed from: o */
    public TextView f214o;

    /* renamed from: p */
    public TextView f215p;

    /* renamed from: q */
    public int f216q;

    /* renamed from: r */
    public int f217r;

    /* renamed from: s */
    public boolean f218s;

    /* renamed from: t */
    public int f219t;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView$a.class */
    public class View$OnClickListenerC0043a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC25450a f220a;

        public View$OnClickListenerC0043a(ActionBarContextView actionBarContextView, AbstractC25450a abstractC25450a) {
            this.f220a = abstractC25450a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f220a.mo3519c();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarContextView(android.content.Context r7, android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r0 = androidx.appcompat.C0032R.attr.actionModeStyle
            r9 = r0
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            r0 = r7
            r1 = r8
            int[] r2 = androidx.appcompat.C0032R.styleable.ActionMode
            r3 = r9
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r8 = r0
            int r0 = androidx.appcompat.C0032R.styleable.ActionMode_background
            r9 = r0
            r0 = r8
            r1 = r9
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L39
            r0 = r8
            r1 = r9
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L39
            r0 = r7
            r1 = r10
            android.graphics.drawable.Drawable r0 = p1727n3.p1734b.p1736b.p1737a.C25440a.m3540a(r0, r1)
            r7 = r0
            goto L3f
        L39:
            r0 = r8
            r1 = r9
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r1)
            r7 = r0
        L3f:
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r11 = r0
            r0 = r6
            r1 = r7
            r0.setBackground(r1)
            r0 = r6
            r1 = r8
            int r2 = androidx.appcompat.C0032R.styleable.ActionMode_titleTextStyle
            r3 = 0
            int r1 = r1.getResourceId(r2, r3)
            r0.f216q = r1
            r0 = r6
            r1 = r8
            int r2 = androidx.appcompat.C0032R.styleable.ActionMode_subtitleTextStyle
            r3 = 0
            int r1 = r1.getResourceId(r2, r3)
            r0.f217r = r1
            r0 = r6
            r1 = r8
            int r2 = androidx.appcompat.C0032R.styleable.ActionMode_height
            r3 = 0
            int r1 = r1.getLayoutDimension(r2, r3)
            r0.f71304e = r1
            r0 = r6
            r1 = r8
            int r2 = androidx.appcompat.C0032R.styleable.ActionMode_closeItemLayout
            int r3 = androidx.appcompat.C0032R.layout.abc_action_mode_close_item_material
            int r1 = r1.getResourceId(r2, r3)
            r0.f219t = r1
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: f */
    public void m43158f(AbstractC25450a abstractC25450a) {
        View view = this.f210k;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f219t, (ViewGroup) this, false);
            this.f210k = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f210k);
        }
        View findViewById = this.f210k.findViewById(C0032R.C0034id.action_mode_close_button);
        this.f211l = findViewById;
        findViewById.setOnClickListener(new View$OnClickListenerC0043a(this, abstractC25450a));
        C25469g c25469g = (C25469g) abstractC25450a.mo3517e();
        ActionMenuPresenter actionMenuPresenter = this.f71303d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f71303d = actionMenuPresenter2;
        actionMenuPresenter2.m = true;
        actionMenuPresenter2.n = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c25469g.m3482b(this.f71303d, this.f71301b);
        ActionMenuPresenter actionMenuPresenter3 = this.f71303d;
        AbstractC25485n abstractC25485n = actionMenuPresenter3.f71185h;
        if (abstractC25485n == null) {
            AbstractC25485n abstractC25485n2 = (AbstractC25485n) actionMenuPresenter3.f71181d.inflate(actionMenuPresenter3.f71183f, (ViewGroup) this, false);
            actionMenuPresenter3.f71185h = abstractC25485n2;
            abstractC25485n2.mo3411a(actionMenuPresenter3.f71180c);
            actionMenuPresenter3.d(true);
        }
        AbstractC25485n abstractC25485n3 = actionMenuPresenter3.f71185h;
        if (abstractC25485n != abstractC25485n3) {
            ((ActionMenuView) abstractC25485n3).setPresenter(actionMenuPresenter3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) abstractC25485n3;
        this.f71302c = actionMenuView;
        AtomicInteger atomicInteger = C26614s.f74505a;
        actionMenuView.setBackground(null);
        addView(this.f71302c, layoutParams);
    }

    /* renamed from: g */
    public final void m43157g() {
        if (this.f213n == null) {
            LayoutInflater.from(getContext()).inflate(C0032R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f213n = linearLayout;
            this.f214o = (TextView) linearLayout.findViewById(C0032R.C0034id.action_bar_title);
            this.f215p = (TextView) this.f213n.findViewById(C0032R.C0034id.action_bar_subtitle);
            if (this.f216q != 0) {
                this.f214o.setTextAppearance(getContext(), this.f216q);
            }
            if (this.f217r != 0) {
                this.f215p.setTextAppearance(getContext(), this.f217r);
            }
        }
        this.f214o.setText(this.f208i);
        this.f215p.setText(this.f209j);
        boolean isEmpty = TextUtils.isEmpty(this.f208i);
        boolean z = !TextUtils.isEmpty(this.f209j);
        this.f215p.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f213n;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f213n.getParent() == null) {
            addView(this.f213n);
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

    @Override // p1727n3.p1734b.p1743f.AbstractC25489a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25489a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f209j;
    }

    public CharSequence getTitle() {
        return this.f208i;
    }

    /* renamed from: h */
    public void m43156h() {
        removeAllViews();
        this.f212m = null;
        this.f71302c = null;
        this.f71303d = null;
        View view = this.f211l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f71303d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m();
            this.f71303d.n();
        }
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
        accessibilityEvent.setContentDescription(this.f208i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m3244a = C25558x0.m3244a(this);
        int paddingRight = m3244a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f210k;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f210k.getLayoutParams();
                int i6 = m3244a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = m3244a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int i8 = m3244a ? paddingRight - i6 : paddingRight + i6;
                int m3406d = i8 + m3406d(this.f210k, i8, paddingTop, paddingTop2, m3244a);
                i5 = m3244a ? m3406d - i7 : m3406d + i7;
            }
        }
        int i9 = i5;
        LinearLayout linearLayout = this.f213n;
        int i10 = i9;
        if (linearLayout != null) {
            i10 = i9;
            if (this.f212m == null) {
                i10 = i9;
                if (linearLayout.getVisibility() != 8) {
                    i10 = i9 + m3406d(this.f213n, i9, paddingTop, paddingTop2, m3244a);
                }
            }
        }
        View view2 = this.f212m;
        if (view2 != null) {
            m3406d(view2, i10, paddingTop, paddingTop2, m3244a);
        }
        int paddingLeft = m3244a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f71302c;
        if (actionMenuView != null) {
            m3406d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !m3244a);
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
            int i3 = this.f71304e;
            if (i3 <= 0) {
                i3 = View.MeasureSpec.getSize(i2);
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i4 = i3 - paddingBottom;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            View view = this.f210k;
            int i5 = paddingLeft;
            if (view != null) {
                int m3407c = m3407c(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f210k.getLayoutParams();
                i5 = m3407c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f71302c;
            int i6 = i5;
            if (actionMenuView != null) {
                i6 = i5;
                if (actionMenuView.getParent() == this) {
                    i6 = m3407c(this.f71302c, i5, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f213n;
            int i7 = i6;
            if (linearLayout != null) {
                i7 = i6;
                if (this.f212m == null) {
                    if (this.f218s) {
                        this.f213n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f213n.getMeasuredWidth();
                        boolean z = measuredWidth <= i6;
                        i7 = i6;
                        if (z) {
                            i7 = i6 - measuredWidth;
                        }
                        this.f213n.setVisibility(z ? 0 : 8);
                    } else {
                        i7 = m3407c(linearLayout, i6, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f212m;
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
                this.f212m.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i13, i12));
            }
            if (this.f71304e > 0) {
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

    @Override // p1727n3.p1734b.p1743f.AbstractC25489a
    public void setContentHeight(int i) {
        this.f71304e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f212m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f212m = view;
        if (view != null && (linearLayout = this.f213n) != null) {
            removeView(linearLayout);
            this.f213n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f209j = charSequence;
        m43157g();
    }

    public void setTitle(CharSequence charSequence) {
        this.f208i = charSequence;
        m43157g();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f218s) {
            requestLayout();
        }
        this.f218s = z;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25489a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
