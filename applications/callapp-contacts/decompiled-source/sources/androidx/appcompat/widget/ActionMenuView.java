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
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements g.b, n {

    /* renamed from: a  reason: collision with root package name */
    g f866a;

    /* renamed from: b  reason: collision with root package name */
    boolean f867b;

    /* renamed from: c  reason: collision with root package name */
    ActionMenuPresenter f868c;

    /* renamed from: d  reason: collision with root package name */
    g.a f869d;
    d e;
    private Context f;
    private int g;
    private m.a h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: a  reason: collision with root package name */
        public boolean f870a;
        @ViewDebug.ExportedProperty

        /* renamed from: b  reason: collision with root package name */
        public int f871b;
        @ViewDebug.ExportedProperty

        /* renamed from: c  reason: collision with root package name */
        public int f872c;
        @ViewDebug.ExportedProperty

        /* renamed from: d  reason: collision with root package name */
        public boolean f873d;
        @ViewDebug.ExportedProperty
        public boolean e;
        boolean f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f870a = false;
        }

        LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.f870a = z;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f870a = layoutParams.f870a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface a {
        boolean d();

        boolean e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static final class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final void a(g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final boolean a(g gVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public final class c implements g.a {
        c() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final void a(g gVar) {
            if (ActionMenuView.this.f869d != null) {
                ActionMenuView.this.f869d.a(gVar);
            }
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final boolean a(g gVar, MenuItem menuItem) {
            return ActionMenuView.this.e != null && ActionMenuView.this.e.a(menuItem);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public interface d {
        boolean a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.k = (int) (56.0f * f);
        this.l = (int) (f * 4.0f);
        this.f = context;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.c();
        int i5 = 2;
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
            if (!z2 || i5 < 2) {
            }
        }
        if (layoutParams.f870a || !z2) {
            z = false;
        }
        layoutParams.f873d = z;
        layoutParams.f871b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    public static LayoutParams a() {
        LayoutParams h = h();
        h.f870a = true;
        return h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return h();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.h <= 0) {
            layoutParams2.h = 16;
        }
        return layoutParams2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private boolean b(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof a) {
                z = false | ((a) childAt).e();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof a) {
                z2 = z | ((a) childAt2).d();
            }
        }
        return z2;
    }

    private static LayoutParams h() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.h = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.view.menu.n
    public final void a(g gVar) {
        this.f866a = gVar;
    }

    @Override // androidx.appcompat.view.menu.g.b
    public final boolean a(i iVar) {
        return this.f866a.a(iVar, (m) null, 0);
    }

    public final Menu b() {
        if (this.f866a == null) {
            Context context = getContext();
            g gVar = new g(context);
            this.f866a = gVar;
            gVar.a(new c());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f868c = actionMenuPresenter;
            actionMenuPresenter.d();
            ActionMenuPresenter actionMenuPresenter2 = this.f868c;
            m.a aVar = this.h;
            if (aVar == null) {
                aVar = new b();
            }
            actionMenuPresenter2.f = aVar;
            this.f866a.a(this.f868c, this.f);
            this.f868c.a(this);
        }
        return this.f866a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public final /* synthetic */ LinearLayoutCompat.LayoutParams b(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    public final void c() {
        ActionMenuPresenter actionMenuPresenter = this.f868c;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public final /* synthetic */ LinearLayoutCompat.LayoutParams d() {
        return h();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f868c;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a(false);
            if (this.f868c.j()) {
                this.f868c.g();
                this.f868c.e();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int f = f();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean a2 = ah.a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            paddingRight = paddingRight;
            i9 = i9;
            i10 = i10;
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f870a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (b(i11)) {
                        i12 = measuredWidth + f;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a2) {
                        i6 = getPaddingLeft() + layoutParams.leftMargin;
                        i5 = i6 + i12;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        i6 = i5 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i13, i5, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                    i10 = i10;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
                    b(i11);
                    i10++;
                    i9 = i9;
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
        if (a2) {
            int width = getWidth() - getPaddingRight();
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                width = width;
                if (childAt3.getVisibility() != 8) {
                    width = width;
                    if (!layoutParams2.f870a) {
                        int i18 = width - layoutParams2.rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i19 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                        width = i18 - ((measuredWidth3 + layoutParams2.leftMargin) + max);
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
                paddingLeft = paddingLeft;
                if (!layoutParams3.f870a) {
                    int i21 = paddingLeft + layoutParams3.leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i22 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                    paddingLeft = i21 + measuredWidth4 + layoutParams3.rightMargin + max;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x03be, code lost:
        if (r22 > 1) goto L_0x03c1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* JADX WARN: Type inference failed for: r0v224 */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v315 */
    /* JADX WARN: Type inference failed for: r0v316 */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r24v0, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2, types: [long] */
    /* JADX WARN: Type inference failed for: r32v10, types: [long] */
    /* JADX WARN: Type inference failed for: r32v11 */
    /* JADX WARN: Type inference failed for: r32v13 */
    /* JADX WARN: Type inference failed for: r32v14 */
    /* JADX WARN: Type inference failed for: r32v16 */
    /* JADX WARN: Type inference failed for: r32v17 */
    /* JADX WARN: Type inference failed for: r32v6 */
    /* JADX WARN: Type inference failed for: r32v8 */
    /* JADX WARN: Type inference failed for: r32v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 5 */
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
        this.f868c.l = z;
    }

    public void setMenuCallbacks(m.a aVar, g.a aVar2) {
        this.h = aVar;
        this.f869d = aVar2;
    }

    public void setOnMenuItemClickListener(d dVar) {
        this.e = dVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        b();
        ActionMenuPresenter actionMenuPresenter = this.f868c;
        if (actionMenuPresenter.i != null) {
            actionMenuPresenter.i.setImageDrawable(drawable);
            return;
        }
        actionMenuPresenter.k = true;
        actionMenuPresenter.j = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.f867b = z;
    }

    public void setPopupTheme(int i) {
        if (this.g != i) {
            this.g = i;
            if (i == 0) {
                this.f = getContext();
            } else {
                this.f = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f868c = actionMenuPresenter;
        actionMenuPresenter.a(this);
    }
}
