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
import androidx.appcompat.C0142a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.AbstractC0243c;
import androidx.appcompat.view.C0248g;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.SubMenuC0292r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.C0908e;
import androidx.core.view.C0912h;
import androidx.core.view.C0926v;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private int f1426A;

    /* renamed from: B */
    private int f1427B;

    /* renamed from: C */
    private ColorStateList f1428C;

    /* renamed from: D */
    private ColorStateList f1429D;

    /* renamed from: E */
    private boolean f1430E;

    /* renamed from: F */
    private boolean f1431F;

    /* renamed from: G */
    private final ArrayList<View> f1432G;

    /* renamed from: H */
    private final int[] f1433H;

    /* renamed from: I */
    private final ActionMenuView.AbstractC0310d f1434I;

    /* renamed from: J */
    private C0371ac f1435J;

    /* renamed from: K */
    private ActionMenuPresenter f1436K;

    /* renamed from: L */
    private AbstractC0283m.AbstractC0284a f1437L;

    /* renamed from: M */
    private C0268g.AbstractC0269a f1438M;

    /* renamed from: N */
    private boolean f1439N;

    /* renamed from: O */
    private final Runnable f1440O;

    /* renamed from: a */
    ActionMenuView f1441a;

    /* renamed from: b */
    ImageButton f1442b;

    /* renamed from: c */
    View f1443c;

    /* renamed from: d */
    int f1444d;

    /* renamed from: e */
    public int f1445e;

    /* renamed from: f */
    public int f1446f;

    /* renamed from: g */
    public int f1447g;

    /* renamed from: h */
    public int f1448h;

    /* renamed from: i */
    public CharSequence f1449i;

    /* renamed from: j */
    CharSequence f1450j;

    /* renamed from: k */
    final ArrayList<View> f1451k;

    /* renamed from: l */
    AbstractC0365b f1452l;

    /* renamed from: m */
    C0364a f1453m;

    /* renamed from: n */
    private TextView f1454n;

    /* renamed from: o */
    private TextView f1455o;

    /* renamed from: p */
    private ImageButton f1456p;

    /* renamed from: q */
    private ImageView f1457q;

    /* renamed from: r */
    private Drawable f1458r;

    /* renamed from: s */
    private CharSequence f1459s;

    /* renamed from: t */
    private Context f1460t;

    /* renamed from: u */
    private int f1461u;

    /* renamed from: v */
    private int f1462v;

    /* renamed from: w */
    private int f1463w;

    /* renamed from: x */
    private int f1464x;

    /* renamed from: y */
    private C0422v f1465y;

    /* renamed from: z */
    private int f1466z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        int f1470b;

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1470b = 0;
            this.f282a = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f1470b = 0;
            this.f282a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1470b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1470b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1470b = 0;
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1470b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1470b = 0;
            this.f1470b = layoutParams.f1470b;
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

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public final class C0364a implements AbstractC0283m {

        /* renamed from: a */
        C0268g f1471a;

        /* renamed from: b */
        C0272i f1472b;

        C0364a() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final void mo10549a(Context context, C0268g c0268g) {
            C0272i c0272i;
            C0268g c0268g2 = this.f1471a;
            if (c0268g2 != null && (c0272i = this.f1472b) != null) {
                c0268g2.mo46037b(c0272i);
            }
            this.f1471a = c0268g;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final void mo10546a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final void mo10545a(C0268g c0268g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final void mo10541a(boolean z) {
            if (this.f1472b != null) {
                C0268g c0268g = this.f1471a;
                boolean z2 = false;
                if (c0268g != null) {
                    int size = c0268g.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1471a.getItem(i) == this.f1472b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (z2) {
                    return;
                }
                mo10533c(this.f1472b);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final boolean mo10551a() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: a */
        public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: b */
        public final int mo10540b() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: b */
        public final boolean mo10537b(C0272i c0272i) {
            Toolbar.this.m45835g();
            ViewParent parent = Toolbar.this.f1442b.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1442b);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1442b);
            }
            Toolbar.this.f1443c = c0272i.getActionView();
            this.f1472b = c0272i;
            ViewParent parent2 = Toolbar.this.f1443c.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1443c);
                }
                LayoutParams m45834h = Toolbar.m45834h();
                m45834h.f282a = 8388611 | (Toolbar.this.f1444d & 112);
                m45834h.f1470b = 2;
                Toolbar.this.f1443c.setLayoutParams(m45834h);
                Toolbar toolbar4 = Toolbar.this;
                toolbar4.addView(toolbar4.f1443c);
            }
            Toolbar toolbar5 = Toolbar.this;
            for (int childCount = toolbar5.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar5.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).f1470b != 2 && childAt != toolbar5.f1441a) {
                    toolbar5.removeViewAt(childCount);
                    toolbar5.f1451k.add(childAt);
                }
            }
            Toolbar.this.requestLayout();
            c0272i.m46070d(true);
            if (Toolbar.this.f1443c instanceof AbstractC0243c) {
                ((AbstractC0243c) Toolbar.this.f1443c).mo45903a();
                return true;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: c */
        public final boolean mo10533c(C0272i c0272i) {
            if (Toolbar.this.f1443c instanceof AbstractC0243c) {
                ((AbstractC0243c) Toolbar.this.f1443c).mo45895b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1443c);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1442b);
            Toolbar.this.f1443c = null;
            Toolbar.this.m45832j();
            this.f1472b = null;
            Toolbar.this.requestLayout();
            c0272i.m46070d(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m
        /* renamed from: f */
        public final Parcelable mo10530f() {
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public interface AbstractC0365b {
        /* renamed from: a */
        boolean mo45820a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1427B = 8388627;
        this.f1432G = new ArrayList<>();
        this.f1451k = new ArrayList<>();
        this.f1433H = new int[2];
        this.f1434I = new ActionMenuView.AbstractC0310d() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0310d
            /* renamed from: a */
            public final boolean mo45821a(MenuItem menuItem) {
                if (Toolbar.this.f1452l != null) {
                    return Toolbar.this.f1452l.mo45820a(menuItem);
                }
                return false;
            }
        };
        this.f1440O = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.m45846b();
            }
        };
        C0370ab m45804a = C0370ab.m45804a(getContext(), attributeSet, C0142a.C0152j.Toolbar, i, 0);
        C0926v.m44133a(this, context, C0142a.C0152j.Toolbar, attributeSet, m45804a.f1491a, i);
        this.f1462v = m45804a.m45792g(C0142a.C0152j.Toolbar_titleTextAppearance, 0);
        this.f1463w = m45804a.m45792g(C0142a.C0152j.Toolbar_subtitleTextAppearance, 0);
        this.f1427B = m45804a.m45800c(C0142a.C0152j.Toolbar_android_gravity, this.f1427B);
        this.f1444d = m45804a.m45800c(C0142a.C0152j.Toolbar_buttonGravity, 48);
        int m45798d = m45804a.m45798d(C0142a.C0152j.Toolbar_titleMargin, 0);
        int m45798d2 = m45804a.m45793g(C0142a.C0152j.Toolbar_titleMargins) ? m45804a.m45798d(C0142a.C0152j.Toolbar_titleMargins, m45798d) : m45798d;
        this.f1448h = m45798d2;
        this.f1447g = m45798d2;
        this.f1446f = m45798d2;
        this.f1445e = m45798d2;
        int m45798d3 = m45804a.m45798d(C0142a.C0152j.Toolbar_titleMarginStart, -1);
        if (m45798d3 >= 0) {
            this.f1445e = m45798d3;
        }
        int m45798d4 = m45804a.m45798d(C0142a.C0152j.Toolbar_titleMarginEnd, -1);
        if (m45798d4 >= 0) {
            this.f1446f = m45798d4;
        }
        int m45798d5 = m45804a.m45798d(C0142a.C0152j.Toolbar_titleMarginTop, -1);
        if (m45798d5 >= 0) {
            this.f1447g = m45798d5;
        }
        int m45798d6 = m45804a.m45798d(C0142a.C0152j.Toolbar_titleMarginBottom, -1);
        if (m45798d6 >= 0) {
            this.f1448h = m45798d6;
        }
        this.f1464x = m45804a.m45796e(C0142a.C0152j.Toolbar_maxButtonHeight, -1);
        int m45798d7 = m45804a.m45798d(C0142a.C0152j.Toolbar_contentInsetStart, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int m45798d8 = m45804a.m45798d(C0142a.C0152j.Toolbar_contentInsetEnd, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int m45796e = m45804a.m45796e(C0142a.C0152j.Toolbar_contentInsetLeft, 0);
        int m45796e2 = m45804a.m45796e(C0142a.C0152j.Toolbar_contentInsetRight, 0);
        m45822t();
        this.f1465y.m45585b(m45796e, m45796e2);
        if (m45798d7 != Integer.MIN_VALUE || m45798d8 != Integer.MIN_VALUE) {
            this.f1465y.m45586a(m45798d7, m45798d8);
        }
        this.f1466z = m45804a.m45798d(C0142a.C0152j.Toolbar_contentInsetStartWithNavigation, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f1426A = m45804a.m45798d(C0142a.C0152j.Toolbar_contentInsetEndWithActions, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f1458r = m45804a.m45810a(C0142a.C0152j.Toolbar_collapseIcon);
        this.f1459s = m45804a.m45801c(C0142a.C0152j.Toolbar_collapseContentDescription);
        CharSequence m45801c = m45804a.m45801c(C0142a.C0152j.Toolbar_title);
        if (!TextUtils.isEmpty(m45801c)) {
            setTitle(m45801c);
        }
        CharSequence m45801c2 = m45804a.m45801c(C0142a.C0152j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m45801c2)) {
            setSubtitle(m45801c2);
        }
        this.f1460t = getContext();
        setPopupTheme(m45804a.m45792g(C0142a.C0152j.Toolbar_popupTheme, 0));
        Drawable m45810a = m45804a.m45810a(C0142a.C0152j.Toolbar_navigationIcon);
        if (m45810a != null) {
            setNavigationIcon(m45810a);
        }
        CharSequence m45801c3 = m45804a.m45801c(C0142a.C0152j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m45801c3)) {
            setNavigationContentDescription(m45801c3);
        }
        Drawable m45810a2 = m45804a.m45810a(C0142a.C0152j.Toolbar_logo);
        if (m45810a2 != null) {
            setLogo(m45810a2);
        }
        CharSequence m45801c4 = m45804a.m45801c(C0142a.C0152j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m45801c4)) {
            setLogoDescription(m45801c4);
        }
        if (m45804a.m45793g(C0142a.C0152j.Toolbar_titleTextColor)) {
            setTitleTextColor(m45804a.m45797e(C0142a.C0152j.Toolbar_titleTextColor));
        }
        if (m45804a.m45793g(C0142a.C0152j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(m45804a.m45797e(C0142a.C0152j.Toolbar_subtitleTextColor));
        }
        if (m45804a.m45793g(C0142a.C0152j.Toolbar_menu)) {
            m45855a(m45804a.m45792g(C0142a.C0152j.Toolbar_menu, 0));
        }
        m45804a.f1491a.recycle();
    }

    /* renamed from: a */
    private int m45853a(View view, int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int m45845b = m45845b(layoutParams.f282a);
        if (m45845b != 48) {
            if (m45845b == 80) {
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
        return getPaddingTop() - i3;
    }

    /* renamed from: a */
    private int m45851a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: a */
    private int m45850a(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m45853a = m45853a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m45853a, max + measuredWidth, view.getMeasuredHeight() + m45853a);
        return max + measuredWidth + layoutParams.rightMargin;
    }

    /* renamed from: a */
    private static LayoutParams m45848a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: a */
    private void m45852a(View view, int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    private void m45849a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams m45834h = layoutParams == null ? m45834h() : !checkLayoutParams(layoutParams) ? m45848a(layoutParams) : (LayoutParams) layoutParams;
        m45834h.f1470b = 1;
        if (!z || this.f1443c == null) {
            addView(view, m45834h);
            return;
        }
        view.setLayoutParams(m45834h);
        this.f1451k.add(view);
    }

    /* renamed from: a */
    private void m45847a(List<View> list, int i) {
        boolean z = C0926v.m44097f(this) == 1;
        int childCount = getChildCount();
        int m44195a = C0908e.m44195a(i, C0926v.m44097f(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1470b == 0 && m45854a(childAt) && m45841c(layoutParams.f282a) == m44195a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1470b == 0 && m45854a(childAt2) && m45841c(layoutParams2.f282a) == m44195a) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: a */
    private boolean m45854a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private int m45845b(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f1427B & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: b */
    private static int m45844b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0912h.m44187a(marginLayoutParams) + C0912h.m44185b(marginLayoutParams);
    }

    /* renamed from: b */
    private int m45843b(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m45853a = m45853a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m45853a, max, view.getMeasuredHeight() + m45853a);
        return max - (measuredWidth + layoutParams.leftMargin);
    }

    /* renamed from: c */
    private int m45841c(int i) {
        int m44097f = C0926v.m44097f(this);
        int m44195a = C0908e.m44195a(i, m44097f) & 7;
        return (m44195a == 1 || m44195a == 3 || m44195a == 5) ? m44195a : m44097f == 1 ? 5 : 3;
    }

    /* renamed from: c */
    private static int m45840c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: d */
    private boolean m45838d(View view) {
        return view.getParent() == this || this.f1451k.contains(view);
    }

    /* renamed from: h */
    protected static LayoutParams m45834h() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: k */
    private void m45831k() {
        if (this.f1457q == null) {
            this.f1457q = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: l */
    private void m45830l() {
        m45829m();
        if (this.f1441a.f1083a == null) {
            C0268g c0268g = (C0268g) this.f1441a.m45998b();
            if (this.f1453m == null) {
                this.f1453m = new C0364a();
            }
            this.f1441a.setExpandedActionViewsExclusive(true);
            c0268g.m46099a(this.f1453m, this.f1460t);
        }
    }

    /* renamed from: m */
    private void m45829m() {
        if (this.f1441a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1441a = actionMenuView;
            actionMenuView.setPopupTheme(this.f1461u);
            this.f1441a.setOnMenuItemClickListener(this.f1434I);
            this.f1441a.setMenuCallbacks(this.f1437L, this.f1438M);
            LayoutParams m45834h = m45834h();
            m45834h.f282a = 8388613 | (this.f1444d & 112);
            this.f1441a.setLayoutParams(m45834h);
            m45849a((View) this.f1441a, false);
        }
    }

    /* renamed from: n */
    private MenuInflater m45828n() {
        return new C0248g(getContext());
    }

    /* renamed from: o */
    private int m45827o() {
        C0422v c0422v = this.f1465y;
        if (c0422v != null) {
            return c0422v.f1662g ? c0422v.f1657b : c0422v.f1656a;
        }
        return 0;
    }

    /* renamed from: p */
    private int m45826p() {
        C0422v c0422v = this.f1465y;
        if (c0422v != null) {
            return c0422v.f1662g ? c0422v.f1656a : c0422v.f1657b;
        }
        return 0;
    }

    /* renamed from: q */
    private int m45825q() {
        return m45837e() != null ? Math.max(m45827o(), Math.max(this.f1466z, 0)) : m45827o();
    }

    /* renamed from: r */
    private int m45824r() {
        C0268g c0268g;
        ActionMenuView actionMenuView = this.f1441a;
        return actionMenuView != null && (c0268g = actionMenuView.f1083a) != null && c0268g.hasVisibleItems() ? Math.max(m45826p(), Math.max(this.f1426A, 0)) : m45826p();
    }

    /* renamed from: s */
    private void m45823s() {
        if (this.f1456p == null) {
            this.f1456p = new AppCompatImageButton(getContext(), null, C0142a.C0143a.toolbarNavigationButtonStyle);
            LayoutParams m45834h = m45834h();
            m45834h.f282a = 8388611 | (this.f1444d & 112);
            this.f1456p.setLayoutParams(m45834h);
        }
    }

    /* renamed from: t */
    private void m45822t() {
        if (this.f1465y == null) {
            this.f1465y = new C0422v();
        }
    }

    /* renamed from: a */
    public final void m45855a(int i) {
        m45828n().inflate(i, m45836f());
    }

    public final boolean ak_() {
        ActionMenuView actionMenuView = this.f1441a;
        if (actionMenuView != null) {
            return actionMenuView.f1085c != null && actionMenuView.f1085c.m46005j();
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m45846b() {
        ActionMenuView actionMenuView = this.f1441a;
        if (actionMenuView != null) {
            return actionMenuView.f1085c != null && actionMenuView.f1085c.m46009e();
        }
        return false;
    }

    /* renamed from: c */
    public final void m45842c() {
        C0364a c0364a = this.f1453m;
        C0272i c0272i = c0364a == null ? null : c0364a.f1472b;
        if (c0272i != null) {
            c0272i.collapseActionView();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public final CharSequence m45839d() {
        ImageButton imageButton = this.f1456p;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    /* renamed from: e */
    public final Drawable m45837e() {
        ImageButton imageButton = this.f1456p;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    /* renamed from: f */
    public final Menu m45836f() {
        m45830l();
        return this.f1441a.m45998b();
    }

    /* renamed from: g */
    final void m45835g() {
        if (this.f1442b == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C0142a.C0143a.toolbarNavigationButtonStyle);
            this.f1442b = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f1458r);
            this.f1442b.setContentDescription(this.f1459s);
            LayoutParams m45834h = m45834h();
            m45834h.f282a = 8388611 | (this.f1444d & 112);
            m45834h.f1470b = 2;
            this.f1442b.setLayoutParams(m45834h);
            this.f1442b.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Toolbar.this.m45842c();
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m45834h();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m45848a(layoutParams);
    }

    /* renamed from: i */
    public final AbstractC0406o m45833i() {
        if (this.f1435J == null) {
            this.f1435J = new C0371ac(this, true);
        }
        return this.f1435J;
    }

    /* renamed from: j */
    final void m45832j() {
        for (int size = this.f1451k.size() - 1; size >= 0; size--) {
            addView(this.f1451k.get(size));
        }
        this.f1451k.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1440O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1431F = false;
        }
        if (!this.f1431F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1431F = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1431F = false;
            return true;
        }
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
        ActionMenuView actionMenuView = this.f1441a;
        C0268g c0268g = actionMenuView != null ? actionMenuView.f1083a : null;
        if (savedState.expandedMenuItemId != 0 && this.f1453m != null && c0268g != null && (findItem = c0268g.findItem(savedState.expandedMenuItemId)) != null) {
            findItem.expandActionView();
        }
        if (!savedState.isOverflowOpen) {
            return;
        }
        removeCallbacks(this.f1440O);
        post(this.f1440O);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m45822t();
        C0422v c0422v = this.f1465y;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != c0422v.f1662g) {
            c0422v.f1662g = z;
            if (!c0422v.f1663h) {
                c0422v.f1656a = c0422v.f1660e;
                c0422v.f1657b = c0422v.f1661f;
            } else if (z) {
                c0422v.f1656a = c0422v.f1659d != Integer.MIN_VALUE ? c0422v.f1659d : c0422v.f1660e;
                c0422v.f1657b = c0422v.f1658c != Integer.MIN_VALUE ? c0422v.f1658c : c0422v.f1661f;
            } else {
                c0422v.f1656a = c0422v.f1658c != Integer.MIN_VALUE ? c0422v.f1658c : c0422v.f1660e;
                c0422v.f1657b = c0422v.f1659d != Integer.MIN_VALUE ? c0422v.f1659d : c0422v.f1661f;
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0364a c0364a = this.f1453m;
        if (c0364a != null && c0364a.f1472b != null) {
            savedState.expandedMenuItemId = this.f1453m.f1472b.getItemId();
        }
        savedState.isOverflowOpen = ak_();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1430E = false;
        }
        if (!this.f1430E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1430E = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1430E = false;
            return true;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m45835g();
        }
        ImageButton imageButton = this.f1442b;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C0153a.m46374b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m45835g();
            this.f1442b.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f1442b;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f1458r);
    }

    public void setCollapsible(boolean z) {
        this.f1439N = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1426A) {
            this.f1426A = i2;
            if (m45837e() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f1466z) {
            this.f1466z = i2;
            if (m45837e() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        m45822t();
        this.f1465y.m45585b(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        m45822t();
        this.f1465y.m45586a(i, i2);
    }

    public void setLogo(int i) {
        setLogo(C0153a.m46374b(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m45831k();
            if (!m45838d(this.f1457q)) {
                m45849a((View) this.f1457q, true);
            }
        } else {
            ImageView imageView = this.f1457q;
            if (imageView != null && m45838d(imageView)) {
                removeView(this.f1457q);
                this.f1451k.remove(this.f1457q);
            }
        }
        ImageView imageView2 = this.f1457q;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m45831k();
        }
        ImageView imageView = this.f1457q;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(C0268g c0268g, ActionMenuPresenter actionMenuPresenter) {
        if (c0268g == null && this.f1441a == null) {
            return;
        }
        m45829m();
        C0268g c0268g2 = this.f1441a.f1083a;
        if (c0268g2 == c0268g) {
            return;
        }
        if (c0268g2 != null) {
            c0268g2.m46091b(this.f1436K);
            c0268g2.m46091b(this.f1453m);
        }
        if (this.f1453m == null) {
            this.f1453m = new C0364a();
        }
        actionMenuPresenter.f1059l = true;
        if (c0268g != null) {
            c0268g.m46099a(actionMenuPresenter, this.f1460t);
            c0268g.m46099a(this.f1453m, this.f1460t);
        } else {
            actionMenuPresenter.mo10549a(this.f1460t, (C0268g) null);
            this.f1453m.mo10549a(this.f1460t, (C0268g) null);
            actionMenuPresenter.mo10541a(true);
            this.f1453m.mo10541a(true);
        }
        this.f1441a.setPopupTheme(this.f1461u);
        this.f1441a.setPresenter(actionMenuPresenter);
        this.f1436K = actionMenuPresenter;
    }

    public void setMenuCallbacks(AbstractC0283m.AbstractC0284a abstractC0284a, C0268g.AbstractC0269a abstractC0269a) {
        this.f1437L = abstractC0284a;
        this.f1438M = abstractC0269a;
        ActionMenuView actionMenuView = this.f1441a;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(abstractC0284a, abstractC0269a);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m45823s();
        }
        ImageButton imageButton = this.f1456p;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0153a.m46374b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m45823s();
            if (!m45838d(this.f1456p)) {
                m45849a((View) this.f1456p, true);
            }
        } else {
            ImageButton imageButton = this.f1456p;
            if (imageButton != null && m45838d(imageButton)) {
                removeView(this.f1456p);
                this.f1451k.remove(this.f1456p);
            }
        }
        ImageButton imageButton2 = this.f1456p;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m45823s();
        this.f1456p.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0365b abstractC0365b) {
        this.f1452l = abstractC0365b;
    }

    public void setOverflowIcon(Drawable drawable) {
        m45830l();
        this.f1441a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f1461u != i) {
            this.f1461u = i;
            if (i == 0) {
                this.f1460t = getContext();
            } else {
                this.f1460t = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1455o == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1455o = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1455o.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1463w;
                if (i != 0) {
                    this.f1455o.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1429D;
                if (colorStateList != null) {
                    this.f1455o.setTextColor(colorStateList);
                }
            }
            if (!m45838d(this.f1455o)) {
                m45849a((View) this.f1455o, true);
            }
        } else {
            TextView textView = this.f1455o;
            if (textView != null && m45838d(textView)) {
                removeView(this.f1455o);
                this.f1451k.remove(this.f1455o);
            }
        }
        TextView textView2 = this.f1455o;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1450j = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.f1463w = i;
        TextView textView = this.f1455o;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f1429D = colorStateList;
        TextView textView = this.f1455o;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1454n == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1454n = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1454n.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f1462v;
                if (i != 0) {
                    this.f1454n.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f1428C;
                if (colorStateList != null) {
                    this.f1454n.setTextColor(colorStateList);
                }
            }
            if (!m45838d(this.f1454n)) {
                m45849a((View) this.f1454n, true);
            }
        } else {
            TextView textView = this.f1454n;
            if (textView != null && m45838d(textView)) {
                removeView(this.f1454n);
                this.f1451k.remove(this.f1454n);
            }
        }
        TextView textView2 = this.f1454n;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1449i = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.f1445e = i;
        this.f1447g = i2;
        this.f1446f = i3;
        this.f1448h = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.f1448h = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f1446f = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f1445e = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f1447g = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.f1462v = i;
        TextView textView = this.f1454n;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f1428C = colorStateList;
        TextView textView = this.f1454n;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
