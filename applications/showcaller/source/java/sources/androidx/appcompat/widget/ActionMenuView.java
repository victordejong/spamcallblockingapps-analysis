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
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0178g.AbstractC0180b, AbstractC0195n {

    /* renamed from: A */
    private int f833A;

    /* renamed from: B */
    private int f834B;

    /* renamed from: C */
    private int f835C;

    /* renamed from: D */
    AbstractC0220d f836D;

    /* renamed from: s */
    private C0178g f837s;

    /* renamed from: t */
    private Context f838t;

    /* renamed from: u */
    private int f839u;

    /* renamed from: v */
    private boolean f840v;

    /* renamed from: w */
    private ActionMenuPresenter f841w;

    /* renamed from: x */
    private AbstractC0193m.AbstractC0194a f842x;

    /* renamed from: y */
    C0178g.AbstractC0179a f843y;

    /* renamed from: z */
    private boolean f844z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f845a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f846b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f847c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f848d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f849e;

        /* renamed from: f */
        boolean f850f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f845a = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f845a = layoutParams.f845a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0217a {
        /* renamed from: a */
        boolean mo35226a();

        /* renamed from: b */
        boolean mo35225b();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0218b implements AbstractC0193m.AbstractC0194a {
        C0218b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: b */
        public void mo35224b(C0178g c0178g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: c */
        public boolean mo35223c(C0178g c0178g) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public class C0219c implements C0178g.AbstractC0179a {
        C0219c() {
            ActionMenuView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: a */
        public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
            AbstractC0220d abstractC0220d = ActionMenuView.this.f836D;
            return abstractC0220d != null && abstractC0220d.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: b */
        public void mo4425b(C0178g c0178g) {
            C0178g.AbstractC0179a abstractC0179a = ActionMenuView.this.f843y;
            if (abstractC0179a != null) {
                abstractC0179a.mo4425b(c0178g);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public interface AbstractC0220d {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f834B = (int) (56.0f * f);
        this.f835C = (int) (f * 4.0f);
        this.f838t = context;
        this.f839u = 0;
    }

    /* renamed from: L */
    public static int m35231L(View view, int i, int i2, int i3, int i4) {
        int i5;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m35453j();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            i5 = i6;
            if (measuredWidth % i != 0) {
                i5 = i6 + 1;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (layoutParams.f845a || !z2) {
            z = false;
        }
        layoutParams.f848d = z;
        layoutParams.f846b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v143 */
    /* JADX WARN: Type inference failed for: r0v144 */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v189 */
    /* JADX WARN: Type inference failed for: r0v200, types: [long] */
    /* JADX WARN: Type inference failed for: r0v203, types: [long] */
    /* JADX WARN: Type inference failed for: r0v248, types: [long] */
    /* renamed from: M */
    private void m35230M(int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        char c;
        char c2;
        int i4;
        int i5;
        int i6;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
        int i7 = size - (paddingLeft + paddingRight);
        int i8 = this.f834B;
        int i9 = i7 / i8;
        if (i9 == 0) {
            setMeasuredDimension(i7, 0);
            return;
        }
        int i10 = i8 + ((i7 % i8) / i9);
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        boolean z4 = false;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        char c3 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                i6 = i15;
            } else {
                boolean z5 = childAt instanceof ActionMenuItemView;
                i13++;
                if (z5) {
                    int i16 = this.f835C;
                    childAt.setPadding(i16, 0, i16, 0);
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f850f = false;
                layoutParams.f847c = 0;
                layoutParams.f846b = 0;
                layoutParams.f848d = false;
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
                layoutParams.f849e = z5 && ((ActionMenuItemView) childAt).m35453j();
                int m35231L = m35231L(childAt, i10, layoutParams.f845a ? 1 : i9, childMeasureSpec, paddingTop);
                i14 = Math.max(i14, m35231L);
                i6 = i15;
                if (layoutParams.f848d) {
                    i6 = i15 + 1;
                }
                if (layoutParams.f845a) {
                    z4 = true;
                }
                i9 -= m35231L;
                i11 = Math.max(i11, childAt.getMeasuredHeight());
                if (m35231L == 1) {
                    c3 |= 1 << i12;
                }
            }
            i12++;
            i15 = i6;
        }
        boolean z6 = false;
        int i17 = i9;
        boolean z7 = z4 && i13 == 2;
        while (i15 > 0 && i17 > 0) {
            int i18 = 0;
            int i19 = 0;
            int i20 = Integer.MAX_VALUE;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i19 >= childCount) {
                    break;
                }
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i19).getLayoutParams();
                if (!layoutParams2.f848d) {
                    i5 = i18;
                    i4 = i20;
                    c2 = c;
                } else {
                    int i21 = layoutParams2.f846b;
                    if (i21 < i20) {
                        c2 = 1 << i19;
                        i4 = i21;
                        i5 = 1;
                    } else {
                        i5 = i18;
                        i4 = i20;
                        c2 = c;
                        if (i21 == i20) {
                            i5 = i18 + 1;
                            c2 = c | (1 << i19);
                            i4 = i20;
                        }
                    }
                }
                i19++;
                i18 = i5;
                i20 = i4;
                r0 = c2;
            }
            z = z6;
            i3 = i11;
            c3 |= c;
            if (i18 > i17) {
                break;
            }
            for (int i22 = 0; i22 < childCount; i22++) {
                View childAt2 = getChildAt(i22);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                long j = 1 << i22;
                if ((c & j) == 0) {
                    char c4 = c3;
                    if (layoutParams3.f846b == i20 + 1) {
                        c4 = c3 | j;
                    }
                    c3 = c4;
                } else {
                    if (z7 && layoutParams3.f849e && i17 == 1) {
                        int i23 = this.f835C;
                        childAt2.setPadding(i23 + i10, 0, i23, 0);
                    }
                    layoutParams3.f846b++;
                    layoutParams3.f850f = true;
                    i17--;
                }
            }
            i11 = i3;
            z6 = true;
        }
        z = z6;
        i3 = i11;
        boolean z8 = !z4 && i13 == 1;
        if (i17 > 0 && c3 != 0 && (i17 < i13 - 1 || z8 || i14 > 1)) {
            float bitCount = Long.bitCount(c3);
            if (!z8) {
                float f = bitCount;
                if ((c3 & 1) != 0) {
                    f = bitCount;
                    if (!((LayoutParams) getChildAt(0).getLayoutParams()).f849e) {
                        f = bitCount - 0.5f;
                    }
                }
                int i24 = childCount - 1;
                bitCount = f;
                if ((c3 & (1 << i24)) != 0) {
                    bitCount = f;
                    if (!((LayoutParams) getChildAt(i24).getLayoutParams()).f849e) {
                        bitCount = f - 0.5f;
                    }
                }
            }
            int i25 = bitCount > 0.0f ? (int) ((i17 * i10) / bitCount) : 0;
            int i26 = 0;
            while (true) {
                z2 = z;
                if (i26 >= childCount) {
                    break;
                }
                if ((c3 & (1 << i26)) == 0) {
                    z3 = z;
                } else {
                    View childAt3 = getChildAt(i26);
                    LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams4.f847c = i25;
                        layoutParams4.f850f = true;
                        if (i26 == 0 && !layoutParams4.f849e) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = (-i25) / 2;
                        }
                    } else if (layoutParams4.f845a) {
                        layoutParams4.f847c = i25;
                        layoutParams4.f850f = true;
                        ((LinearLayout.LayoutParams) layoutParams4).rightMargin = (-i25) / 2;
                    } else {
                        if (i26 != 0) {
                            ((LinearLayout.LayoutParams) layoutParams4).leftMargin = i25 / 2;
                        }
                        z3 = z;
                        if (i26 != childCount - 1) {
                            ((LinearLayout.LayoutParams) layoutParams4).rightMargin = i25 / 2;
                            z3 = z;
                        }
                    }
                    z3 = true;
                }
                i26++;
                z = z3;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            for (int i27 = 0; i27 < childCount; i27++) {
                View childAt4 = getChildAt(i27);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f850f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams5.f846b * i10) + layoutParams5.f847c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i7, mode != 1073741824 ? i3 : size2);
    }

    /* renamed from: B */
    public void m35241B() {
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m35269B();
        }
    }

    /* renamed from: C */
    public LayoutParams mo35169m() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* renamed from: D */
    public LayoutParams mo35168n(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: E */
    public LayoutParams mo35167o(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
            if (((LinearLayout.LayoutParams) layoutParams2).gravity <= 0) {
                ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
            }
            return layoutParams2;
        }
        return mo35169m();
    }

    /* renamed from: F */
    public LayoutParams m35237F() {
        LayoutParams mo35169m = mo35169m();
        mo35169m.f845a = true;
        return mo35169m;
    }

    /* renamed from: G */
    protected boolean m35236G(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0217a) {
                z = false | ((AbstractC0217a) childAt).mo35226a();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0217a) {
                z2 = z | ((AbstractC0217a) childAt2).mo35225b();
            }
        }
        return z2;
    }

    /* renamed from: H */
    public boolean m35235H() {
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        return actionMenuPresenter != null && actionMenuPresenter.m35266E();
    }

    /* renamed from: I */
    public boolean m35234I() {
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        return actionMenuPresenter != null && actionMenuPresenter.m35264G();
    }

    /* renamed from: J */
    public boolean m35233J() {
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        return actionMenuPresenter != null && actionMenuPresenter.m35263H();
    }

    /* renamed from: K */
    public boolean m35232K() {
        return this.f840v;
    }

    /* renamed from: N */
    public C0178g m35229N() {
        return this.f837s;
    }

    /* renamed from: O */
    public boolean m35228O() {
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        return actionMenuPresenter != null && actionMenuPresenter.m35257N();
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0180b
    /* renamed from: a */
    public boolean mo35227a(C0182i c0182i) {
        return this.f837s.m35406N(c0182i, 0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n
    /* renamed from: b */
    public void mo4639b(C0178g c0178g) {
        this.f837s = c0178g;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.f837s == null) {
            Context context = getContext();
            C0178g c0178g = new C0178g(context);
            this.f837s = c0178g;
            c0178g.mo35302V(new C0219c());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f841w = actionMenuPresenter;
            actionMenuPresenter.m35258M(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f841w;
            C0218b c0218b = this.f842x;
            if (c0218b == null) {
                c0218b = new C0218b();
            }
            actionMenuPresenter2.mo35315g(c0218b);
            this.f837s.m35391c(this.f841w, this.f838t);
            this.f841w.m35260K(this);
        }
        return this.f837s;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f841w.m35267D();
    }

    public int getPopupTheme() {
        return this.f839u;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f841w;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo4536c(false);
            if (!this.f841w.m35263H()) {
                return;
            }
            this.f841w.m35266E();
            this.f841w.m35257N();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35241B();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f844z) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean m34869b = C0305k0.m34869b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f845a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (m35236G(i11)) {
                        i12 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m34869b) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        i5 = i6 + i12;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        i6 = i5 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i13, i5, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    m35236G(i11);
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
        if (m34869b) {
            int width = getWidth() - getPaddingRight();
            int i17 = 0;
            while (i17 < childCount) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                int i18 = width;
                if (childAt3.getVisibility() != 8) {
                    if (layoutParams2.f845a) {
                        i18 = width;
                    } else {
                        int i19 = width - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i20 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                        i18 = i19 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + max);
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
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            int i22 = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                if (layoutParams3.f845a) {
                    i22 = paddingLeft;
                } else {
                    int i23 = paddingLeft + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i24 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i23, i24, i23 + measuredWidth4, measuredHeight4 + i24);
                    i22 = i23 + measuredWidth4 + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + max;
                }
            }
            i21++;
            paddingLeft = i22;
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        C0178g c0178g;
        boolean z = this.f844z;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f844z = z2;
        if (z != z2) {
            this.f833A = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f844z && (c0178g = this.f837s) != null && size != this.f833A) {
            this.f833A = size;
            c0178g.mo4492M(true);
        }
        int childCount = getChildCount();
        if (this.f844z && childCount > 0) {
            m35230M(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
            ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f841w.m35261J(z);
    }

    public void setMenuCallbacks(AbstractC0193m.AbstractC0194a abstractC0194a, C0178g.AbstractC0179a abstractC0179a) {
        this.f842x = abstractC0194a;
        this.f843y = abstractC0179a;
    }

    public void setOnMenuItemClickListener(AbstractC0220d abstractC0220d) {
        this.f836D = abstractC0220d;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f841w.m35259L(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f840v = z;
    }

    public void setPopupTheme(int i) {
        if (this.f839u != i) {
            this.f839u = i;
            if (i == 0) {
                this.f838t = getContext();
            } else {
                this.f838t = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f841w = actionMenuPresenter;
        actionMenuPresenter.m35260K(this);
    }
}
