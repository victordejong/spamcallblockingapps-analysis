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
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0268g.AbstractC0270b, AbstractC0285n {

    /* renamed from: a */
    C0268g f1083a;

    /* renamed from: b */
    boolean f1084b;

    /* renamed from: c */
    ActionMenuPresenter f1085c;

    /* renamed from: d */
    C0268g.AbstractC0269a f1086d;

    /* renamed from: e */
    AbstractC0310d f1087e;

    /* renamed from: f */
    private Context f1088f;

    /* renamed from: g */
    private int f1089g;

    /* renamed from: h */
    private AbstractC0283m.AbstractC0284a f1090h;

    /* renamed from: i */
    private boolean f1091i;

    /* renamed from: j */
    private int f1092j;

    /* renamed from: k */
    private int f1093k;

    /* renamed from: l */
    private int f1094l;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f1095a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f1096b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f1097c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f1098d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f1099e;

        /* renamed from: f */
        boolean f1100f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1095a = false;
        }

        LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.f1095a = z;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f1095a = layoutParams.f1095a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0307a {
        /* renamed from: d */
        boolean mo45993d();

        /* renamed from: e */
        boolean mo45992e();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static final class C0308b implements AbstractC0283m.AbstractC0284a {
        C0308b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final void mo45990a(C0268g c0268g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final boolean mo45991a(C0268g c0268g) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public final class C0309c implements C0268g.AbstractC0269a {
        C0309c() {
            ActionMenuView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final void mo10362a(C0268g c0268g) {
            if (ActionMenuView.this.f1086d != null) {
                ActionMenuView.this.f1086d.mo10362a(c0268g);
            }
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
            return ActionMenuView.this.f1087e != null && ActionMenuView.this.f1087e.mo45821a(menuItem);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public interface AbstractC0310d {
        /* renamed from: a */
        boolean mo45821a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f1093k = (int) (56.0f * f);
        this.f1094l = (int) (f * 4.0f);
        this.f1088f = context;
        this.f1089g = 0;
    }

    /* renamed from: a */
    public static int m46001a(View view, int i, int i2, int i3, int i4) {
        int i5;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m46133c();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), makeMeasureSpec);
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
        if (layoutParams.f1095a || !z2) {
            z = false;
        }
        layoutParams.f1098d = z;
        layoutParams.f1096b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* renamed from: a */
    public static LayoutParams m46002a() {
        LayoutParams m45994h = m45994h();
        m45994h.f1095a = true;
        return m45994h;
    }

    /* renamed from: a */
    public static LayoutParams m46000a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
            if (layoutParams2.f1238h <= 0) {
                layoutParams2.f1238h = 16;
            }
            return layoutParams2;
        }
        return m45994h();
    }

    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: b */
    private boolean m45997b(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0307a) {
                z = false | ((AbstractC0307a) childAt).mo45992e();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0307a) {
                z2 = z | ((AbstractC0307a) childAt2).mo45993d();
            }
        }
        return z2;
    }

    /* renamed from: h */
    private static LayoutParams m45994h() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f1238h = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n
    /* renamed from: a */
    public final void mo10610a(C0268g c0268g) {
        this.f1083a = c0268g;
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0270b
    /* renamed from: a */
    public final boolean mo45999a(C0272i c0272i) {
        return this.f1083a.m46102a(c0272i, (AbstractC0283m) null, 0);
    }

    /* renamed from: b */
    public final Menu m45998b() {
        if (this.f1083a == null) {
            Context context = getContext();
            C0268g c0268g = new C0268g(context);
            this.f1083a = c0268g;
            c0268g.mo46041a(new C0309c());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f1085c = actionMenuPresenter;
            actionMenuPresenter.m46010d();
            ActionMenuPresenter actionMenuPresenter2 = this.f1085c;
            C0308b c0308b = this.f1090h;
            if (c0308b == null) {
                c0308b = new C0308b();
            }
            actionMenuPresenter2.f818f = c0308b;
            this.f1083a.m46099a(this.f1085c, this.f1088f);
            this.f1085c.m46012a(this);
        }
        return this.f1083a;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: b */
    public final /* synthetic */ LinearLayoutCompat.LayoutParams mo45940b(ViewGroup.LayoutParams layoutParams) {
        return m46000a(layoutParams);
    }

    /* renamed from: c */
    public final void m45995c() {
        ActionMenuPresenter actionMenuPresenter = this.f1085c;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m46007h();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: d */
    public final /* synthetic */ LinearLayoutCompat.LayoutParams mo45939d() {
        return m45994h();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m45994h();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m46000a(layoutParams);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f1085c;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo10541a(false);
            if (!this.f1085c.m46005j()) {
                return;
            }
            this.f1085c.m46008g();
            this.f1085c.m46009e();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m45995c();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        if (!this.f1091i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i8 = (i4 - i2) / 2;
        int f = m45937f();
        int i9 = i3 - i;
        int paddingRight = (i9 - getPaddingRight()) - getPaddingLeft();
        boolean m45770a = C0380ah.m45770a(this);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i5 = i12;
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            int i13 = paddingRight;
            int i14 = i11;
            int i15 = i5;
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1095a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i16 = measuredWidth;
                    if (m45997b(i10)) {
                        i16 = measuredWidth + f;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m45770a) {
                        i7 = getPaddingLeft() + layoutParams.leftMargin;
                        i6 = i7 + i16;
                    } else {
                        i6 = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        i7 = i6 - i16;
                    }
                    int i17 = i8 - (measuredHeight / 2);
                    childAt.layout(i7, i17, i6, measuredHeight + i17);
                    i13 = paddingRight - i16;
                    i14 = 1;
                    i15 = i5;
                } else {
                    i13 = paddingRight - ((childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin);
                    m45997b(i10);
                    i15 = i5 + 1;
                    i14 = i11;
                }
            }
            i10++;
            paddingRight = i13;
            i11 = i14;
            i12 = i15;
        }
        if (childCount == 1 && i11 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i18 = (i9 / 2) - (measuredWidth2 / 2);
            int i19 = i8 - (measuredHeight2 / 2);
            childAt2.layout(i18, i19, measuredWidth2 + i18, measuredHeight2 + i19);
            return;
        }
        int i20 = i5 - (i11 ^ 1);
        int max = Math.max(0, i20 > 0 ? paddingRight / i20 : 0);
        if (m45770a) {
            int width = getWidth() - getPaddingRight();
            int i21 = 0;
            while (i21 < childCount) {
                View childAt3 = getChildAt(i21);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                int i22 = width;
                if (childAt3.getVisibility() != 8) {
                    i22 = width;
                    if (!layoutParams2.f1095a) {
                        int i23 = width - layoutParams2.rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i24 = i8 - (measuredHeight3 / 2);
                        childAt3.layout(i23 - measuredWidth3, i24, i23, measuredHeight3 + i24);
                        i22 = i23 - ((measuredWidth3 + layoutParams2.leftMargin) + max);
                    }
                }
                i21++;
                width = i22;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        int i25 = 0;
        while (i25 < childCount) {
            View childAt4 = getChildAt(i25);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            int i26 = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                i26 = paddingLeft;
                if (!layoutParams3.f1095a) {
                    int i27 = paddingLeft + layoutParams3.leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i28 = i8 - (measuredHeight4 / 2);
                    childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                    i26 = i27 + measuredWidth4 + layoutParams3.rightMargin + max;
                }
            }
            i25++;
            paddingLeft = i26;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x03be, code lost:
        if (r22 > 1) goto L114;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v174 */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    /* JADX WARN: Type inference failed for: r0v224 */
    /* JADX WARN: Type inference failed for: r0v235, types: [long] */
    /* JADX WARN: Type inference failed for: r0v240, types: [long] */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v298, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v57 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.onMeasure(int, int):void");
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f1085c.f1059l = z;
    }

    public void setMenuCallbacks(AbstractC0283m.AbstractC0284a abstractC0284a, C0268g.AbstractC0269a abstractC0269a) {
        this.f1090h = abstractC0284a;
        this.f1086d = abstractC0269a;
    }

    public void setOnMenuItemClickListener(AbstractC0310d abstractC0310d) {
        this.f1087e = abstractC0310d;
    }

    public void setOverflowIcon(Drawable drawable) {
        m45998b();
        ActionMenuPresenter actionMenuPresenter = this.f1085c;
        if (actionMenuPresenter.f1056i != null) {
            actionMenuPresenter.f1056i.setImageDrawable(drawable);
            return;
        }
        actionMenuPresenter.f1058k = true;
        actionMenuPresenter.f1057j = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.f1084b = z;
    }

    public void setPopupTheme(int i) {
        if (this.f1089g != i) {
            this.f1089g = i;
            if (i == 0) {
                this.f1088f = getContext();
            } else {
                this.f1088f = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f1085c = actionMenuPresenter;
        actionMenuPresenter.m46012a(this);
    }
}
