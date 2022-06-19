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
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.widget.C0202c;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import p007a6.C0033h;
import p086f.C2680v;
import p163m0.AbstractC3574g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0136e.AbstractC0138b, AbstractC0146j {

    /* renamed from: A */
    public AbstractC0162e f576A;

    /* renamed from: p */
    public C0136e f577p;

    /* renamed from: q */
    public Context f578q;

    /* renamed from: r */
    public int f579r = 0;

    /* renamed from: s */
    public boolean f580s;

    /* renamed from: t */
    public C0202c f581t;

    /* renamed from: u */
    public AbstractC0144i.AbstractC0145a f582u;

    /* renamed from: v */
    public C0136e.AbstractC0137a f583v;

    /* renamed from: w */
    public boolean f584w;

    /* renamed from: x */
    public int f585x;

    /* renamed from: y */
    public int f586y;

    /* renamed from: z */
    public int f587z;

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0158a {
        /* renamed from: a */
        boolean mo8568a();

        /* renamed from: b */
        boolean mo8567b();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0159b implements AbstractC0144i.AbstractC0145a {
        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: a */
        public void mo3279a(C0136e c0136e, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: b */
        public boolean mo3278b(C0136e c0136e) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public static class C0160c extends LinearLayoutCompat.C0164a {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f588a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f589b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f590c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f591d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f592e;

        /* renamed from: f */
        public boolean f593f;

        public C0160c(int i, int i2) {
            super(i, i2);
            this.f588a = false;
        }

        public C0160c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0160c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0160c(C0160c c0160c) {
            super(c0160c);
            this.f588a = c0160c.f588a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public class C0161d implements C0136e.AbstractC0137a {
        public C0161d() {
            ActionMenuView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: a */
        public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
            boolean z;
            boolean z2;
            boolean z3;
            AbstractC0162e abstractC0162e = ActionMenuView.this.f576A;
            if (abstractC0162e != null) {
                Toolbar.C0185a c0185a = (Toolbar.C0185a) abstractC0162e;
                Iterator<AbstractC3574g> it2 = Toolbar.this.f756G.f11768a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = false;
                        break;
                    } else if (it2.next().m2140a(menuItem)) {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    z3 = true;
                } else {
                    Toolbar.AbstractC0190f abstractC0190f = Toolbar.this.f758I;
                    z3 = abstractC0190f != null ? C2680v.this.f9213b.onMenuItemSelected(0, menuItem) : false;
                }
                if (z3) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: b */
        public void mo2423b(C0136e c0136e) {
            C0136e.AbstractC0137a abstractC0137a = ActionMenuView.this.f583v;
            if (abstractC0137a != null) {
                abstractC0137a.mo2423b(c0136e);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$e.class */
    public interface AbstractC0162e {
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f586y = (int) (56.0f * f);
        this.f587z = (int) (f * 4.0f);
        this.f578q = context;
    }

    /* renamed from: o */
    public static int m8659o(View view, int i, int i2, int i3, int i4) {
        int i5;
        C0160c c0160c = (C0160c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.m8725c();
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
        if (!c0160c.f588a) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        c0160c.f591d = z2;
        c0160c.f589b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0138b
    /* renamed from: a */
    public boolean mo8663a(C0140g c0140g) {
        return this.f577p.m8706r(c0140g, null, 0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j
    /* renamed from: b */
    public void mo4551b(C0136e c0136e) {
        this.f577p = c0136e;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0160c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0160c(getContext(), attributeSet);
    }

    public Menu getMenu() {
        if (this.f577p == null) {
            Context context = getContext();
            C0136e c0136e = new C0136e(context);
            this.f577p = c0136e;
            c0136e.f431e = new C0161d();
            C0202c c0202c = new C0202c(context);
            this.f581t = c0202c;
            c0202c.f846m = true;
            c0202c.f847n = true;
            C0159b c0159b = this.f582u;
            if (c0159b == null) {
                c0159b = new C0159b();
            }
            c0202c.f371e = c0159b;
            this.f577p.m8713b(c0202c, this.f578q);
            C0202c c0202c2 = this.f581t;
            c0202c2.f374h = this;
            this.f577p = c0202c2.f369c;
        }
        return this.f577p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0202c c0202c = this.f581t;
        C0202c.C0206d c0206d = c0202c.f843j;
        return c0206d != null ? c0206d.getDrawable() : c0202c.f845l ? c0202c.f844k : null;
    }

    public int getPopupTheme() {
        return this.f579r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: i */
    public LinearLayoutCompat.C0164a mo8653i(AttributeSet attributeSet) {
        return new C0160c(getContext(), attributeSet);
    }

    /* renamed from: l */
    public C0160c mo8654h() {
        C0160c c0160c = new C0160c(-2, -2);
        ((LinearLayout.LayoutParams) c0160c).gravity = 16;
        return c0160c;
    }

    /* renamed from: m */
    public C0160c mo8652j(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            C0160c c0160c = layoutParams instanceof C0160c ? new C0160c((C0160c) layoutParams) : new C0160c(layoutParams);
            if (((LinearLayout.LayoutParams) c0160c).gravity <= 0) {
                ((LinearLayout.LayoutParams) c0160c).gravity = 16;
            }
            return c0160c;
        }
        return mo8654h();
    }

    /* renamed from: n */
    public boolean m8660n(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0158a) {
                z = false | ((AbstractC0158a) childAt).mo8568a();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0158a) {
                z2 = z | ((AbstractC0158a) childAt2).mo8567b();
            }
        }
        return z2;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0202c c0202c = this.f581t;
        if (c0202c != null) {
            c0202c.mo711g(false);
            if (!this.f581t.m8570o()) {
                return;
            }
            this.f581t.m8572m();
            this.f581t.m8569p();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0202c c0202c = this.f581t;
        if (c0202c != null) {
            c0202c.m8574b();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f584w) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean m8493a = C0236h1.m8493a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0160c c0160c = (C0160c) childAt.getLayoutParams();
                if (c0160c.f588a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (m8660n(i11)) {
                        i12 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m8493a) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) c0160c).leftMargin;
                        i5 = i6 + i12;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0160c).rightMargin;
                        i6 = i5 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i13, i5, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0160c).leftMargin) + ((LinearLayout.LayoutParams) c0160c).rightMargin;
                    m8660n(i11);
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
        if (m8493a) {
            int width = getWidth() - getPaddingRight();
            int i17 = 0;
            while (i17 < childCount) {
                View childAt3 = getChildAt(i17);
                C0160c c0160c2 = (C0160c) childAt3.getLayoutParams();
                int i18 = width;
                if (childAt3.getVisibility() != 8) {
                    if (c0160c2.f588a) {
                        i18 = width;
                    } else {
                        int i19 = width - ((LinearLayout.LayoutParams) c0160c2).rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i20 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                        i18 = i19 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0160c2).leftMargin) + max);
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
            C0160c c0160c3 = (C0160c) childAt4.getLayoutParams();
            int i22 = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                if (c0160c3.f588a) {
                    i22 = paddingLeft;
                } else {
                    int i23 = paddingLeft + ((LinearLayout.LayoutParams) c0160c3).leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i24 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i23, i24, i23 + measuredWidth4, measuredHeight4 + i24);
                    i22 = C0033h.m8890g(measuredWidth4, ((LinearLayout.LayoutParams) c0160c3).rightMargin, max, i23);
                }
            }
            i21++;
            paddingLeft = i22;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x037e, code lost:
        if (r23 > 1) goto L113;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v172 */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v206, types: [long] */
    /* JADX WARN: Type inference failed for: r0v215 */
    /* JADX WARN: Type inference failed for: r0v226, types: [long] */
    /* JADX WARN: Type inference failed for: r0v229, types: [long] */
    /* JADX WARN: Type inference failed for: r0v276, types: [long] */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.onMeasure(int, int):void");
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f581t.f851r = z;
    }

    public void setOnMenuItemClickListener(AbstractC0162e abstractC0162e) {
        this.f576A = abstractC0162e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0202c c0202c = this.f581t;
        C0202c.C0206d c0206d = c0202c.f843j;
        if (c0206d != null) {
            c0206d.setImageDrawable(drawable);
            return;
        }
        c0202c.f845l = true;
        c0202c.f844k = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.f580s = z;
    }

    public void setPopupTheme(int i) {
        if (this.f579r != i) {
            this.f579r = i;
            if (i == 0) {
                this.f578q = getContext();
            } else {
                this.f578q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0202c c0202c) {
        this.f581t = c0202c;
        c0202c.f374h = this;
        this.f577p = c0202c.f369c;
    }
}
