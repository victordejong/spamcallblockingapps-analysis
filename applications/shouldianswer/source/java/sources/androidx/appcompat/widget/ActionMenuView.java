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
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.widget.C0277ae;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends C0277ae implements C0182g.AbstractC0184b, AbstractC0199n {

    /* renamed from: a */
    C0182g.AbstractC0183a f890a;

    /* renamed from: b */
    AbstractC0226e f891b;

    /* renamed from: c */
    private C0182g f892c;

    /* renamed from: d */
    private Context f893d;

    /* renamed from: e */
    private int f894e;

    /* renamed from: f */
    private boolean f895f;

    /* renamed from: g */
    private ActionMenuPresenter f896g;

    /* renamed from: h */
    private AbstractC0197m.AbstractC0198a f897h;

    /* renamed from: i */
    private boolean f898i;

    /* renamed from: j */
    private int f899j;

    /* renamed from: k */
    private int f900k;

    /* renamed from: l */
    private int f901l;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0222a {
        /* renamed from: b */
        boolean mo7438b();

        /* renamed from: c */
        boolean mo7437c();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0223b implements AbstractC0197m.AbstractC0198a {
        C0223b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public void mo7435a(C0182g c0182g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public boolean mo7436a(C0182g c0182g) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public static class C0224c extends C0277ae.C0278a {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f902a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f903b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f904c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f905d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f906e;

        /* renamed from: f */
        boolean f907f;

        public C0224c(int i, int i2) {
            super(i, i2);
            this.f902a = false;
        }

        public C0224c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0224c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0224c(C0224c c0224c) {
            super(c0224c);
            this.f902a = c0224c.f902a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public class C0225d implements C0182g.AbstractC0183a {
        C0225d() {
            ActionMenuView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
            return ActionMenuView.this.f891b != null && ActionMenuView.this.f891b.mo7322a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public void onMenuModeChange(C0182g c0182g) {
            if (ActionMenuView.this.f890a != null) {
                ActionMenuView.this.f890a.onMenuModeChange(c0182g);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$e.class */
    public interface AbstractC0226e {
        /* renamed from: a */
        boolean mo7322a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f900k = (int) (56.0f * f);
        this.f901l = (int) (f * 4.0f);
        this.f893d = context;
        this.f894e = 0;
    }

    /* renamed from: a */
    public static int m7450a(View view, int i, int i2, int i3, int i4) {
        int i5;
        C0224c c0224c = (C0224c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m7606a();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, AbstractC0610a.INVALID_ID), makeMeasureSpec);
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
        if (c0224c.f902a || !z2) {
            z = false;
        }
        c0224c.f905d = z;
        c0224c.f903b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v146 */
    /* JADX WARN: Type inference failed for: r0v147 */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191 */
    /* JADX WARN: Type inference failed for: r0v200, types: [long] */
    /* JADX WARN: Type inference failed for: r0v207, types: [long] */
    /* JADX WARN: Type inference failed for: r0v251, types: [long] */
    /* renamed from: a */
    private void m7452a(int i, int i2) {
        boolean z;
        boolean z2;
        char c;
        char c2;
        int i3;
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i5 = size - (paddingLeft + paddingRight);
        int i6 = this.f900k;
        int i7 = i5 / i6;
        if (i7 == 0) {
            setMeasuredDimension(i5, 0);
            return;
        }
        int i8 = i6 + ((i5 % i6) / i7);
        int childCount = getChildCount();
        int i9 = 0;
        boolean z3 = false;
        int i10 = 0;
        char c3 = 0;
        int i11 = 0;
        int i12 = i7;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i13++;
                if (z4) {
                    int i15 = this.f901l;
                    childAt.setPadding(i15, 0, i15, 0);
                }
                C0224c c0224c = (C0224c) childAt.getLayoutParams();
                c0224c.f907f = false;
                c0224c.f904c = 0;
                c0224c.f903b = 0;
                c0224c.f905d = false;
                c0224c.leftMargin = 0;
                c0224c.rightMargin = 0;
                c0224c.f906e = z4 && ((ActionMenuItemView) childAt).m7606a();
                int m7450a = m7450a(childAt, i8, c0224c.f902a ? 1 : i12, childMeasureSpec, paddingTop);
                i11 = Math.max(i11, m7450a);
                int i16 = i10;
                if (c0224c.f905d) {
                    i16 = i10 + 1;
                }
                if (c0224c.f902a) {
                    z3 = true;
                }
                i12 -= m7450a;
                i9 = Math.max(i9, childAt.getMeasuredHeight());
                if (m7450a == 1) {
                    c3 |= 1 << i14;
                }
                i10 = i16;
            }
        }
        boolean z5 = z3 && i13 == 2;
        int i17 = i12;
        boolean z6 = false;
        while (i10 > 0 && i17 > 0) {
            int i18 = Integer.MAX_VALUE;
            int i19 = 0;
            int i20 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i19 >= childCount) {
                    break;
                }
                C0224c c0224c2 = (C0224c) getChildAt(i19).getLayoutParams();
                if (!c0224c2.f905d) {
                    i3 = i18;
                    i4 = i20;
                    c2 = c;
                } else if (c0224c2.f903b < i18) {
                    i3 = c0224c2.f903b;
                    c2 = 1 << i19;
                    i4 = 1;
                } else {
                    i3 = i18;
                    i4 = i20;
                    c2 = c;
                    if (c0224c2.f903b == i18) {
                        c2 = c | (1 << i19);
                        i4 = i20 + 1;
                        i3 = i18;
                    }
                }
                i19++;
                i18 = i3;
                i20 = i4;
                r0 = c2;
            }
            c3 |= c;
            if (i20 > i17) {
                break;
            }
            int i21 = i18 + 1;
            for (int i22 = 0; i22 < childCount; i22++) {
                View childAt2 = getChildAt(i22);
                C0224c c0224c3 = (C0224c) childAt2.getLayoutParams();
                long j = 1 << i22;
                if ((c & j) == 0) {
                    char c4 = c3;
                    if (c0224c3.f903b == i21) {
                        c4 = c3 | j;
                    }
                    c3 = c4;
                } else {
                    if (z5 && c0224c3.f906e && i17 == 1) {
                        int i23 = this.f901l;
                        childAt2.setPadding(i23 + i8, 0, i23, 0);
                    }
                    c0224c3.f903b++;
                    c0224c3.f907f = true;
                    i17--;
                }
            }
            z6 = true;
        }
        boolean z7 = !z3 && i13 == 1;
        if (i17 > 0 && c3 != 0 && (i17 < i13 - 1 || z7 || i11 > 1)) {
            float bitCount = Long.bitCount(c3);
            if (!z7) {
                float f = bitCount;
                if ((c3 & 1) != 0) {
                    f = bitCount;
                    if (!((C0224c) getChildAt(0).getLayoutParams()).f906e) {
                        f = bitCount - 0.5f;
                    }
                }
                int i24 = childCount - 1;
                bitCount = f;
                if ((c3 & (1 << i24)) != 0) {
                    bitCount = f;
                    if (!((C0224c) getChildAt(i24).getLayoutParams()).f906e) {
                        bitCount = f - 0.5f;
                    }
                }
            }
            int i25 = bitCount > FlexItem.FLEX_GROW_DEFAULT ? (int) ((i17 * i8) / bitCount) : 0;
            int i26 = 0;
            while (true) {
                z = z6;
                if (i26 >= childCount) {
                    break;
                }
                if ((c3 & (1 << i26)) == 0) {
                    z2 = z6;
                } else {
                    View childAt3 = getChildAt(i26);
                    C0224c c0224c4 = (C0224c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0224c4.f904c = i25;
                        c0224c4.f907f = true;
                        if (i26 == 0 && !c0224c4.f906e) {
                            c0224c4.leftMargin = (-i25) / 2;
                        }
                        z2 = true;
                    } else if (c0224c4.f902a) {
                        c0224c4.f904c = i25;
                        c0224c4.f907f = true;
                        c0224c4.rightMargin = (-i25) / 2;
                        z2 = true;
                    } else {
                        if (i26 != 0) {
                            c0224c4.leftMargin = i25 / 2;
                        }
                        z2 = z6;
                        if (i26 != childCount - 1) {
                            c0224c4.rightMargin = i25 / 2;
                            z2 = z6;
                        }
                    }
                }
                i26++;
                z6 = z2;
            }
        } else {
            z = z6;
        }
        if (z) {
            for (int i27 = 0; i27 < childCount; i27++) {
                View childAt4 = getChildAt(i27);
                C0224c c0224c5 = (C0224c) childAt4.getLayoutParams();
                if (c0224c5.f907f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0224c5.f903b * i8) + c0224c5.f904c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i5, mode != 1073741824 ? i9 : size2);
    }

    /* renamed from: a */
    public C0224c generateLayoutParams(AttributeSet attributeSet) {
        return new C0224c(getContext(), attributeSet);
    }

    /* renamed from: a */
    public C0224c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            C0224c c0224c = layoutParams instanceof C0224c ? new C0224c((C0224c) layoutParams) : new C0224c(layoutParams);
            if (c0224c.f1153h <= 0) {
                c0224c.f1153h = 16;
            }
            return c0224c;
        }
        return generateDefaultLayoutParams();
    }

    /* renamed from: a */
    public void m7447a(AbstractC0197m.AbstractC0198a abstractC0198a, C0182g.AbstractC0183a abstractC0183a) {
        this.f897h = abstractC0198a;
        this.f890a = abstractC0183a;
    }

    /* renamed from: a */
    public boolean m7454a() {
        return this.f895f;
    }

    /* renamed from: a */
    protected boolean m7453a(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0222a) {
                z = false | ((AbstractC0222a) childAt).mo7437c();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0222a) {
                z2 = z | ((AbstractC0222a) childAt2).mo7438b();
            }
        }
        return z2;
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0184b
    /* renamed from: a */
    public boolean mo7448a(C0186i c0186i) {
        return this.f892c.performItemAction(c0186i, 0);
    }

    /* renamed from: b */
    public C0224c generateDefaultLayoutParams() {
        C0224c c0224c = new C0224c(-2, -2);
        c0224c.f1153h = 16;
        return c0224c;
    }

    /* renamed from: c */
    public C0224c m7445c() {
        C0224c generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f902a = true;
        return generateDefaultLayoutParams;
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0224c;
    }

    /* renamed from: d */
    public C0182g m7444d() {
        return this.f892c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* renamed from: e */
    public boolean m7443e() {
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        return actionMenuPresenter != null && actionMenuPresenter.m7468c();
    }

    /* renamed from: f */
    public boolean m7442f() {
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        return actionMenuPresenter != null && actionMenuPresenter.m7466d();
    }

    /* renamed from: g */
    public boolean m7441g() {
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        return actionMenuPresenter != null && actionMenuPresenter.m7460g();
    }

    public Menu getMenu() {
        if (this.f892c == null) {
            Context context = getContext();
            this.f892c = new C0182g(context);
            this.f892c.setCallback(new C0225d());
            this.f896g = new ActionMenuPresenter(context);
            this.f896g.m7472a(true);
            ActionMenuPresenter actionMenuPresenter = this.f896g;
            C0223b c0223b = this.f897h;
            if (c0223b == null) {
                c0223b = new C0223b();
            }
            actionMenuPresenter.setCallback(c0223b);
            this.f892c.addMenuPresenter(this.f896g, this.f893d);
            this.f896g.m7473a(this);
        }
        return this.f892c;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f896g.m7471b();
    }

    public int getPopupTheme() {
        return this.f894e;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: h */
    public boolean m7440h() {
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        return actionMenuPresenter != null && actionMenuPresenter.m7459h();
    }

    /* renamed from: i */
    public void m7439i() {
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m7464e();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n
    public void initialize(C0182g c0182g) {
        this.f892c = c0182g;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f896g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.updateMenuView(false);
            if (!this.f896g.m7460g()) {
                return;
            }
            this.f896g.m7466d();
            this.f896g.m7468c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m7439i();
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f898i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        boolean m7115a = C0321ay.m7115a(this);
        int i9 = (i8 - paddingRight) - paddingLeft;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                C0224c c0224c = (C0224c) childAt.getLayoutParams();
                if (c0224c.f902a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i13 = measuredWidth;
                    if (m7453a(i12)) {
                        i13 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m7115a) {
                        i6 = getPaddingLeft() + c0224c.leftMargin;
                        i5 = i6 + i13;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - c0224c.rightMargin;
                        i6 = i5 - i13;
                    }
                    int i14 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i14, i5, measuredHeight + i14);
                    i9 -= i13;
                    i10 = 1;
                } else {
                    i9 -= (childAt.getMeasuredWidth() + c0224c.leftMargin) + c0224c.rightMargin;
                    m7453a(i12);
                    i11++;
                }
            }
        }
        if (childCount == 1 && i10 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = (i8 / 2) - (measuredWidth2 / 2);
            int i16 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth2 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i11 - (i10 ^ 1);
        int max = Math.max(0, i17 > 0 ? i9 / i17 : 0);
        if (m7115a) {
            int width = getWidth() - getPaddingRight();
            int i18 = 0;
            while (i18 < childCount) {
                View childAt3 = getChildAt(i18);
                C0224c c0224c2 = (C0224c) childAt3.getLayoutParams();
                int i19 = width;
                if (childAt3.getVisibility() != 8) {
                    if (c0224c2.f902a) {
                        i19 = width;
                    } else {
                        int i20 = width - c0224c2.rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i21 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i20 - measuredWidth3, i21, i20, measuredHeight3 + i21);
                        i19 = i20 - ((measuredWidth3 + c0224c2.leftMargin) + max);
                    }
                }
                i18++;
                width = i19;
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        int i22 = 0;
        while (i22 < childCount) {
            View childAt4 = getChildAt(i22);
            C0224c c0224c3 = (C0224c) childAt4.getLayoutParams();
            int i23 = paddingLeft2;
            if (childAt4.getVisibility() != 8) {
                if (c0224c3.f902a) {
                    i23 = paddingLeft2;
                } else {
                    int i24 = paddingLeft2 + c0224c3.leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i25 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i24, i25, i24 + measuredWidth4, measuredHeight4 + i25);
                    i23 = i24 + measuredWidth4 + c0224c3.rightMargin + max;
                }
            }
            i22++;
            paddingLeft2 = i23;
        }
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.View
    public void onMeasure(int i, int i2) {
        C0182g c0182g;
        boolean z = this.f898i;
        this.f898i = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.f898i) {
            this.f899j = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f898i && (c0182g = this.f892c) != null && size != this.f899j) {
            this.f899j = size;
            c0182g.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.f898i && childCount > 0) {
            m7452a(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0224c c0224c = (C0224c) getChildAt(i3).getLayoutParams();
            c0224c.rightMargin = 0;
            c0224c.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f896g.m7469b(z);
    }

    public void setOnMenuItemClickListener(AbstractC0226e abstractC0226e) {
        this.f891b = abstractC0226e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f896g.m7480a(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f895f = z;
    }

    public void setPopupTheme(int i) {
        if (this.f894e != i) {
            this.f894e = i;
            if (i == 0) {
                this.f893d = getContext();
            } else {
                this.f893d = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f896g = actionMenuPresenter;
        this.f896g.m7473a(this);
    }
}
