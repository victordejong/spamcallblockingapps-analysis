package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.AbstractC0097m;
import androidx.appcompat.view.menu.g$a;
import androidx.appcompat.view.menu.i;
import d.a.a;
import d.a.j;
import d.a.o.g;
import d.h.m.d;
import d.h.m.t;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private ColorStateList f522A;

    /* renamed from: B */
    private ColorStateList f523B;

    /* renamed from: C */
    private boolean f524C;

    /* renamed from: D */
    private boolean f525D;

    /* renamed from: E */
    private final ArrayList<View> f526E;

    /* renamed from: F */
    private final ArrayList<View> f527F;

    /* renamed from: G */
    private final int[] f528G;

    /* renamed from: H */
    AbstractC0119e f529H;

    /* renamed from: I */
    private final ActionMenuView$d f530I;

    /* renamed from: J */
    private e0 f531J;

    /* renamed from: K */
    private ActionMenuPresenter f532K;

    /* renamed from: L */
    private d f533L;

    /* renamed from: M */
    private AbstractC0097m.AbstractC0098a f534M;

    /* renamed from: N */
    private g$a f535N;

    /* renamed from: O */
    private boolean f536O;

    /* renamed from: P */
    private final Runnable f537P;

    /* renamed from: b */
    private ActionMenuView f538b;

    /* renamed from: c */
    private TextView f539c;

    /* renamed from: d */
    private TextView f540d;

    /* renamed from: e */
    private ImageButton f541e;

    /* renamed from: f */
    private ImageView f542f;

    /* renamed from: g */
    private Drawable f543g;

    /* renamed from: h */
    private CharSequence f544h;

    /* renamed from: i */
    ImageButton f545i;

    /* renamed from: j */
    View f546j;

    /* renamed from: k */
    private Context f547k;

    /* renamed from: l */
    private int f548l;

    /* renamed from: m */
    private int f549m;

    /* renamed from: n */
    private int f550n;

    /* renamed from: o */
    int f551o;

    /* renamed from: p */
    private int f552p;

    /* renamed from: q */
    private int f553q;

    /* renamed from: r */
    private int f554r;

    /* renamed from: s */
    private int f555s;

    /* renamed from: t */
    private int f556t;

    /* renamed from: u */
    private C0160w f557u;

    /* renamed from: v */
    private int f558v;

    /* renamed from: w */
    private int f559w;

    /* renamed from: x */
    private int f560x;

    /* renamed from: y */
    private CharSequence f561y;

    /* renamed from: z */
    private CharSequence f562z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0117b implements Runnable {
        RunnableC0117b() {
            Toolbar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m14696J();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0118c implements View.OnClickListener {
        View$OnClickListenerC0118c() {
            Toolbar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m14691e();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$e.class */
    public interface AbstractC0119e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f560x = 8388627;
        this.f526E = new ArrayList<>();
        this.f527F = new ArrayList<>();
        this.f528G = new int[2];
        this.f530I = new a(this);
        this.f537P = new RunnableC0117b();
        Context context2 = getContext();
        int[] iArr = j.Toolbar;
        C0127d0 m14618v = C0127d0.m14618v(context2, attributeSet, iArr, i, 0);
        t.l0(this, context, iArr, attributeSet, m14618v.m14622r(), i, 0);
        this.f549m = m14618v.m14626n(j.Toolbar_titleTextAppearance, 0);
        this.f550n = m14618v.m14626n(j.Toolbar_subtitleTextAppearance, 0);
        this.f560x = m14618v.m14628l(j.Toolbar_android_gravity, this.f560x);
        this.f551o = m14618v.m14628l(j.Toolbar_buttonGravity, 48);
        int m14635e = m14618v.m14635e(j.Toolbar_titleMargin, 0);
        int i2 = j.Toolbar_titleMargins;
        int m14635e2 = m14618v.m14621s(i2) ? m14618v.m14635e(i2, m14635e) : m14635e;
        this.f556t = m14635e2;
        this.f555s = m14635e2;
        this.f554r = m14635e2;
        this.f553q = m14635e2;
        int m14635e3 = m14618v.m14635e(j.Toolbar_titleMarginStart, -1);
        if (m14635e3 >= 0) {
            this.f553q = m14635e3;
        }
        int m14635e4 = m14618v.m14635e(j.Toolbar_titleMarginEnd, -1);
        if (m14635e4 >= 0) {
            this.f554r = m14635e4;
        }
        int m14635e5 = m14618v.m14635e(j.Toolbar_titleMarginTop, -1);
        if (m14635e5 >= 0) {
            this.f555s = m14635e5;
        }
        int m14635e6 = m14618v.m14635e(j.Toolbar_titleMarginBottom, -1);
        if (m14635e6 >= 0) {
            this.f556t = m14635e6;
        }
        this.f552p = m14618v.m14634f(j.Toolbar_maxButtonHeight, -1);
        int m14635e7 = m14618v.m14635e(j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int m14635e8 = m14618v.m14635e(j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int m14634f = m14618v.m14634f(j.Toolbar_contentInsetLeft, 0);
        int m14634f2 = m14618v.m14634f(j.Toolbar_contentInsetRight, 0);
        m14688h();
        this.f557u.m14409e(m14634f, m14634f2);
        if (m14635e7 != Integer.MIN_VALUE || m14635e8 != Integer.MIN_VALUE) {
            this.f557u.m14407g(m14635e7, m14635e8);
        }
        this.f558v = m14618v.m14635e(j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f559w = m14618v.m14635e(j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f543g = m14618v.m14633g(j.Toolbar_collapseIcon);
        this.f544h = m14618v.m14624p(j.Toolbar_collapseContentDescription);
        CharSequence m14624p = m14618v.m14624p(j.Toolbar_title);
        if (!TextUtils.isEmpty(m14624p)) {
            setTitle(m14624p);
        }
        CharSequence m14624p2 = m14618v.m14624p(j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m14624p2)) {
            setSubtitle(m14624p2);
        }
        this.f547k = getContext();
        setPopupTheme(m14618v.m14626n(j.Toolbar_popupTheme, 0));
        Drawable m14633g = m14618v.m14633g(j.Toolbar_navigationIcon);
        if (m14633g != null) {
            setNavigationIcon(m14633g);
        }
        CharSequence m14624p3 = m14618v.m14624p(j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m14624p3)) {
            setNavigationContentDescription(m14624p3);
        }
        Drawable m14633g2 = m14618v.m14633g(j.Toolbar_logo);
        if (m14633g2 != null) {
            setLogo(m14633g2);
        }
        CharSequence m14624p4 = m14618v.m14624p(j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m14624p4)) {
            setLogoDescription(m14624p4);
        }
        int i3 = j.Toolbar_titleTextColor;
        if (m14618v.m14621s(i3)) {
            setTitleTextColor(m14618v.m14637c(i3));
        }
        int i4 = j.Toolbar_subtitleTextColor;
        if (m14618v.m14621s(i4)) {
            setSubtitleTextColor(m14618v.m14637c(i4));
        }
        int i5 = j.Toolbar_menu;
        if (m14618v.m14621s(i5)) {
            m14672x(m14618v.m14626n(i5, 0));
        }
        m14618v.m14617w();
    }

    /* renamed from: B */
    private int m14704B(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m14679q = m14679q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m14679q, max + measuredWidth, view.getMeasuredHeight() + m14679q);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: C */
    private int m14703C(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m14679q = m14679q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m14679q, max, view.getMeasuredHeight() + m14679q);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: D */
    private int m14702D(View view, int i, int i2, int i3, int i4, int[] iArr) {
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
    private void m14701E(View view, int i, int i2, int i3, int i4, int i5) {
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
    private void m14700F() {
        removeCallbacks(this.f537P);
        post(this.f537P);
    }

    /* renamed from: H */
    private boolean m14698H() {
        if (!this.f536O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m14697I(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: I */
    private boolean m14697I(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private void m14694b(List<View> list, int i) {
        boolean z = t.B(this) == 1;
        int childCount = getChildCount();
        int b = d.b(i, t.B(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams.b == 0 && m14697I(childAt) && m14680p(layoutParams.f129a) == b) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = childAt2.getLayoutParams();
            if (layoutParams2.b == 0 && m14697I(childAt2) && m14680p(layoutParams2.f129a) == b) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    private void m14693c(View view, boolean z) {
        LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        generateDefaultLayoutParams.b = 1;
        if (!z || this.f546j == null) {
            addView(view, (ViewGroup.LayoutParams) generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f527F.add(view);
    }

    private MenuInflater getMenuInflater() {
        return new g(getContext());
    }

    /* renamed from: h */
    private void m14688h() {
        if (this.f557u == null) {
            this.f557u = new C0160w();
        }
    }

    /* renamed from: i */
    private void m14687i() {
        if (this.f542f == null) {
            this.f542f = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: j */
    private void m14686j() {
        m14685k();
        if (this.f538b.N() == null) {
            androidx.appcompat.view.menu.g menu = this.f538b.getMenu();
            if (this.f533L == null) {
                this.f533L = new d(this);
            }
            this.f538b.setExpandedActionViewsExclusive(true);
            menu.c(this.f533L, this.f547k);
        }
    }

    /* renamed from: k */
    private void m14685k() {
        if (this.f538b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f538b = actionMenuView;
            actionMenuView.setPopupTheme(this.f548l);
            this.f538b.setOnMenuItemClickListener(this.f530I);
            this.f538b.setMenuCallbacks(this.f534M, this.f535N);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f129a = 8388613 | (this.f551o & 112);
            this.f538b.setLayoutParams(generateDefaultLayoutParams);
            m14693c(this.f538b, false);
        }
    }

    /* renamed from: l */
    private void m14684l() {
        if (this.f541e == null) {
            this.f541e = new AppCompatImageButton(getContext(), (AttributeSet) null, a.toolbarNavigationButtonStyle);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f129a = 8388611 | (this.f551o & 112);
            this.f541e.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: p */
    private int m14680p(int i) {
        int B = t.B(this);
        int b = d.b(i, B) & 7;
        if (b != 1) {
            int i2 = 3;
            if (b != 3 && b != 5) {
                if (B == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return b;
    }

    /* renamed from: q */
    private int m14679q(View view, int i) {
        LayoutParams layoutParams = view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int m14678r = m14678r(layoutParams.f129a);
        if (m14678r != 48) {
            if (m14678r == 80) {
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
        return getPaddingTop() - i2;
    }

    /* renamed from: r */
    private int m14678r(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f560x & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: s */
    private int m14677s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return d.h.m.g.b(marginLayoutParams) + d.h.m.g.a(marginLayoutParams);
    }

    /* renamed from: t */
    private int m14676t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: u */
    private int m14675u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            LayoutParams layoutParams = view.getLayoutParams();
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
    private boolean m14671y(View view) {
        return view.getParent() == this || this.f527F.contains(view);
    }

    /* renamed from: A */
    public boolean m14705A() {
        ActionMenuView actionMenuView = this.f538b;
        return actionMenuView != null && actionMenuView.J();
    }

    /* renamed from: G */
    void m14699G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).b != 2 && childAt != this.f538b) {
                removeViewAt(childCount);
                this.f527F.add(childAt);
            }
        }
    }

    /* renamed from: J */
    public boolean m14696J() {
        ActionMenuView actionMenuView = this.f538b;
        return actionMenuView != null && actionMenuView.O();
    }

    /* renamed from: a */
    void m14695a() {
        for (int size = this.f527F.size() - 1; size >= 0; size--) {
            addView(this.f527F.get(size));
        }
        this.f527F.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public boolean m14692d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f538b) != null && actionMenuView.K();
    }

    /* renamed from: e */
    public void m14691e() {
        d dVar = this.f533L;
        i iVar = dVar == null ? null : dVar.c;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* renamed from: f */
    public void m14690f() {
        ActionMenuView actionMenuView = this.f538b;
        if (actionMenuView != null) {
            actionMenuView.B();
        }
    }

    /* renamed from: g */
    void m14689g() {
        if (this.f545i == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), (AttributeSet) null, a.toolbarNavigationButtonStyle);
            this.f545i = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f543g);
            this.f545i.setContentDescription(this.f544h);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f129a = 8388611 | (this.f551o & 112);
            generateDefaultLayoutParams.b = 2;
            this.f545i.setLayoutParams(generateDefaultLayoutParams);
            this.f545i.setOnClickListener(new View$OnClickListenerC0118c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f545i;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f545i;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0160w c0160w = this.f557u;
        return c0160w != null ? c0160w.m14413a() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f559w;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0160w c0160w = this.f557u;
        return c0160w != null ? c0160w.m14412b() : 0;
    }

    public int getContentInsetRight() {
        C0160w c0160w = this.f557u;
        return c0160w != null ? c0160w.m14411c() : 0;
    }

    public int getContentInsetStart() {
        C0160w c0160w = this.f557u;
        return c0160w != null ? c0160w.m14410d() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f558v;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g N;
        ActionMenuView actionMenuView = this.f538b;
        return actionMenuView != null && (N = actionMenuView.N()) != null && N.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f559w, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return t.B(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return t.B(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f558v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f542f;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f542f;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m14686j();
        return this.f538b.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f541e;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f541e;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f532K;
    }

    public Drawable getOverflowIcon() {
        m14686j();
        return this.f538b.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f547k;
    }

    public int getPopupTheme() {
        return this.f548l;
    }

    public CharSequence getSubtitle() {
        return this.f562z;
    }

    final TextView getSubtitleTextView() {
        return this.f540d;
    }

    public CharSequence getTitle() {
        return this.f561y;
    }

    public int getTitleMarginBottom() {
        return this.f556t;
    }

    public int getTitleMarginEnd() {
        return this.f554r;
    }

    public int getTitleMarginStart() {
        return this.f553q;
    }

    public int getTitleMarginTop() {
        return this.f555s;
    }

    final TextView getTitleTextView() {
        return this.f539c;
    }

    public AbstractC0146o getWrapper() {
        if (this.f531J == null) {
            this.f531J = new e0(this, true);
        }
        return this.f531J;
    }

    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f537P);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f525D = false;
        }
        if (!this.f525D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f525D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f525D = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x055d A[LOOP:0: B:120:0x0557->B:122:0x055d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0592 A[LOOP:1: B:124:0x058c->B:126:0x0592, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05e5  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x060d A[LOOP:2: B:134:0x0607->B:136:0x060d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x036e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Object[] objArr;
        Object[] objArr2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.f528G;
        if (C0139j0.m14565b(this)) {
            objArr2 = 1;
            objArr = null;
        } else {
            objArr2 = null;
            objArr = 1;
        }
        if (m14697I(this.f541e)) {
            m14701E(this.f541e, i, 0, i2, 0, this.f552p);
            i5 = this.f541e.getMeasuredWidth() + m14677s(this.f541e);
            i4 = Math.max(0, this.f541e.getMeasuredHeight() + m14676t(this.f541e));
            i3 = View.combineMeasuredStates(0, this.f541e.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i5;
        int i10 = i4;
        int i11 = i3;
        if (m14697I(this.f545i)) {
            m14701E(this.f545i, i, 0, i2, 0, this.f552p);
            i9 = this.f545i.getMeasuredWidth() + m14677s(this.f545i);
            i10 = Math.max(i4, this.f545i.getMeasuredHeight() + m14676t(this.f545i));
            i11 = View.combineMeasuredStates(i3, this.f545i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i9);
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i9);
        if (m14697I(this.f538b)) {
            m14701E(this.f538b, i, max, i2, 0, this.f552p);
            i6 = this.f538b.getMeasuredWidth() + m14677s(this.f538b);
            i10 = Math.max(i10, this.f538b.getMeasuredHeight() + m14676t(this.f538b));
            i11 = View.combineMeasuredStates(i11, this.f538b.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i6);
        int i12 = i10;
        int i13 = i11;
        int i14 = max2;
        if (m14697I(this.f546j)) {
            i14 = max2 + m14702D(this.f546j, i, max2, i2, 0, iArr);
            i12 = Math.max(i10, this.f546j.getMeasuredHeight() + m14676t(this.f546j));
            i13 = View.combineMeasuredStates(i11, this.f546j.getMeasuredState());
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = i14;
        if (m14697I(this.f542f)) {
            i17 = i14 + m14702D(this.f542f, i, i14, i2, 0, iArr);
            i15 = Math.max(i12, this.f542f.getMeasuredHeight() + m14676t(this.f542f));
            i16 = View.combineMeasuredStates(i13, this.f542f.getMeasuredState());
        }
        int childCount = getChildCount();
        int i18 = i15;
        int i19 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i20 = i18;
            int i21 = i16;
            int i22 = i17;
            if (childAt.getLayoutParams().b == 0) {
                if (!m14697I(childAt)) {
                    i20 = i18;
                    i21 = i16;
                    i22 = i17;
                } else {
                    i22 = i17 + m14702D(childAt, i, i17, i2, 0, iArr);
                    i20 = Math.max(i18, childAt.getMeasuredHeight() + m14676t(childAt));
                    i21 = View.combineMeasuredStates(i16, childAt.getMeasuredState());
                }
            }
            i19++;
            i18 = i20;
            i16 = i21;
            i17 = i22;
        }
        int i23 = this.f555s + this.f556t;
        int i24 = this.f553q + this.f554r;
        if (m14697I(this.f539c)) {
            m14702D(this.f539c, i, i17 + i24, i2, i23, iArr);
            int measuredWidth = this.f539c.getMeasuredWidth();
            int m14677s = m14677s(this.f539c);
            int measuredHeight = this.f539c.getMeasuredHeight();
            int m14676t = m14676t(this.f539c);
            i16 = View.combineMeasuredStates(i16, this.f539c.getMeasuredState());
            i8 = measuredHeight + m14676t;
            i7 = measuredWidth + m14677s;
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (m14697I(this.f540d)) {
            i7 = Math.max(i7, m14702D(this.f540d, i, i17 + i24, i2, i8 + i23, iArr));
            i8 += this.f540d.getMeasuredHeight() + m14676t(this.f540d);
            i16 = View.combineMeasuredStates(i16, this.f540d.getMeasuredState());
        }
        int max3 = Math.max(i18, i8);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(i17 + i7 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i16);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i16 << 16);
        if (m14698H()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m13379a());
        ActionMenuView actionMenuView = this.f538b;
        Menu N = actionMenuView != null ? actionMenuView.N() : null;
        int i = savedState.d;
        if (i != 0 && this.f533L != null && N != null && (findItem = N.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (!savedState.e) {
            return;
        }
        m14700F();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m14688h();
        C0160w c0160w = this.f557u;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        c0160w.m14408f(z);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        i iVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.f533L;
        if (dVar != null && (iVar = dVar.c) != null) {
            savedState.d = iVar.getItemId();
        }
        savedState.e = m14705A();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f524C = false;
        }
        if (!this.f524C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f524C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f524C = false;
            return true;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m14689g();
        }
        ImageButton imageButton = this.f545i;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(d.a.k.a.a.d(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m14689g();
            this.f545i.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f545i;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f543g);
    }

    public void setCollapsible(boolean z) {
        this.f536O = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f559w) {
            this.f559w = i2;
            if (getNavigationIcon() == null) {
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
        if (i2 != this.f558v) {
            this.f558v = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        m14688h();
        this.f557u.m14409e(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        m14688h();
        this.f557u.m14407g(i, i2);
    }

    public void setLogo(int i) {
        setLogo(d.a.k.a.a.d(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m14687i();
            if (!m14671y(this.f542f)) {
                m14693c(this.f542f, true);
            }
        } else {
            ImageView imageView = this.f542f;
            if (imageView != null && m14671y(imageView)) {
                removeView(this.f542f);
                this.f527F.remove(this.f542f);
            }
        }
        ImageView imageView2 = this.f542f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m14687i();
        }
        ImageView imageView = this.f542f;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(androidx.appcompat.view.menu.g gVar, ActionMenuPresenter actionMenuPresenter) {
        if (gVar == null && this.f538b == null) {
            return;
        }
        m14685k();
        androidx.appcompat.view.menu.g N = this.f538b.N();
        if (N == gVar) {
            return;
        }
        if (N != null) {
            N.Q(this.f532K);
            N.Q(this.f533L);
        }
        if (this.f533L == null) {
            this.f533L = new d(this);
        }
        actionMenuPresenter.A(true);
        if (gVar != null) {
            gVar.c(actionMenuPresenter, this.f547k);
            gVar.c(this.f533L, this.f547k);
        } else {
            actionMenuPresenter.G(this.f547k, (androidx.appcompat.view.menu.g) null);
            this.f533L.G(this.f547k, (androidx.appcompat.view.menu.g) null);
            actionMenuPresenter.J(true);
            this.f533L.J(true);
        }
        this.f538b.setPopupTheme(this.f548l);
        this.f538b.setPresenter(actionMenuPresenter);
        this.f532K = actionMenuPresenter;
    }

    public void setMenuCallbacks(AbstractC0097m.AbstractC0098a abstractC0098a, g$a g_a) {
        this.f534M = abstractC0098a;
        this.f535N = g_a;
        ActionMenuView actionMenuView = this.f538b;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(abstractC0098a, g_a);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m14684l();
        }
        ImageButton imageButton = this.f541e;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(d.a.k.a.a.d(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m14684l();
            if (!m14671y(this.f541e)) {
                m14693c(this.f541e, true);
            }
        } else {
            ImageButton imageButton = this.f541e;
            if (imageButton != null && m14671y(imageButton)) {
                removeView(this.f541e);
                this.f527F.remove(this.f541e);
            }
        }
        ImageButton imageButton2 = this.f541e;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m14684l();
        this.f541e.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0119e abstractC0119e) {
        this.f529H = abstractC0119e;
    }

    public void setOverflowIcon(Drawable drawable) {
        m14686j();
        this.f538b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f548l != i) {
            this.f548l = i;
            if (i == 0) {
                this.f547k = getContext();
            } else {
                this.f547k = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f540d == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f540d = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f540d.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f550n;
                if (i != 0) {
                    this.f540d.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f523B;
                if (colorStateList != null) {
                    this.f540d.setTextColor(colorStateList);
                }
            }
            if (!m14671y(this.f540d)) {
                m14693c(this.f540d, true);
            }
        } else {
            TextView textView = this.f540d;
            if (textView != null && m14671y(textView)) {
                removeView(this.f540d);
                this.f527F.remove(this.f540d);
            }
        }
        TextView textView2 = this.f540d;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f562z = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.f550n = i;
        TextView textView = this.f540d;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f523B = colorStateList;
        TextView textView = this.f540d;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f539c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f539c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f539c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f549m;
                if (i != 0) {
                    this.f539c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f522A;
                if (colorStateList != null) {
                    this.f539c.setTextColor(colorStateList);
                }
            }
            if (!m14671y(this.f539c)) {
                m14693c(this.f539c, true);
            }
        } else {
            TextView textView = this.f539c;
            if (textView != null && m14671y(textView)) {
                removeView(this.f539c);
                this.f527F.remove(this.f539c);
            }
        }
        TextView textView2 = this.f539c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f561y = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.f553q = i;
        this.f555s = i2;
        this.f554r = i3;
        this.f556t = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.f556t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f554r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f553q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f555s = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.f549m = i;
        TextView textView = this.f539c;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f522A = colorStateList;
        TextView textView = this.f539c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: v */
    public boolean m14674v() {
        d dVar = this.f533L;
        return (dVar == null || dVar.c == null) ? false : true;
    }

    /* renamed from: w */
    public boolean m14673w() {
        ActionMenuView actionMenuView = this.f538b;
        return actionMenuView != null && actionMenuView.H();
    }

    /* renamed from: x */
    public void m14672x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: z */
    public boolean m14670z() {
        ActionMenuView actionMenuView = this.f538b;
        return actionMenuView != null && actionMenuView.I();
    }
}
