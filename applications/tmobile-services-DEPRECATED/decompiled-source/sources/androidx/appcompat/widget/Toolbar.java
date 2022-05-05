package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private int f1359A;

    /* renamed from: B */
    private int f1360B;

    /* renamed from: C */
    private CharSequence f1361C;

    /* renamed from: D */
    private CharSequence f1362D;

    /* renamed from: E */
    private ColorStateList f1363E;

    /* renamed from: F */
    private ColorStateList f1364F;

    /* renamed from: G */
    private boolean f1365G;

    /* renamed from: H */
    private boolean f1366H;

    /* renamed from: I */
    private final ArrayList<View> f1367I;

    /* renamed from: J */
    private final ArrayList<View> f1368J;

    /* renamed from: K */
    private final int[] f1369K;

    /* renamed from: L */
    OnMenuItemClickListener f1370L;

    /* renamed from: M */
    private final ActionMenuView.OnMenuItemClickListener f1371M;

    /* renamed from: N */
    private ToolbarWidgetWrapper f1372N;

    /* renamed from: O */
    private ActionMenuPresenter f1373O;

    /* renamed from: P */
    private ExpandedActionViewMenuPresenter f1374P;

    /* renamed from: Q */
    private MenuPresenter.Callback f1375Q;

    /* renamed from: R */
    private MenuBuilder.Callback f1376R;

    /* renamed from: S */
    private boolean f1377S;

    /* renamed from: T */
    private final Runnable f1378T;

    /* renamed from: f */
    private ActionMenuView f1379f;

    /* renamed from: g */
    private TextView f1380g;

    /* renamed from: h */
    private TextView f1381h;

    /* renamed from: i */
    private ImageButton f1382i;

    /* renamed from: j */
    private ImageView f1383j;

    /* renamed from: k */
    private Drawable f1384k;

    /* renamed from: l */
    private CharSequence f1385l;

    /* renamed from: m */
    ImageButton f1386m;

    /* renamed from: n */
    View f1387n;

    /* renamed from: o */
    private Context f1388o;

    /* renamed from: p */
    private int f1389p;

    /* renamed from: q */
    private int f1390q;

    /* renamed from: r */
    private int f1391r;

    /* renamed from: s */
    int f1392s;

    /* renamed from: t */
    private int f1393t;

    /* renamed from: u */
    private int f1394u;

    /* renamed from: v */
    private int f1395v;

    /* renamed from: w */
    private int f1396w;

    /* renamed from: x */
    private int f1397x;

    /* renamed from: y */
    private RtlSpacingHelper f1398y;

    /* renamed from: z */
    private int f1399z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter.class */
    public class ExpandedActionViewMenuPresenter implements MenuPresenter {

        /* renamed from: f */
        MenuBuilder f1403f;

        /* renamed from: g */
        MenuItemImpl f1404g;

        ExpandedActionViewMenuPresenter() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: c */
        public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: d */
        public void mo9523d(boolean z) {
            if (this.f1404g != null) {
                MenuBuilder menuBuilder = this.f1403f;
                boolean z2 = false;
                if (menuBuilder != null) {
                    int size = menuBuilder.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1403f.getItem(i) == this.f1404g) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    mo9521f(this.f1403f, this.f1404g);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: e */
        public boolean mo9522e() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: f */
        public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            View view = Toolbar.this.f1387n;
            if (view instanceof CollapsibleActionView) {
                ((CollapsibleActionView) view).mo21326f();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1387n);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1386m);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1387n = null;
            toolbar3.m21232a();
            this.f1404g = null;
            Toolbar.this.requestLayout();
            menuItemImpl.m21827r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: g */
        public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            Toolbar.this.m21226g();
            ViewParent parent = Toolbar.this.f1386m.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1386m);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1386m);
            }
            Toolbar.this.f1387n = menuItemImpl.getActionView();
            this.f1404g = menuItemImpl;
            ViewParent parent2 = Toolbar.this.f1387n.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1387n);
                }
                LayoutParams m = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                m.f22a = 8388611 | (toolbar4.f1392s & 112);
                m.f1406b = 2;
                toolbar4.f1387n.setLayoutParams(m);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1387n);
            }
            Toolbar.this.m21236G();
            Toolbar.this.requestLayout();
            menuItemImpl.m21827r(true);
            View view = Toolbar.this.f1387n;
            if (!(view instanceof CollapsibleActionView)) {
                return true;
            }
            ((CollapsibleActionView) view).mo21330c();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: h */
        public void mo9519h(MenuPresenter.Callback callback) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: i */
        public void mo9518i(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.f1403f;
            if (!(menuBuilder2 == null || (menuItemImpl = this.f1404g) == null)) {
                menuBuilder2.mo21783f(menuItemImpl);
            }
            this.f1403f = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: j */
        public void mo9517j(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: l */
        public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        /* renamed from: m */
        public Parcelable mo9514m() {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        int f1406b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1406b = 0;
            this.f22a = 8388627;
        }

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1406b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1406b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1406b = 0;
            m21206a(marginLayoutParams);
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1406b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1406b = 0;
            this.f1406b = layoutParams.f1406b;
        }

        /* renamed from: a */
        void m21206a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$OnMenuItemClickListener.class */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.Toolbar.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        int f1407h;

        /* renamed from: i */
        boolean f1408i;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1407h = parcel.readInt();
            this.f1408i = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1407h);
            parcel.writeInt(this.f1408i ? 1 : 0);
        }
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.toolbarStyle);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1360B = 8388627;
        this.f1367I = new ArrayList<>();
        this.f1368J = new ArrayList<>();
        this.f1369K = new int[2];
        this.f1371M = new ActionMenuView.OnMenuItemClickListener() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                OnMenuItemClickListener onMenuItemClickListener = Toolbar.this.f1370L;
                if (onMenuItemClickListener != null) {
                    return onMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.f1378T = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.m21233J();
            }
        };
        TintTypedArray v = TintTypedArray.m21244v(getContext(), attributeSet, C0042R.styleable.Toolbar, i, 0);
        ViewCompat.m19187l0(this, context, C0042R.styleable.Toolbar, attributeSet, v.m21248r(), i, 0);
        this.f1390q = v.m21252n(C0042R.styleable.Toolbar_titleTextAppearance, 0);
        this.f1391r = v.m21252n(C0042R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f1360B = v.m21254l(C0042R.styleable.Toolbar_android_gravity, this.f1360B);
        this.f1392s = v.m21254l(C0042R.styleable.Toolbar_buttonGravity, 48);
        int e = v.m21261e(C0042R.styleable.Toolbar_titleMargin, 0);
        int e2 = v.m21247s(C0042R.styleable.Toolbar_titleMargins) ? v.m21261e(C0042R.styleable.Toolbar_titleMargins, e) : e;
        this.f1397x = e2;
        this.f1396w = e2;
        this.f1395v = e2;
        this.f1394u = e2;
        int e3 = v.m21261e(C0042R.styleable.Toolbar_titleMarginStart, -1);
        if (e3 >= 0) {
            this.f1394u = e3;
        }
        int e4 = v.m21261e(C0042R.styleable.Toolbar_titleMarginEnd, -1);
        if (e4 >= 0) {
            this.f1395v = e4;
        }
        int e5 = v.m21261e(C0042R.styleable.Toolbar_titleMarginTop, -1);
        if (e5 >= 0) {
            this.f1396w = e5;
        }
        int e6 = v.m21261e(C0042R.styleable.Toolbar_titleMarginBottom, -1);
        if (e6 >= 0) {
            this.f1397x = e6;
        }
        this.f1393t = v.m21260f(C0042R.styleable.Toolbar_maxButtonHeight, -1);
        int e7 = v.m21261e(C0042R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int e8 = v.m21261e(C0042R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int f = v.m21260f(C0042R.styleable.Toolbar_contentInsetLeft, 0);
        int f2 = v.m21260f(C0042R.styleable.Toolbar_contentInsetRight, 0);
        m21225h();
        this.f1398y.m21370e(f, f2);
        if (!(e7 == Integer.MIN_VALUE && e8 == Integer.MIN_VALUE)) {
            this.f1398y.m21368g(e7, e8);
        }
        this.f1399z = v.m21261e(C0042R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f1359A = v.m21261e(C0042R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f1384k = v.m21259g(C0042R.styleable.Toolbar_collapseIcon);
        this.f1385l = v.m21250p(C0042R.styleable.Toolbar_collapseContentDescription);
        CharSequence p = v.m21250p(C0042R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(p)) {
            setTitle(p);
        }
        CharSequence p2 = v.m21250p(C0042R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(p2)) {
            setSubtitle(p2);
        }
        this.f1388o = getContext();
        setPopupTheme(v.m21252n(C0042R.styleable.Toolbar_popupTheme, 0));
        Drawable g = v.m21259g(C0042R.styleable.Toolbar_navigationIcon);
        if (g != null) {
            setNavigationIcon(g);
        }
        CharSequence p3 = v.m21250p(C0042R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(p3)) {
            setNavigationContentDescription(p3);
        }
        Drawable g2 = v.m21259g(C0042R.styleable.Toolbar_logo);
        if (g2 != null) {
            setLogo(g2);
        }
        CharSequence p4 = v.m21250p(C0042R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(p4)) {
            setLogoDescription(p4);
        }
        if (v.m21247s(C0042R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(v.m21263c(C0042R.styleable.Toolbar_titleTextColor));
        }
        if (v.m21247s(C0042R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(v.m21263c(C0042R.styleable.Toolbar_subtitleTextColor));
        }
        if (v.m21247s(C0042R.styleable.Toolbar_menu)) {
            m21209x(v.m21252n(C0042R.styleable.Toolbar_menu, 0));
        }
        v.m21243w();
    }

    /* renamed from: B */
    private int m21241B(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int q = m21216q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, q, max + measuredWidth, view.getMeasuredHeight() + q);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: C */
    private int m21240C(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int q = m21216q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, q, max, view.getMeasuredHeight() + q);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: D */
    private int m21239D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: E */
    private void m21238E(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i6 = childMeasureSpec2;
        if (mode != 1073741824) {
            i6 = childMeasureSpec2;
            if (i5 >= 0) {
                int i7 = i5;
                if (mode != 0) {
                    i7 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
                }
                i6 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i6);
    }

    /* renamed from: F */
    private void m21237F() {
        removeCallbacks(this.f1378T);
        post(this.f1378T);
    }

    /* renamed from: H */
    private boolean m21235H() {
        if (!this.f1377S) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m21234I(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: I */
    private boolean m21234I(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private void m21231b(List<View> list, int i) {
        boolean z = ViewCompat.m19244A(this) == 1;
        int childCount = getChildCount();
        int b = GravityCompat.m19304b(i, ViewCompat.m19244A(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1406b == 0 && m21234I(childAt) && m21217p(layoutParams.f22a) == b) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1406b == 0 && m21234I(childAt2) && m21217p(layoutParams2.f22a) == b) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    private void m21230c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams m = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (LayoutParams) layoutParams;
        m.f1406b = 1;
        if (!z || this.f1387n == null) {
            addView(view, m);
            return;
        }
        view.setLayoutParams(m);
        this.f1368J.add(view);
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    /* renamed from: h */
    private void m21225h() {
        if (this.f1398y == null) {
            this.f1398y = new RtlSpacingHelper();
        }
    }

    /* renamed from: i */
    private void m21224i() {
        if (this.f1383j == null) {
            this.f1383j = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: j */
    private void m21223j() {
        m21222k();
        if (this.f1379f.m21703N() == null) {
            MenuBuilder menuBuilder = (MenuBuilder) this.f1379f.getMenu();
            if (this.f1374P == null) {
                this.f1374P = new ExpandedActionViewMenuPresenter();
            }
            this.f1379f.setExpandedActionViewsExclusive(true);
            menuBuilder.m21872c(this.f1374P, this.f1388o);
        }
    }

    /* renamed from: k */
    private void m21222k() {
        if (this.f1379f == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1379f = actionMenuView;
            actionMenuView.setPopupTheme(this.f1389p);
            this.f1379f.setOnMenuItemClickListener(this.f1371M);
            this.f1379f.setMenuCallbacks(this.f1375Q, this.f1376R);
            LayoutParams m = generateDefaultLayoutParams();
            m.f22a = 8388613 | (this.f1392s & 112);
            this.f1379f.setLayoutParams(m);
            m21230c(this.f1379f, false);
        }
    }

    /* renamed from: l */
    private void m21221l() {
        if (this.f1382i == null) {
            this.f1382i = new AppCompatImageButton(getContext(), null, C0042R.attr.toolbarNavigationButtonStyle);
            LayoutParams m = generateDefaultLayoutParams();
            m.f22a = 8388611 | (this.f1392s & 112);
            this.f1382i.setLayoutParams(m);
        }
    }

    /* renamed from: p */
    private int m21217p(int i) {
        int A = ViewCompat.m19244A(this);
        int b = GravityCompat.m19304b(i, A) & 7;
        if (b != 1) {
            int i2 = 3;
            if (!(b == 3 || b == 5)) {
                if (A == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return b;
    }

    /* renamed from: q */
    private int m21216q(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int r = m21215r(layoutParams.f22a);
        if (r == 48) {
            return getPaddingTop() - i2;
        }
        if (r == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (i3 >= i4) {
            int i5 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            i4 = i3;
            if (i5 < i6) {
                i4 = Math.max(0, i3 - (i6 - i5));
            }
        }
        return paddingTop + i4;
    }

    /* renamed from: r */
    private int m21215r(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f1360B & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: s */
    private int m21214s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return MarginLayoutParamsCompat.m19294b(marginLayoutParams) + MarginLayoutParamsCompat.m19295a(marginLayoutParams);
    }

    /* renamed from: t */
    private int m21213t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: u */
    private int m21212u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            i = Math.max(0, -i5);
            i2 = Math.max(0, -i6);
            i3 += max + view.getMeasuredWidth() + max2;
        }
        return i3;
    }

    /* renamed from: y */
    private boolean m21208y(View view) {
        return view.getParent() == this || this.f1368J.contains(view);
    }

    /* renamed from: A */
    public boolean m21242A() {
        ActionMenuView actionMenuView = this.f1379f;
        return actionMenuView != null && actionMenuView.m21707J();
    }

    /* renamed from: G */
    void m21236G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((LayoutParams) childAt.getLayoutParams()).f1406b == 2 || childAt == this.f1379f)) {
                removeViewAt(childCount);
                this.f1368J.add(childAt);
            }
        }
    }

    /* renamed from: J */
    public boolean m21233J() {
        ActionMenuView actionMenuView = this.f1379f;
        return actionMenuView != null && actionMenuView.m21702O();
    }

    /* renamed from: a */
    void m21232a() {
        for (int size = this.f1368J.size() - 1; size >= 0; size--) {
            addView(this.f1368J.get(size));
        }
        this.f1368J.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @RestrictTo
    /* renamed from: d */
    public boolean m21229d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f1379f) != null && actionMenuView.m21706K();
    }

    /* renamed from: e */
    public void m21228e() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f1374P;
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.f1404g;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    /* renamed from: f */
    public void m21227f() {
        ActionMenuView actionMenuView = this.f1379f;
        if (actionMenuView != null) {
            actionMenuView.m21715B();
        }
    }

    /* renamed from: g */
    void m21226g() {
        if (this.f1386m == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C0042R.attr.toolbarNavigationButtonStyle);
            this.f1386m = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f1384k);
            this.f1386m.setContentDescription(this.f1385l);
            LayoutParams m = generateDefaultLayoutParams();
            m.f22a = 8388611 | (this.f1392s & 112);
            m.f1406b = 2;
            this.f1386m.setLayoutParams(m);
            this.f1386m.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.m21228e();
                }
            });
        }
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f1386m;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f1386m;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        RtlSpacingHelper rtlSpacingHelper = this.f1398y;
        return rtlSpacingHelper != null ? rtlSpacingHelper.m21374a() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f1359A;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        RtlSpacingHelper rtlSpacingHelper = this.f1398y;
        return rtlSpacingHelper != null ? rtlSpacingHelper.m21373b() : 0;
    }

    public int getContentInsetRight() {
        RtlSpacingHelper rtlSpacingHelper = this.f1398y;
        return rtlSpacingHelper != null ? rtlSpacingHelper.m21372c() : 0;
    }

    public int getContentInsetStart() {
        RtlSpacingHelper rtlSpacingHelper = this.f1398y;
        return rtlSpacingHelper != null ? rtlSpacingHelper.m21371d() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f1399z;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder N;
        ActionMenuView actionMenuView = this.f1379f;
        return actionMenuView != null && (N = actionMenuView.m21703N()) != null && N.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f1359A, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return ViewCompat.m19244A(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return ViewCompat.m19244A(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1399z, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1383j;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1383j;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m21223j();
        return this.f1379f.getMenu();
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1382i;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1382i;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f1373O;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        m21223j();
        return this.f1379f.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1388o;
    }

    public int getPopupTheme() {
        return this.f1389p;
    }

    public CharSequence getSubtitle() {
        return this.f1362D;
    }

    @Nullable
    @RestrictTo
    final TextView getSubtitleTextView() {
        return this.f1381h;
    }

    public CharSequence getTitle() {
        return this.f1361C;
    }

    public int getTitleMarginBottom() {
        return this.f1397x;
    }

    public int getTitleMarginEnd() {
        return this.f1395v;
    }

    public int getTitleMarginStart() {
        return this.f1394u;
    }

    public int getTitleMarginTop() {
        return this.f1396w;
    }

    @Nullable
    @RestrictTo
    final TextView getTitleTextView() {
        return this.f1380g;
    }

    @RestrictTo
    public DecorToolbar getWrapper() {
        if (this.f1372N == null) {
            this.f1372N = new ToolbarWidgetWrapper(this, true);
        }
        return this.f1372N;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1378T);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1366H = false;
        }
        if (!this.f1366H) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1366H = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f1366H = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:104:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0553 A[LOOP:0: B:120:0x054d->B:122:0x0553, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0588 A[LOOP:1: B:124:0x0582->B:126:0x0588, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0603 A[LOOP:2: B:134:0x05fd->B:136:0x0603, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0364  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.f1369K;
        int resolveSizeAndState = 0;
        if (ViewUtils.m21149b(this)) {
            c2 = 1;
            c = 0;
        } else {
            c2 = 0;
            c = 1;
        }
        if (m21234I(this.f1382i)) {
            m21238E(this.f1382i, i, 0, i2, 0, this.f1393t);
            i5 = this.f1382i.getMeasuredWidth() + m21214s(this.f1382i);
            i4 = Math.max(0, this.f1382i.getMeasuredHeight() + m21213t(this.f1382i));
            i3 = View.combineMeasuredStates(0, this.f1382i.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i4;
        int i10 = i3;
        if (m21234I(this.f1386m)) {
            m21238E(this.f1386m, i, 0, i2, 0, this.f1393t);
            i5 = this.f1386m.getMeasuredWidth() + m21214s(this.f1386m);
            i9 = Math.max(i4, this.f1386m.getMeasuredHeight() + m21213t(this.f1386m));
            i10 = View.combineMeasuredStates(i3, this.f1386m.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i5);
        iArr[c2] = Math.max(0, currentContentInsetStart - i5);
        if (m21234I(this.f1379f)) {
            m21238E(this.f1379f, i, max, i2, 0, this.f1393t);
            i6 = this.f1379f.getMeasuredWidth() + m21214s(this.f1379f);
            i9 = Math.max(i9, this.f1379f.getMeasuredHeight() + m21213t(this.f1379f));
            i10 = View.combineMeasuredStates(i10, this.f1379f.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c] = Math.max(0, currentContentInsetEnd - i6);
        int i11 = i9;
        int i12 = i10;
        int i13 = max2;
        if (m21234I(this.f1387n)) {
            i13 = max2 + m21239D(this.f1387n, i, max2, i2, 0, iArr);
            i11 = Math.max(i9, this.f1387n.getMeasuredHeight() + m21213t(this.f1387n));
            i12 = View.combineMeasuredStates(i10, this.f1387n.getMeasuredState());
        }
        int i14 = i11;
        int i15 = i12;
        int i16 = i13;
        if (m21234I(this.f1383j)) {
            i16 = i13 + m21239D(this.f1383j, i, i13, i2, 0, iArr);
            i14 = Math.max(i11, this.f1383j.getMeasuredHeight() + m21213t(this.f1383j));
            i15 = View.combineMeasuredStates(i12, this.f1383j.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            i14 = i14;
            i15 = i15;
            i16 = i16;
            if (((LayoutParams) childAt.getLayoutParams()).f1406b == 0) {
                if (!m21234I(childAt)) {
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                } else {
                    i16 += m21239D(childAt, i, i16, i2, 0, iArr);
                    i14 = Math.max(i14, childAt.getMeasuredHeight() + m21213t(childAt));
                    i15 = View.combineMeasuredStates(i15, childAt.getMeasuredState());
                }
            }
        }
        int i18 = this.f1396w + this.f1397x;
        int i19 = this.f1394u + this.f1395v;
        if (m21234I(this.f1380g)) {
            m21239D(this.f1380g, i, i16 + i19, i2, i18, iArr);
            int measuredWidth = this.f1380g.getMeasuredWidth();
            int s = m21214s(this.f1380g);
            int measuredHeight = this.f1380g.getMeasuredHeight();
            int t = m21213t(this.f1380g);
            i15 = View.combineMeasuredStates(i15, this.f1380g.getMeasuredState());
            i8 = measuredHeight + t;
            i7 = measuredWidth + s;
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (m21234I(this.f1381h)) {
            i7 = Math.max(i7, m21239D(this.f1381h, i, i16 + i19, i2, i8 + i18, iArr));
            i8 += this.f1381h.getMeasuredHeight() + m21213t(this.f1381h);
            i15 = View.combineMeasuredStates(i15, this.f1381h.getMeasuredState());
        }
        int max3 = Math.max(i14, i8);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(i16 + i7 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i15);
        resolveSizeAndState = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i15 << 16);
        if (m21235H()) {
        }
        setMeasuredDimension(resolveSizeAndState2, resolveSizeAndState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        ActionMenuView actionMenuView = this.f1379f;
        MenuBuilder N = actionMenuView != null ? actionMenuView.m21703N() : null;
        int i = savedState.f1407h;
        if (!(i == 0 || this.f1374P == null || N == null || (findItem = N.findItem(i)) == null)) {
            findItem.expandActionView();
        }
        if (savedState.f1408i) {
            m21237F();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m21225h();
        RtlSpacingHelper rtlSpacingHelper = this.f1398y;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        rtlSpacingHelper.m21369f(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        MenuItemImpl menuItemImpl;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f1374P;
        if (!(expandedActionViewMenuPresenter == null || (menuItemImpl = expandedActionViewMenuPresenter.f1404g) == null)) {
            savedState.f1407h = menuItemImpl.getItemId();
        }
        savedState.f1408i = m21242A();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1365G = false;
        }
        if (!this.f1365G) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1365G = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f1365G = false;
        return true;
    }

    public void setCollapseContentDescription(@StringRes int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21226g();
        }
        ImageButton imageButton = this.f1386m;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(@DrawableRes int i) {
        setCollapseIcon(AppCompatResources.m22069d(getContext(), i));
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            m21226g();
            this.f1386m.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f1386m;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.f1384k);
        }
    }

    @RestrictTo
    public void setCollapsible(boolean z) {
        this.f1377S = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1359A) {
            this.f1359A = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1399z) {
            this.f1399z = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        m21225h();
        this.f1398y.m21370e(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        m21225h();
        this.f1398y.m21368g(i, i2);
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(AppCompatResources.m22069d(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m21224i();
            if (!m21208y(this.f1383j)) {
                m21230c(this.f1383j, true);
            }
        } else {
            ImageView imageView = this.f1383j;
            if (imageView != null && m21208y(imageView)) {
                removeView(this.f1383j);
                this.f1368J.remove(this.f1383j);
            }
        }
        ImageView imageView2 = this.f1383j;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21224i();
        }
        ImageView imageView = this.f1383j;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    @RestrictTo
    public void setMenu(MenuBuilder menuBuilder, ActionMenuPresenter actionMenuPresenter) {
        if (menuBuilder != null || this.f1379f != null) {
            m21222k();
            MenuBuilder N = this.f1379f.m21703N();
            if (N != menuBuilder) {
                if (N != null) {
                    N.m21884Q(this.f1373O);
                    N.m21884Q(this.f1374P);
                }
                if (this.f1374P == null) {
                    this.f1374P = new ExpandedActionViewMenuPresenter();
                }
                actionMenuPresenter.m21735J(true);
                if (menuBuilder != null) {
                    menuBuilder.m21872c(actionMenuPresenter, this.f1388o);
                    menuBuilder.m21872c(this.f1374P, this.f1388o);
                } else {
                    actionMenuPresenter.mo9518i(this.f1388o, null);
                    this.f1374P.mo9518i(this.f1388o, null);
                    actionMenuPresenter.mo9523d(true);
                    this.f1374P.mo9523d(true);
                }
                this.f1379f.setPopupTheme(this.f1389p);
                this.f1379f.setPresenter(actionMenuPresenter);
                this.f1373O = actionMenuPresenter;
            }
        }
    }

    @RestrictTo
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f1375Q = callback;
        this.f1376R = callback2;
        ActionMenuView actionMenuView = this.f1379f;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(callback, callback2);
        }
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m21221l();
        }
        ImageButton imageButton = this.f1382i;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(AppCompatResources.m22069d(getContext(), i));
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            m21221l();
            if (!m21208y(this.f1382i)) {
                m21230c(this.f1382i, true);
            }
        } else {
            ImageButton imageButton = this.f1382i;
            if (imageButton != null && m21208y(imageButton)) {
                removeView(this.f1382i);
                this.f1368J.remove(this.f1382i);
            }
        }
        ImageButton imageButton2 = this.f1382i;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m21221l();
        this.f1382i.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.f1370L = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        m21223j();
        this.f1379f.setOverflowIcon(drawable);
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.f1389p != i) {
            this.f1389p = i;
            if (i == 0) {
                this.f1388o = getContext();
            } else {
                this.f1388o = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1381h == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1381h = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1381h.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1391r;
                if (i != 0) {
                    this.f1381h.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1364F;
                if (colorStateList != null) {
                    this.f1381h.setTextColor(colorStateList);
                }
            }
            if (!m21208y(this.f1381h)) {
                m21230c(this.f1381h, true);
            }
        } else {
            TextView textView = this.f1381h;
            if (textView != null && m21208y(textView)) {
                removeView(this.f1381h);
                this.f1368J.remove(this.f1381h);
            }
        }
        TextView textView2 = this.f1381h;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1362D = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int i) {
        this.f1391r = i;
        TextView textView = this.f1381h;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f1364F = colorStateList;
        TextView textView = this.f1381h;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1380g == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1380g = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1380g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1390q;
                if (i != 0) {
                    this.f1380g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1363E;
                if (colorStateList != null) {
                    this.f1380g.setTextColor(colorStateList);
                }
            }
            if (!m21208y(this.f1380g)) {
                m21230c(this.f1380g, true);
            }
        } else {
            TextView textView = this.f1380g;
            if (textView != null && m21208y(textView)) {
                removeView(this.f1380g);
                this.f1368J.remove(this.f1380g);
            }
        }
        TextView textView2 = this.f1380g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1361C = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.f1394u = i;
        this.f1396w = i2;
        this.f1395v = i3;
        this.f1397x = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.f1397x = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f1395v = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f1394u = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f1396w = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, @StyleRes int i) {
        this.f1390q = i;
        TextView textView = this.f1380g;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@ColorInt int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f1363E = colorStateList;
        TextView textView = this.f1380g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: v */
    public boolean m21211v() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f1374P;
        return (expandedActionViewMenuPresenter == null || expandedActionViewMenuPresenter.f1404g == null) ? false : true;
    }

    /* renamed from: w */
    public boolean m21210w() {
        ActionMenuView actionMenuView = this.f1379f;
        return actionMenuView != null && actionMenuView.m21709H();
    }

    /* renamed from: x */
    public void m21209x(@MenuRes int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    @RestrictTo
    /* renamed from: z */
    public boolean m21207z() {
        ActionMenuView actionMenuView = this.f1379f;
        return actionMenuView != null && actionMenuView.m21708I();
    }
}
