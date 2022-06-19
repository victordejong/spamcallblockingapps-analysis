package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
import p1727n3.p1734b.p1743f.C25558x0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C25469g.AbstractC25471b, AbstractC25485n {

    /* renamed from: A */
    public AbstractC0050e f233A;

    /* renamed from: p */
    public C25469g f234p;

    /* renamed from: q */
    public Context f235q;

    /* renamed from: r */
    public int f236r = 0;

    /* renamed from: s */
    public boolean f237s;

    /* renamed from: t */
    public ActionMenuPresenter f238t;

    /* renamed from: u */
    public AbstractC25483m.AbstractC25484a f239u;

    /* renamed from: v */
    public C25469g.AbstractC25470a f240v;

    /* renamed from: w */
    public boolean f241w;

    /* renamed from: x */
    public int f242x;

    /* renamed from: y */
    public int f243y;

    /* renamed from: z */
    public int f244z;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0046a {
        /* renamed from: b */
        boolean mo43151b();

        /* renamed from: c */
        boolean mo43150c();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0047b implements AbstractC25483m.AbstractC25484a {
        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: a */
        public void mo3413a(C25469g c25469g, boolean z) {
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: b */
        public boolean mo3412b(C25469g c25469g) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public static class C0048c extends LinearLayoutCompat.C0057a {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f245a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f246b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f247c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f248d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f249e;

        /* renamed from: f */
        public boolean f250f;

        public C0048c(int i, int i2) {
            super(i, i2);
            this.f245a = false;
        }

        public C0048c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0048c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0048c(C0048c c0048c) {
            super(c0048c);
            this.f245a = c0048c.f245a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public class C0049d implements C25469g.AbstractC25470a {
        public C0049d() {
            ActionMenuView.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: a */
        public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
            AbstractC0050e abstractC0050e = ActionMenuView.this.f233A;
            boolean z = false;
            if (abstractC0050e != null) {
                Toolbar.AbstractC0082f abstractC0082f = Toolbar.this.f447K;
                z = false;
                if (abstractC0082f != null ? abstractC0082f.onMenuItemClick(menuItem) : false) {
                    z = true;
                }
            }
            return z;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: b */
        public void mo3368b(C25469g c25469g) {
            C25469g.AbstractC25470a abstractC25470a = ActionMenuView.this.f240v;
            if (abstractC25470a != null) {
                abstractC25470a.mo3368b(c25469g);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$e.class */
    public interface AbstractC0050e {
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f243y = (int) (56.0f * f);
        this.f244z = (int) (f * 4.0f);
        this.f235q = context;
    }

    /* renamed from: t */
    public static int m43152t(View view, int i, int i2, int i3, int i4) {
        int i5;
        C0048c c0048c = (C0048c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.f();
        if (i2 <= 0 || (z && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            i5 = i6;
            if (measuredWidth % i != 0) {
                i5 = i6 + 1;
            }
            if (z && i5 < 2) {
                i5 = 2;
            }
        }
        boolean z2 = false;
        if (!c0048c.f245a) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        c0048c.f248d = z2;
        c0048c.f246b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25485n
    /* renamed from: a */
    public void mo3411a(C25469g c25469g) {
        this.f234p = c25469g;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0048c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25471b
    /* renamed from: e */
    public boolean mo3457e(C25473i c25473i) {
        return this.f234p.m3465s(c25473i, null, 0);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0048c(getContext(), attributeSet);
    }

    public Menu getMenu() {
        if (this.f234p == null) {
            Context context = getContext();
            C25469g c25469g = new C25469g(context);
            this.f234p = c25469g;
            c25469g.f71220e = new C0049d();
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f238t = actionMenuPresenter;
            actionMenuPresenter.m = true;
            actionMenuPresenter.n = true;
            C0047b c0047b = this.f239u;
            if (c0047b == null) {
                c0047b = new C0047b();
            }
            actionMenuPresenter.f71182e = c0047b;
            this.f234p.m3482b(actionMenuPresenter, this.f235q);
            ActionMenuPresenter actionMenuPresenter2 = this.f238t;
            actionMenuPresenter2.f71185h = this;
            this.f234p = actionMenuPresenter2.f71180c;
        }
        return this.f234p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        ActionMenuPresenter actionMenuPresenter = this.f238t;
        ActionMenuPresenter$d actionMenuPresenter$d = actionMenuPresenter.j;
        return actionMenuPresenter$d != null ? actionMenuPresenter$d.getDrawable() : actionMenuPresenter.l ? actionMenuPresenter.k : null;
    }

    public int getPopupTheme() {
        return this.f236r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: i */
    public LinearLayoutCompat.C0057a mo43129i(AttributeSet attributeSet) {
        return new C0048c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f238t;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d(false);
            if (!this.f238t.o()) {
                return;
            }
            this.f238t.m();
            this.f238t.p();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f238t;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f241w) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean m3244a = C25558x0.m3244a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0048c c0048c = (C0048c) childAt.getLayoutParams();
                if (c0048c.f245a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (m43153s(i11)) {
                        i12 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m3244a) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) c0048c).leftMargin;
                        i5 = i6 + i12;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0048c).rightMargin;
                        i6 = i5 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i13, i5, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0048c).leftMargin) + ((LinearLayout.LayoutParams) c0048c).rightMargin;
                    m43153s(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i14 = (i8 / 2) - (measuredWidth2 / 2);
            int i15 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i14, i15, measuredWidth2 + i14, measuredHeight2 + i15);
            return;
        }
        int i16 = i10 - (i9 ^ 1);
        int max = Math.max(0, i16 > 0 ? paddingRight / i16 : 0);
        if (m3244a) {
            int width = getWidth() - getPaddingRight();
            int i17 = 0;
            while (i17 < childCount) {
                View childAt3 = getChildAt(i17);
                C0048c c0048c2 = (C0048c) childAt3.getLayoutParams();
                int i18 = width;
                if (childAt3.getVisibility() != 8) {
                    if (c0048c2.f245a) {
                        i18 = width;
                    } else {
                        int i19 = width - ((LinearLayout.LayoutParams) c0048c2).rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i20 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                        i18 = i19 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0048c2).leftMargin) + max);
                    }
                }
                i17++;
                width = i18;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        int i21 = 0;
        while (i21 < childCount) {
            View childAt4 = getChildAt(i21);
            C0048c c0048c3 = (C0048c) childAt4.getLayoutParams();
            int i22 = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                if (c0048c3.f245a) {
                    i22 = paddingLeft;
                } else {
                    int i23 = paddingLeft + ((LinearLayout.LayoutParams) c0048c3).leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i24 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i23, i24, i23 + measuredWidth4, measuredHeight4 + i24);
                    i22 = C22128a.m8642b(measuredWidth4, ((LinearLayout.LayoutParams) c0048c3).rightMargin, max, i23);
                }
            }
            i21++;
            paddingLeft = i22;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0391, code lost:
        if (r27 > 1) goto L113;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v177 */
    /* JADX WARN: Type inference failed for: r0v178 */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v211, types: [long] */
    /* JADX WARN: Type inference failed for: r0v220 */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* JADX WARN: Type inference failed for: r0v234, types: [long] */
    /* JADX WARN: Type inference failed for: r0v281, types: [long] */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.onMeasure(int, int):void");
    }

    /* renamed from: q */
    public C0048c mo43130h() {
        C0048c c0048c = new C0048c(-2, -2);
        ((LinearLayout.LayoutParams) c0048c).gravity = 16;
        return c0048c;
    }

    /* renamed from: r */
    public C0048c mo43128j(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            C0048c c0048c = layoutParams instanceof C0048c ? new C0048c((C0048c) layoutParams) : new C0048c(layoutParams);
            if (((LinearLayout.LayoutParams) c0048c).gravity <= 0) {
                ((LinearLayout.LayoutParams) c0048c).gravity = 16;
            }
            return c0048c;
        }
        return mo43130h();
    }

    /* renamed from: s */
    public boolean m43153s(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0046a) {
                z = false | ((AbstractC0046a) childAt).mo43151b();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0046a) {
                z2 = z | ((AbstractC0046a) childAt2).mo43150c();
            }
        }
        return z2;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f238t.r = z;
    }

    public void setOnMenuItemClickListener(AbstractC0050e abstractC0050e) {
        this.f233A = abstractC0050e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        ActionMenuPresenter actionMenuPresenter = this.f238t;
        ActionMenuPresenter$d actionMenuPresenter$d = actionMenuPresenter.j;
        if (actionMenuPresenter$d != null) {
            actionMenuPresenter$d.setImageDrawable(drawable);
            return;
        }
        actionMenuPresenter.l = true;
        actionMenuPresenter.k = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.f237s = z;
    }

    public void setPopupTheme(int i) {
        if (this.f236r != i) {
            this.f236r = i;
            if (i == 0) {
                this.f235q = getContext();
            } else {
                this.f235q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f238t = actionMenuPresenter;
        actionMenuPresenter.f71185h = this;
        this.f234p = actionMenuPresenter.f71180c;
    }
}
