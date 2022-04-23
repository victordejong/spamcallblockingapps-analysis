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
import androidx.appcompat.a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.c;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.e;
import androidx.core.view.h;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {
    private int A;
    private int B;
    private ColorStateList C;
    private ColorStateList D;
    private boolean E;
    private boolean F;
    private final ArrayList<View> G;
    private final int[] H;
    private final ActionMenuView.d I;
    private ac J;
    private ActionMenuPresenter K;
    private m.a L;
    private g.a M;
    private boolean N;
    private final Runnable O;

    /* renamed from: a  reason: collision with root package name */
    ActionMenuView f1021a;

    /* renamed from: b  reason: collision with root package name */
    ImageButton f1022b;

    /* renamed from: c  reason: collision with root package name */
    View f1023c;

    /* renamed from: d  reason: collision with root package name */
    int f1024d;
    public int e;
    public int f;
    public int g;
    public int h;
    public CharSequence i;
    CharSequence j;
    final ArrayList<View> k;
    b l;
    a m;
    private TextView n;
    private TextView o;
    private ImageButton p;
    private ImageView q;
    private Drawable r;
    private CharSequence s;
    private Context t;
    private int u;
    private int v;
    private int w;
    private int x;
    private v y;
    private int z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b  reason: collision with root package name */
        int f1028b;

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1028b = 0;
            this.f567a = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f1028b = 0;
            this.f567a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1028b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1028b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1028b = 0;
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1028b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1028b = 0;
            this.f1028b = layoutParams.f1028b;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.Toolbar.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int expandedMenuItemId;
        boolean isOverflowOpen;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        g f1029a;

        /* renamed from: b  reason: collision with root package name */
        i f1030b;

        a() {
        }

        @Override // androidx.appcompat.view.menu.m
        public final void a(Context context, g gVar) {
            i iVar;
            g gVar2 = this.f1029a;
            if (!(gVar2 == null || (iVar = this.f1030b) == null)) {
                gVar2.b(iVar);
            }
            this.f1029a = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public final void a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.m
        public final void a(g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m
        public final void a(m.a aVar) {
        }

        @Override // androidx.appcompat.view.menu.m
        public final void a(boolean z) {
            if (this.f1030b != null) {
                g gVar = this.f1029a;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1029a.getItem(i) == this.f1030b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    c(this.f1030b);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public final boolean a() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public final boolean a(r rVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public final int b() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.m
        public final boolean b(i iVar) {
            Toolbar.this.g();
            ViewParent parent = Toolbar.this.f1022b.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1022b);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1022b);
            }
            Toolbar.this.f1023c = iVar.getActionView();
            this.f1030b = iVar;
            ViewParent parent2 = Toolbar.this.f1023c.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1023c);
                }
                LayoutParams h = Toolbar.h();
                h.f567a = 8388611 | (Toolbar.this.f1024d & 112);
                h.f1028b = 2;
                Toolbar.this.f1023c.setLayoutParams(h);
                Toolbar toolbar4 = Toolbar.this;
                toolbar4.addView(toolbar4.f1023c);
            }
            Toolbar toolbar5 = Toolbar.this;
            for (int childCount = toolbar5.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar5.getChildAt(childCount);
                if (!(((LayoutParams) childAt.getLayoutParams()).f1028b == 2 || childAt == toolbar5.f1021a)) {
                    toolbar5.removeViewAt(childCount);
                    toolbar5.k.add(childAt);
                }
            }
            Toolbar.this.requestLayout();
            iVar.d(true);
            if (!(Toolbar.this.f1023c instanceof c)) {
                return true;
            }
            ((c) Toolbar.this.f1023c).a();
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public final boolean c(i iVar) {
            if (Toolbar.this.f1023c instanceof c) {
                ((c) Toolbar.this.f1023c).b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1023c);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1022b);
            Toolbar.this.f1023c = null;
            Toolbar.this.j();
            this.f1030b = null;
            Toolbar.this.requestLayout();
            iVar.d(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public final Parcelable f() {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public interface b {
        boolean a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.B = 8388627;
        this.G = new ArrayList<>();
        this.k = new ArrayList<>();
        this.H = new int[2];
        this.I = new ActionMenuView.d() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.d
            public final boolean a(MenuItem menuItem) {
                if (Toolbar.this.l != null) {
                    return Toolbar.this.l.a(menuItem);
                }
                return false;
            }
        };
        this.O = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.b();
            }
        };
        ab a2 = ab.a(getContext(), attributeSet, a.j.Toolbar, i, 0);
        v.a(this, context, a.j.Toolbar, attributeSet, a2.f1044a, i);
        this.v = a2.g(a.j.Toolbar_titleTextAppearance, 0);
        this.w = a2.g(a.j.Toolbar_subtitleTextAppearance, 0);
        this.B = a2.c(a.j.Toolbar_android_gravity, this.B);
        this.f1024d = a2.c(a.j.Toolbar_buttonGravity, 48);
        int d2 = a2.d(a.j.Toolbar_titleMargin, 0);
        int d3 = a2.g(a.j.Toolbar_titleMargins) ? a2.d(a.j.Toolbar_titleMargins, d2) : d2;
        this.h = d3;
        this.g = d3;
        this.f = d3;
        this.e = d3;
        int d4 = a2.d(a.j.Toolbar_titleMarginStart, -1);
        if (d4 >= 0) {
            this.e = d4;
        }
        int d5 = a2.d(a.j.Toolbar_titleMarginEnd, -1);
        if (d5 >= 0) {
            this.f = d5;
        }
        int d6 = a2.d(a.j.Toolbar_titleMarginTop, -1);
        if (d6 >= 0) {
            this.g = d6;
        }
        int d7 = a2.d(a.j.Toolbar_titleMarginBottom, -1);
        if (d7 >= 0) {
            this.h = d7;
        }
        this.x = a2.e(a.j.Toolbar_maxButtonHeight, -1);
        int d8 = a2.d(a.j.Toolbar_contentInsetStart, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int d9 = a2.d(a.j.Toolbar_contentInsetEnd, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int e = a2.e(a.j.Toolbar_contentInsetLeft, 0);
        int e2 = a2.e(a.j.Toolbar_contentInsetRight, 0);
        t();
        this.y.b(e, e2);
        if (!(d8 == Integer.MIN_VALUE && d9 == Integer.MIN_VALUE)) {
            this.y.a(d8, d9);
        }
        this.z = a2.d(a.j.Toolbar_contentInsetStartWithNavigation, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.A = a2.d(a.j.Toolbar_contentInsetEndWithActions, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.r = a2.a(a.j.Toolbar_collapseIcon);
        this.s = a2.c(a.j.Toolbar_collapseContentDescription);
        CharSequence c2 = a2.c(a.j.Toolbar_title);
        if (!TextUtils.isEmpty(c2)) {
            setTitle(c2);
        }
        CharSequence c3 = a2.c(a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(c3)) {
            setSubtitle(c3);
        }
        this.t = getContext();
        setPopupTheme(a2.g(a.j.Toolbar_popupTheme, 0));
        Drawable a3 = a2.a(a.j.Toolbar_navigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence c4 = a2.c(a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(c4)) {
            setNavigationContentDescription(c4);
        }
        Drawable a4 = a2.a(a.j.Toolbar_logo);
        if (a4 != null) {
            setLogo(a4);
        }
        CharSequence c5 = a2.c(a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(c5)) {
            setLogoDescription(c5);
        }
        if (a2.g(a.j.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.e(a.j.Toolbar_titleTextColor));
        }
        if (a2.g(a.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.e(a.j.Toolbar_subtitleTextColor));
        }
        if (a2.g(a.j.Toolbar_menu)) {
            a(a2.g(a.j.Toolbar_menu, 0));
        }
        a2.f1044a.recycle();
    }

    private int a(View view, int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int b2 = b(layoutParams.f567a);
        if (b2 == 48) {
            return getPaddingTop() - i3;
        }
        if (b2 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        if (i4 < layoutParams.topMargin) {
            i2 = layoutParams.topMargin;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            i2 = i4;
            if (i5 < layoutParams.bottomMargin) {
                i2 = Math.max(0, i4 - (layoutParams.bottomMargin - i5));
            }
        }
        return paddingTop + i2;
    }

    private int a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private int a(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + layoutParams.rightMargin;
    }

    private static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    private void a(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i5 = childMeasureSpec2;
        if (mode != 1073741824) {
            i5 = childMeasureSpec2;
            if (i4 >= 0) {
                int i6 = i4;
                if (mode != 0) {
                    i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
                }
                i5 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i5);
    }

    private void a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams h = layoutParams == null ? h() : !checkLayoutParams(layoutParams) ? a(layoutParams) : (LayoutParams) layoutParams;
        h.f1028b = 1;
        if (!z || this.f1023c == null) {
            addView(view, h);
            return;
        }
        view.setLayoutParams(h);
        this.k.add(view);
    }

    private void a(List<View> list, int i) {
        boolean z = v.f(this) == 1;
        int childCount = getChildCount();
        int a2 = e.a(i, v.f(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1028b == 0 && a(childAt) && c(layoutParams.f567a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1028b == 0 && a(childAt2) && c(layoutParams2.f567a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private boolean a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int b(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.B & 112;
                }
            }
        }
        return i3;
    }

    private static int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return h.a(marginLayoutParams) + h.b(marginLayoutParams);
    }

    private int b(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + layoutParams.leftMargin);
    }

    private int c(int i) {
        int f = v.f(this);
        int a2 = e.a(i, f) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : f == 1 ? 5 : 3;
    }

    private static int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private boolean d(View view) {
        return view.getParent() == this || this.k.contains(view);
    }

    protected static LayoutParams h() {
        return new LayoutParams(-2, -2);
    }

    private void k() {
        if (this.q == null) {
            this.q = new AppCompatImageView(getContext());
        }
    }

    private void l() {
        m();
        if (this.f1021a.f866a == null) {
            g gVar = (g) this.f1021a.b();
            if (this.m == null) {
                this.m = new a();
            }
            this.f1021a.setExpandedActionViewsExclusive(true);
            gVar.a(this.m, this.t);
        }
    }

    private void m() {
        if (this.f1021a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1021a = actionMenuView;
            actionMenuView.setPopupTheme(this.u);
            this.f1021a.setOnMenuItemClickListener(this.I);
            this.f1021a.setMenuCallbacks(this.L, this.M);
            LayoutParams h = h();
            h.f567a = 8388613 | (this.f1024d & 112);
            this.f1021a.setLayoutParams(h);
            a((View) this.f1021a, false);
        }
    }

    private MenuInflater n() {
        return new androidx.appcompat.view.g(getContext());
    }

    private int o() {
        v vVar = this.y;
        if (vVar != null) {
            return vVar.g ? vVar.f1136b : vVar.f1135a;
        }
        return 0;
    }

    private int p() {
        v vVar = this.y;
        if (vVar != null) {
            return vVar.g ? vVar.f1135a : vVar.f1136b;
        }
        return 0;
    }

    private int q() {
        return e() != null ? Math.max(o(), Math.max(this.z, 0)) : o();
    }

    private int r() {
        g gVar;
        ActionMenuView actionMenuView = this.f1021a;
        return actionMenuView != null && (gVar = actionMenuView.f866a) != null && gVar.hasVisibleItems() ? Math.max(p(), Math.max(this.A, 0)) : p();
    }

    private void s() {
        if (this.p == null) {
            this.p = new AppCompatImageButton(getContext(), null, a.C0018a.toolbarNavigationButtonStyle);
            LayoutParams h = h();
            h.f567a = 8388611 | (this.f1024d & 112);
            this.p.setLayoutParams(h);
        }
    }

    private void t() {
        if (this.y == null) {
            this.y = new v();
        }
    }

    public final void a(int i) {
        n().inflate(i, f());
    }

    public final boolean ak_() {
        ActionMenuView actionMenuView = this.f1021a;
        if (actionMenuView == null) {
            return false;
        }
        return actionMenuView.f868c != null && actionMenuView.f868c.j();
    }

    public final boolean b() {
        ActionMenuView actionMenuView = this.f1021a;
        if (actionMenuView == null) {
            return false;
        }
        return actionMenuView.f868c != null && actionMenuView.f868c.e();
    }

    public final void c() {
        a aVar = this.m;
        i iVar = aVar == null ? null : aVar.f1030b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public final CharSequence d() {
        ImageButton imageButton = this.p;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public final Drawable e() {
        ImageButton imageButton = this.p;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public final Menu f() {
        l();
        return this.f1021a.b();
    }

    final void g() {
        if (this.f1022b == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, a.C0018a.toolbarNavigationButtonStyle);
            this.f1022b = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.r);
            this.f1022b.setContentDescription(this.s);
            LayoutParams h = h();
            h.f567a = 8388611 | (this.f1024d & 112);
            h.f1028b = 2;
            this.f1022b.setLayoutParams(h);
            this.f1022b.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Toolbar.this.c();
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    public final o i() {
        if (this.J == null) {
            this.J = new ac(this, true);
        }
        return this.J;
    }

    final void j() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            addView(this.k.get(size));
        }
        this.k.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.F = false;
        }
        if (!this.F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.F = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.F = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0567 A[LOOP:0: B:128:0x0561->B:130:0x0567, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x059c A[LOOP:1: B:132:0x0596->B:134:0x059c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x05e9 A[LOOP:2: B:136:0x05e2->B:138:0x05e9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0691 A[LOOP:3: B:146:0x068b->B:148:0x0691, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x037a  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x040a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.f1021a;
        g gVar = actionMenuView != null ? actionMenuView.f866a : null;
        if (!(savedState.expandedMenuItemId == 0 || this.m == null || gVar == null || (findItem = gVar.findItem(savedState.expandedMenuItemId)) == null)) {
            findItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            removeCallbacks(this.O);
            post(this.O);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        t();
        v vVar = this.y;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != vVar.g) {
            vVar.g = z;
            if (!vVar.h) {
                vVar.f1135a = vVar.e;
                vVar.f1136b = vVar.f;
            } else if (z) {
                vVar.f1135a = vVar.f1138d != Integer.MIN_VALUE ? vVar.f1138d : vVar.e;
                vVar.f1136b = vVar.f1137c != Integer.MIN_VALUE ? vVar.f1137c : vVar.f;
            } else {
                vVar.f1135a = vVar.f1137c != Integer.MIN_VALUE ? vVar.f1137c : vVar.e;
                vVar.f1136b = vVar.f1138d != Integer.MIN_VALUE ? vVar.f1138d : vVar.f;
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        a aVar = this.m;
        if (!(aVar == null || aVar.f1030b == null)) {
            savedState.expandedMenuItemId = this.m.f1030b.getItemId();
        }
        savedState.isOverflowOpen = ak_();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.E = false;
        }
        if (!this.E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.E = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.E = false;
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageButton imageButton = this.f1022b;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            this.f1022b.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f1022b;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.r);
        }
    }

    public void setCollapsible(boolean z) {
        this.N = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        if (i2 != this.A) {
            this.A = i2;
            if (e() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        if (i2 != this.z) {
            this.z = i2;
            if (e() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        t();
        this.y.b(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        t();
        this.y.a(i, i2);
    }

    public void setLogo(int i) {
        setLogo(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            k();
            if (!d(this.q)) {
                a((View) this.q, true);
            }
        } else {
            ImageView imageView = this.q;
            if (imageView != null && d(imageView)) {
                removeView(this.q);
                this.k.remove(this.q);
            }
        }
        ImageView imageView2 = this.q;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            k();
        }
        ImageView imageView = this.q;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(g gVar, ActionMenuPresenter actionMenuPresenter) {
        if (gVar != null || this.f1021a != null) {
            m();
            g gVar2 = this.f1021a.f866a;
            if (gVar2 != gVar) {
                if (gVar2 != null) {
                    gVar2.b(this.K);
                    gVar2.b(this.m);
                }
                if (this.m == null) {
                    this.m = new a();
                }
                actionMenuPresenter.l = true;
                if (gVar != null) {
                    gVar.a(actionMenuPresenter, this.t);
                    gVar.a(this.m, this.t);
                } else {
                    actionMenuPresenter.a(this.t, (g) null);
                    this.m.a(this.t, (g) null);
                    actionMenuPresenter.a(true);
                    this.m.a(true);
                }
                this.f1021a.setPopupTheme(this.u);
                this.f1021a.setPresenter(actionMenuPresenter);
                this.K = actionMenuPresenter;
            }
        }
    }

    public void setMenuCallbacks(m.a aVar, g.a aVar2) {
        this.L = aVar;
        this.M = aVar2;
        ActionMenuView actionMenuView = this.f1021a;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            s();
        }
        ImageButton imageButton = this.p;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            s();
            if (!d(this.p)) {
                a((View) this.p, true);
            }
        } else {
            ImageButton imageButton = this.p;
            if (imageButton != null && d(imageButton)) {
                removeView(this.p);
                this.k.remove(this.p);
            }
        }
        ImageButton imageButton2 = this.p;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        s();
        this.p.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(b bVar) {
        this.l = bVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        l();
        this.f1021a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.u != i) {
            this.u = i;
            if (i == 0) {
                this.t = getContext();
            } else {
                this.t = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.o == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.o = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.o.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.w;
                if (i != 0) {
                    this.o.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.D;
                if (colorStateList != null) {
                    this.o.setTextColor(colorStateList);
                }
            }
            if (!d(this.o)) {
                a((View) this.o, true);
            }
        } else {
            TextView textView = this.o;
            if (textView != null && d(textView)) {
                removeView(this.o);
                this.k.remove(this.o);
            }
        }
        TextView textView2 = this.o;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.j = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.w = i;
        TextView textView = this.o;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.D = colorStateList;
        TextView textView = this.o;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.n == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.n = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.n.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.v;
                if (i != 0) {
                    this.n.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.C;
                if (colorStateList != null) {
                    this.n.setTextColor(colorStateList);
                }
            }
            if (!d(this.n)) {
                a((View) this.n, true);
            }
        } else {
            TextView textView = this.n;
            if (textView != null && d(textView)) {
                removeView(this.n);
                this.k.remove(this.n);
            }
        }
        TextView textView2 = this.n;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.i = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.e = i;
        this.g = i2;
        this.f = i3;
        this.h = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.h = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.e = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.g = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.v = i;
        TextView textView = this.n;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.C = colorStateList;
        TextView textView = this.n;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
