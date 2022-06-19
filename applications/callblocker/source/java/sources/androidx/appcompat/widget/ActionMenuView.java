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
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0199g.AbstractC0201b, AbstractC0216n {

    /* renamed from: a */
    C0199g.AbstractC0200a f940a;

    /* renamed from: b */
    AbstractC0235e f941b;

    /* renamed from: c */
    private C0199g f942c;

    /* renamed from: d */
    private Context f943d;

    /* renamed from: e */
    private int f944e;

    /* renamed from: f */
    private boolean f945f;

    /* renamed from: g */
    private C0330c f946g;

    /* renamed from: h */
    private AbstractC0214m.AbstractC0215a f947h;

    /* renamed from: i */
    private boolean f948i;

    /* renamed from: j */
    private int f949j;

    /* renamed from: k */
    private int f950k;

    /* renamed from: l */
    private int f951l;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0231a {
        /* renamed from: c */
        boolean mo21360c();

        /* renamed from: d */
        boolean mo21359d();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0232b implements AbstractC0214m.AbstractC0215a {
        C0232b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public void mo21353a(C0199g c0199g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public boolean mo21354a(C0199g c0199g) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public static class C0233c extends LinearLayoutCompat.C0250a {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f952a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f953b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f954c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f955d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f956e;

        /* renamed from: f */
        boolean f957f;

        public C0233c(int i, int i2) {
            super(i, i2);
            this.f952a = false;
        }

        public C0233c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0233c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0233c(C0233c c0233c) {
            super(c0233c);
            this.f952a = c0233c.f952a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public class C0234d implements C0199g.AbstractC0200a {
        C0234d() {
            ActionMenuView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public void mo3619a(C0199g c0199g) {
            if (ActionMenuView.this.f940a != null) {
                ActionMenuView.this.f940a.mo3619a(c0199g);
            }
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
            return ActionMenuView.this.f941b != null && ActionMenuView.this.f941b.mo21577a(menuItem);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$e.class */
    public interface AbstractC0235e {
        /* renamed from: a */
        boolean mo21577a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f950k = (int) (56.0f * f);
        this.f951l = (int) (f * 4.0f);
        this.f943d = context;
        this.f944e = 0;
    }

    /* renamed from: a */
    public static int m21750a(View view, int i, int i2, int i3, int i4) {
        int i5;
        C0233c c0233c = (C0233c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.m21937b();
        if (i2 <= 0 || (z && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i * i2, RecyclerView.UNDEFINED_DURATION), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            int i7 = i6;
            if (measuredWidth % i != 0) {
                i7 = i6 + 1;
            }
            i5 = i7;
            if (z) {
                i5 = i7;
                if (i7 < 2) {
                    i5 = 2;
                }
            }
        }
        boolean z2 = false;
        if (!c0233c.f952a) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        c0233c.f955d = z2;
        c0233c.f953b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* JADX WARN: Type inference failed for: r0v186, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* JADX WARN: Type inference failed for: r0v234, types: [long] */
    /* renamed from: c */
    private void m21744c(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i4 = size - (paddingLeft + paddingRight);
        int i5 = i4 / this.f950k;
        int i6 = this.f950k;
        if (i5 == 0) {
            setMeasuredDimension(i4, 0);
            return;
        }
        int i7 = this.f950k + ((i4 % i6) / i5);
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z3 = false;
        char c = 0;
        int childCount = getChildCount();
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i11++;
                if (z4) {
                    childAt.setPadding(this.f951l, 0, this.f951l, 0);
                }
                C0233c c0233c = (C0233c) childAt.getLayoutParams();
                c0233c.f957f = false;
                c0233c.f954c = 0;
                c0233c.f953b = 0;
                c0233c.f955d = false;
                c0233c.leftMargin = 0;
                c0233c.rightMargin = 0;
                c0233c.f956e = z4 && ((ActionMenuItemView) childAt).m21937b();
                int m21750a = m21750a(childAt, i7, c0233c.f952a ? 1 : i5, childMeasureSpec, paddingTop);
                i9 = Math.max(i9, m21750a);
                int i13 = c0233c.f955d ? i10 + 1 : i10;
                if (c0233c.f952a) {
                    z3 = true;
                }
                i5 -= m21750a;
                i8 = Math.max(i8, childAt.getMeasuredHeight());
                if (m21750a == 1) {
                    c = (1 << i12) | c;
                    i10 = i13;
                } else {
                    i10 = i13;
                }
            }
            i12++;
            i11 = i11;
        }
        boolean z5 = z3 && i11 == 2;
        boolean z6 = false;
        while (true) {
            z = z6;
            i3 = i5;
            if (i10 <= 0 || i3 <= 0) {
                break;
            }
            int i14 = Integer.MAX_VALUE;
            char c2 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < childCount; i16++) {
                C0233c c0233c2 = (C0233c) getChildAt(i16).getLayoutParams();
                if (c0233c2.f955d) {
                    if (c0233c2.f953b < i14) {
                        i14 = c0233c2.f953b;
                        c2 = 1 << i16;
                        i15 = 1;
                    } else if (c0233c2.f953b == i14) {
                        c2 |= 1 << i16;
                        i15++;
                    }
                }
            }
            c |= c2;
            if (i15 > i3) {
                break;
            }
            i5 = i3;
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt2 = getChildAt(i17);
                C0233c c0233c3 = (C0233c) childAt2.getLayoutParams();
                if (((1 << i17) & c2) != 0) {
                    if (z5 && c0233c3.f956e && i5 == 1) {
                        childAt2.setPadding(this.f951l + i7, 0, this.f951l, 0);
                    }
                    c0233c3.f953b++;
                    c0233c3.f957f = true;
                    i5--;
                } else if (c0233c3.f953b == i14 + 1) {
                    c |= 1 << i17;
                }
            }
            z6 = true;
        }
        boolean z7 = !z3 && i11 == 1;
        if (i3 > 0 && c != 0 && (i3 < i11 - 1 || z7 || i9 > 1)) {
            float bitCount = Long.bitCount(c);
            float f = bitCount;
            if (!z7) {
                float f2 = bitCount;
                if ((1 & c) != 0) {
                    f2 = bitCount;
                    if (!((C0233c) getChildAt(0).getLayoutParams()).f956e) {
                        f2 = bitCount - 0.5f;
                    }
                }
                f = f2;
                if (((1 << (childCount - 1)) & c) != 0) {
                    f = f2;
                    if (!((C0233c) getChildAt(childCount - 1).getLayoutParams()).f956e) {
                        f = f2 - 0.5f;
                    }
                }
            }
            int i18 = f > 0.0f ? (int) ((i3 * i7) / f) : 0;
            boolean z8 = z;
            int i19 = 0;
            while (true) {
                z2 = z8;
                if (i19 >= childCount) {
                    break;
                }
                if (((1 << i19) & c) != 0) {
                    View childAt3 = getChildAt(i19);
                    C0233c c0233c4 = (C0233c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0233c4.f954c = i18;
                        c0233c4.f957f = true;
                        if (i19 == 0 && !c0233c4.f956e) {
                            c0233c4.leftMargin = (-i18) / 2;
                        }
                        z8 = true;
                    } else if (c0233c4.f952a) {
                        c0233c4.f954c = i18;
                        c0233c4.f957f = true;
                        c0233c4.rightMargin = (-i18) / 2;
                        z8 = true;
                    } else {
                        if (i19 != 0) {
                            c0233c4.leftMargin = i18 / 2;
                        }
                        if (i19 != childCount - 1) {
                            c0233c4.rightMargin = i18 / 2;
                        }
                    }
                }
                i19++;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt4 = getChildAt(i20);
                C0233c c0233c5 = (C0233c) childAt4.getLayoutParams();
                if (c0233c5.f957f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec(c0233c5.f954c + (c0233c5.f953b * i7), 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode == 1073741824) {
            i8 = size2;
        }
        setMeasuredDimension(i4, i8);
    }

    /* renamed from: a */
    public C0233c generateLayoutParams(AttributeSet attributeSet) {
        return new C0233c(getContext(), attributeSet);
    }

    /* renamed from: a */
    public C0233c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        C0233c mo21672j;
        if (layoutParams != null) {
            C0233c c0233c = layoutParams instanceof C0233c ? new C0233c((C0233c) layoutParams) : new C0233c(layoutParams);
            mo21672j = c0233c;
            if (c0233c.f1057h <= 0) {
                c0233c.f1057h = 16;
                mo21672j = c0233c;
            }
        } else {
            mo21672j = mo21672j();
        }
        return mo21672j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n
    /* renamed from: a */
    public void mo2905a(C0199g c0199g) {
        this.f942c = c0199g;
    }

    /* renamed from: a */
    public void m21747a(AbstractC0214m.AbstractC0215a abstractC0215a, C0199g.AbstractC0200a abstractC0200a) {
        this.f947h = abstractC0215a;
        this.f940a = abstractC0200a;
    }

    /* renamed from: a */
    public boolean m21753a() {
        return this.f945f;
    }

    /* renamed from: a */
    protected boolean m21752a(int i) {
        boolean z;
        if (i == 0) {
            z = false;
        } else {
            View childAt = getChildAt(i - 1);
            View childAt2 = getChildAt(i);
            z = false;
            if (i < getChildCount()) {
                z = false;
                if (childAt instanceof AbstractC0231a) {
                    z = false | ((AbstractC0231a) childAt).mo21359d();
                }
            }
            if (i > 0 && (childAt2 instanceof AbstractC0231a)) {
                z = ((AbstractC0231a) childAt2).mo21360c() | z;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0201b
    /* renamed from: a */
    public boolean mo21748a(C0203i c0203i) {
        return this.f942c.m21888a(c0203i, 0);
    }

    /* renamed from: b */
    public C0233c mo21672j() {
        C0233c c0233c = new C0233c(-2, -2);
        c0233c.f1057h = 16;
        return c0233c;
    }

    /* renamed from: c */
    public C0233c m21745c() {
        C0233c mo21672j = mo21672j();
        mo21672j.f952a = true;
        return mo21672j;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0233c;
    }

    /* renamed from: d */
    public C0199g m21743d() {
        return this.f942c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* renamed from: e */
    public boolean m21742e() {
        return this.f946g != null && this.f946g.m21369e();
    }

    /* renamed from: f */
    public boolean m21741f() {
        return this.f946g != null && this.f946g.m21366g();
    }

    /* renamed from: g */
    public boolean m21740g() {
        return this.f946g != null && this.f946g.m21363j();
    }

    public Menu getMenu() {
        if (this.f942c == null) {
            Context context = getContext();
            this.f942c = new C0199g(context);
            this.f942c.mo21788a(new C0234d());
            this.f946g = new C0330c(context);
            this.f946g.m21374b(true);
            this.f946g.mo3585a(this.f947h != null ? this.f947h : new C0232b());
            this.f942c.m21883a(this.f946g, this.f943d);
            this.f946g.m21377a(this);
        }
        return this.f942c;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f946g.m21371d();
    }

    public int getPopupTheme() {
        return this.f944e;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: h */
    public boolean m21739h() {
        return this.f946g != null && this.f946g.m21362k();
    }

    /* renamed from: i */
    public void m21738i() {
        if (this.f946g != null) {
            this.f946g.m21365h();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f946g != null) {
            this.f946g.mo3582a(false);
            if (!this.f946g.m21363j()) {
                return;
            }
            this.f946g.m21366g();
            this.f946g.m21369e();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m21738i();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.f948i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = 0;
        int i8 = 0;
        int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
        boolean z2 = false;
        boolean m21389a = C0327av.m21389a(this);
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                C0233c c0233c = (C0233c) childAt.getLayoutParams();
                if (c0233c.f952a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i10 = measuredWidth;
                    if (m21752a(i9)) {
                        i10 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m21389a) {
                        i5 = c0233c.leftMargin + getPaddingLeft();
                        width = i5 + i10;
                    } else {
                        width = (getWidth() - getPaddingRight()) - c0233c.rightMargin;
                        i5 = width - i10;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i11, width, measuredHeight + i11);
                    paddingRight -= i10;
                    z2 = true;
                } else {
                    int measuredWidth2 = childAt.getMeasuredWidth() + c0233c.leftMargin + c0233c.rightMargin;
                    int i12 = i7 + measuredWidth2;
                    int i13 = paddingRight - measuredWidth2;
                    int i14 = i12;
                    if (m21752a(i9)) {
                        i14 = i12 + dividerWidth;
                    }
                    i8++;
                    i7 = i14;
                    paddingRight = i13;
                }
            }
        }
        if (childCount == 1 && !z2) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = ((i3 - i) / 2) - (measuredWidth3 / 2);
            int i16 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth3 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i8 - (z2 ? 0 : 1);
        int max = Math.max(0, i17 > 0 ? paddingRight / i17 : 0);
        if (m21389a) {
            int width2 = getWidth() - getPaddingRight();
            for (int i18 = 0; i18 < childCount; i18++) {
                View childAt3 = getChildAt(i18);
                C0233c c0233c2 = (C0233c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0233c2.f952a) {
                    int i19 = width2 - c0233c2.rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i20 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i19 - measuredWidth4, i20, i19, measuredHeight3 + i20);
                    width2 = i19 - ((c0233c2.leftMargin + measuredWidth4) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt4 = getChildAt(i21);
            C0233c c0233c3 = (C0233c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0233c3.f952a) {
                int i22 = paddingLeft + c0233c3.leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i23 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i22, i23, i22 + measuredWidth5, measuredHeight4 + i23);
                paddingLeft = c0233c3.rightMargin + measuredWidth5 + max + i22;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = this.f948i;
        this.f948i = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.f948i) {
            this.f949j = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f948i && this.f942c != null && size != this.f949j) {
            this.f949j = size;
            this.f942c.m21873b(true);
        }
        int childCount = getChildCount();
        if (this.f948i && childCount > 0) {
            m21744c(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0233c c0233c = (C0233c) getChildAt(i3).getLayoutParams();
            c0233c.rightMargin = 0;
            c0233c.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f946g.m21372c(z);
    }

    public void setOnMenuItemClickListener(AbstractC0235e abstractC0235e) {
        this.f941b = abstractC0235e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f946g.m21383a(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f945f = z;
    }

    public void setPopupTheme(int i) {
        if (this.f944e != i) {
            this.f944e = i;
            if (i == 0) {
                this.f943d = getContext();
            } else {
                this.f943d = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0330c c0330c) {
        this.f946g = c0330c;
        this.f946g.m21377a(this);
    }
}
