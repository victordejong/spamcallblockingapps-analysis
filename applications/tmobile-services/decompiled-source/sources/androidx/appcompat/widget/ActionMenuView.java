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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView {

    /* renamed from: A */
    MenuBuilder.Callback f843A;

    /* renamed from: B */
    private boolean f844B;

    /* renamed from: C */
    private int f845C;

    /* renamed from: D */
    private int f846D;

    /* renamed from: E */
    private int f847E;

    /* renamed from: F */
    OnMenuItemClickListener f848F;

    /* renamed from: u */
    private MenuBuilder f849u;

    /* renamed from: v */
    private Context f850v;

    /* renamed from: w */
    private int f851w;

    /* renamed from: x */
    private boolean f852x;

    /* renamed from: y */
    private ActionMenuPresenter f853y;

    /* renamed from: z */
    private MenuPresenter.Callback f854z;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$ActionMenuChildView.class */
    public interface ActionMenuChildView {
        /* renamed from: a */
        boolean mo21700a();

        /* renamed from: b */
        boolean mo21699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback.class */
    public static class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: c */
        public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: d */
        public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public boolean f855c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public int f856d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public int f857e;
        @ViewDebug.ExportedProperty

        /* renamed from: f */
        public boolean f858f;
        @ViewDebug.ExportedProperty

        /* renamed from: g */
        public boolean f859g;

        /* renamed from: h */
        boolean f860h;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f855c = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f855c = layoutParams.f855c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$MenuBuilderCallback.class */
    public class MenuBuilderCallback implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: a */
        public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = ActionMenuView.this.f848F;
            return onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: b */
        public void mo9406b(@NonNull MenuBuilder menuBuilder) {
            MenuBuilder.Callback callback = ActionMenuView.this.f843A;
            if (callback != null) {
                callback.mo9406b(menuBuilder);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener.class */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f846D = (int) (56.0f * f);
        this.f847E = (int) (f * 4.0f);
        this.f850v = context;
        this.f851w = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public static int m21705L(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m21930f();
        int i5 = 2;
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
            if (!z2 || i5 < 2) {
            }
        }
        if (layoutParams.f855c || !z2) {
            z = false;
        }
        layoutParams.f858f = z;
        layoutParams.f856d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v141 */
    /* JADX WARN: Type inference failed for: r0v142, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185 */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r22v13 */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v5, types: [long] */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5, types: [long] */
    /* JADX WARN: Type inference failed for: r33v6, types: [long] */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21704M(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.m21704M(int, int):void");
    }

    /* renamed from: B */
    public void m21715B() {
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m21743B();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: C */
    public LayoutParams mo21471m() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f1100b = 16;
        return layoutParams;
    }

    /* renamed from: D */
    public LayoutParams mo21470n(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E */
    public LayoutParams mo21469o(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return mo21471m();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.f1100b <= 0) {
            layoutParams2.f1100b = 16;
        }
        return layoutParams2;
    }

    @RestrictTo
    /* renamed from: F */
    public LayoutParams m21711F() {
        LayoutParams C = mo21471m();
        C.f855c = true;
        return C;
    }

    @RestrictTo
    /* renamed from: G */
    protected boolean m21710G(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof ActionMenuChildView) {
                z = false | ((ActionMenuChildView) childAt).mo21700a();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof ActionMenuChildView) {
                z2 = z | ((ActionMenuChildView) childAt2).mo21699b();
            }
        }
        return z2;
    }

    /* renamed from: H */
    public boolean m21709H() {
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        return actionMenuPresenter != null && actionMenuPresenter.m21740E();
    }

    @RestrictTo
    /* renamed from: I */
    public boolean m21708I() {
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        return actionMenuPresenter != null && actionMenuPresenter.m21738G();
    }

    /* renamed from: J */
    public boolean m21707J() {
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        return actionMenuPresenter != null && actionMenuPresenter.m21737H();
    }

    @RestrictTo
    /* renamed from: K */
    public boolean m21706K() {
        return this.f852x;
    }

    @RestrictTo
    /* renamed from: N */
    public MenuBuilder m21703N() {
        return this.f849u;
    }

    /* renamed from: O */
    public boolean m21702O() {
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        return actionMenuPresenter != null && actionMenuPresenter.m21731N();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    @RestrictTo
    /* renamed from: a */
    public boolean mo21701a(MenuItemImpl menuItemImpl) {
        return this.f849u.m21887N(menuItemImpl, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuView
    @RestrictTo
    /* renamed from: b */
    public void mo9485b(MenuBuilder menuBuilder) {
        this.f849u = menuBuilder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.f849u == null) {
            Context context = getContext();
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.f849u = menuBuilder;
            menuBuilder.mo21784V(new MenuBuilderCallback());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f853y = actionMenuPresenter;
            actionMenuPresenter.m21732M(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f853y;
            MenuPresenter.Callback callback = this.f854z;
            if (callback == null) {
                callback = new ActionMenuPresenterCallback();
            }
            actionMenuPresenter2.mo9519h(callback);
            this.f849u.m21872c(this.f853y, this.f850v);
            this.f853y.m21734K(this);
        }
        return this.f849u;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.f853y.m21741D();
    }

    public int getPopupTheme() {
        return this.f851w;
    }

    @RestrictTo
    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f853y;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo9523d(false);
            if (this.f853y.m21737H()) {
                this.f853y.m21740E();
                this.f853y.m21731N();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m21715B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f844B) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean b = ViewUtils.m21149b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f855c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (m21710G(i11)) {
                        i12 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b) {
                        i5 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        i6 = i5 + i12;
                    } else {
                        i6 = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        i5 = i6 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i5, i13, i6, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    m21710G(i11);
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
        if (b) {
            int width = getWidth() - getPaddingRight();
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                width = width;
                if (childAt3.getVisibility() != 8) {
                    if (layoutParams2.f855c) {
                        width = width;
                    } else {
                        int i18 = width - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i19 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                        width = i18 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) + max);
                    }
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt4 = getChildAt(i20);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            paddingLeft = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                if (layoutParams3.f855c) {
                    paddingLeft = paddingLeft;
                } else {
                    int i21 = paddingLeft + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i22 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                    paddingLeft = i21 + measuredWidth4 + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + max;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        MenuBuilder menuBuilder;
        boolean z = this.f844B;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f844B = z2;
        if (z != z2) {
            this.f845C = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (!(!this.f844B || (menuBuilder = this.f849u) == null || size == this.f845C)) {
            this.f845C = size;
            menuBuilder.mo9484M(true);
        }
        int childCount = getChildCount();
        if (!this.f844B || childCount <= 0) {
            for (int i3 = 0; i3 < childCount; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        m21704M(i, i2);
    }

    @RestrictTo
    public void setExpandedActionViewsExclusive(boolean z) {
        this.f853y.m21735J(z);
    }

    @RestrictTo
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f854z = callback;
        this.f843A = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.f848F = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.f853y.m21733L(drawable);
    }

    @RestrictTo
    public void setOverflowReserved(boolean z) {
        this.f852x = z;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.f851w != i) {
            this.f851w = i;
            if (i == 0) {
                this.f850v = getContext();
            } else {
                this.f850v = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    @RestrictTo
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f853y = actionMenuPresenter;
        actionMenuPresenter.m21734K(this);
    }
}
