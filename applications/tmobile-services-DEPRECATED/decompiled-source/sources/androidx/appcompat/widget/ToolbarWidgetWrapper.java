package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ToolbarWidgetWrapper.class */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* renamed from: a */
    Toolbar f1409a;

    /* renamed from: b */
    private int f1410b;

    /* renamed from: c */
    private View f1411c;

    /* renamed from: d */
    private View f1412d;

    /* renamed from: e */
    private Drawable f1413e;

    /* renamed from: f */
    private Drawable f1414f;

    /* renamed from: g */
    private Drawable f1415g;

    /* renamed from: h */
    private boolean f1416h;

    /* renamed from: i */
    CharSequence f1417i;

    /* renamed from: j */
    private CharSequence f1418j;

    /* renamed from: k */
    private CharSequence f1419k;

    /* renamed from: l */
    Window.Callback f1420l;

    /* renamed from: m */
    boolean f1421m;

    /* renamed from: n */
    private ActionMenuPresenter f1422n;

    /* renamed from: o */
    private int f1423o;

    /* renamed from: p */
    private int f1424p;

    /* renamed from: q */
    private Drawable f1425q;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0042R.string.abc_action_bar_up_description, C0042R.C0044drawable.abc_ic_ab_back_material);
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f1423o = 0;
        this.f1424p = 0;
        this.f1409a = toolbar;
        this.f1417i = toolbar.getTitle();
        this.f1418j = toolbar.getSubtitle();
        this.f1416h = this.f1417i != null;
        this.f1415g = toolbar.getNavigationIcon();
        TintTypedArray v = TintTypedArray.m21244v(toolbar.getContext(), null, C0042R.styleable.ActionBar, C0042R.attr.actionBarStyle, 0);
        this.f1425q = v.m21259g(C0042R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence p = v.m21250p(C0042R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(p)) {
                setTitle(p);
            }
            CharSequence p2 = v.m21250p(C0042R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(p2)) {
                m21201B(p2);
            }
            Drawable g = v.m21259g(C0042R.styleable.ActionBar_logo);
            if (g != null) {
                m21202A(g);
            }
            Drawable g2 = v.m21259g(C0042R.styleable.ActionBar_icon);
            if (g2 != null) {
                setIcon(g2);
            }
            if (this.f1415g == null && (drawable = this.f1425q) != null) {
                mo21175v(drawable);
            }
            mo21188i(v.m21255k(C0042R.styleable.ActionBar_displayOptions, 0));
            int n = v.m21252n(C0042R.styleable.ActionBar_customNavigationLayout, 0);
            if (n != 0) {
                m21172y(LayoutInflater.from(this.f1409a.getContext()).inflate(n, (ViewGroup) this.f1409a, false));
                mo21188i(this.f1410b | 16);
            }
            int m = v.m21253m(C0042R.styleable.ActionBar_height, 0);
            if (m > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1409a.getLayoutParams();
                layoutParams.height = m;
                this.f1409a.setLayoutParams(layoutParams);
            }
            int e = v.m21261e(C0042R.styleable.ActionBar_contentInsetStart, -1);
            int e2 = v.m21261e(C0042R.styleable.ActionBar_contentInsetEnd, -1);
            if (e >= 0 || e2 >= 0) {
                this.f1409a.setContentInsetsRelative(Math.max(e, 0), Math.max(e2, 0));
            }
            int n2 = v.m21252n(C0042R.styleable.ActionBar_titleTextStyle, 0);
            if (n2 != 0) {
                Toolbar toolbar2 = this.f1409a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), n2);
            }
            int n3 = v.m21252n(C0042R.styleable.ActionBar_subtitleTextStyle, 0);
            if (n3 != 0) {
                Toolbar toolbar3 = this.f1409a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), n3);
            }
            int n4 = v.m21252n(C0042R.styleable.ActionBar_popupTheme, 0);
            if (n4 != 0) {
                this.f1409a.setPopupTheme(n4);
            }
        } else {
            this.f1410b = m21173x();
        }
        v.m21243w();
        m21171z(i);
        this.f1419k = this.f1409a.getNavigationContentDescription();
        this.f1409a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1

            /* renamed from: f */
            final ActionMenuItem f1426f;

            {
                this.f1426f = new ActionMenuItem(ToolbarWidgetWrapper.this.f1409a.getContext(), 0, 16908332, 0, 0, ToolbarWidgetWrapper.this.f1417i);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                Window.Callback callback = toolbarWidgetWrapper.f1420l;
                if (callback != null && toolbarWidgetWrapper.f1421m) {
                    callback.onMenuItemSelected(0, this.f1426f);
                }
            }
        });
    }

    /* renamed from: C */
    private void m21200C(CharSequence charSequence) {
        this.f1417i = charSequence;
        if ((this.f1410b & 8) != 0) {
            this.f1409a.setTitle(charSequence);
        }
    }

    /* renamed from: D */
    private void m21199D() {
        if ((this.f1410b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f1419k)) {
            this.f1409a.setNavigationContentDescription(this.f1424p);
        } else {
            this.f1409a.setNavigationContentDescription(this.f1419k);
        }
    }

    /* renamed from: E */
    private void m21198E() {
        if ((this.f1410b & 4) != 0) {
            Toolbar toolbar = this.f1409a;
            Drawable drawable = this.f1415g;
            if (drawable == null) {
                drawable = this.f1425q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1409a.setNavigationIcon((Drawable) null);
    }

    /* renamed from: F */
    private void m21197F() {
        Drawable drawable;
        int i = this.f1410b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f1414f;
            if (drawable == null) {
                drawable = this.f1413e;
            }
        } else {
            drawable = this.f1413e;
        }
        this.f1409a.setLogo(drawable);
    }

    /* renamed from: x */
    private int m21173x() {
        int i;
        if (this.f1409a.getNavigationIcon() != null) {
            i = 15;
            this.f1425q = this.f1409a.getNavigationIcon();
        } else {
            i = 11;
        }
        return i;
    }

    /* renamed from: A */
    public void m21202A(Drawable drawable) {
        this.f1414f = drawable;
        m21197F();
    }

    /* renamed from: B */
    public void m21201B(CharSequence charSequence) {
        this.f1418j = charSequence;
        if ((this.f1410b & 8) != 0) {
            this.f1409a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: a */
    public boolean mo21196a() {
        return this.f1409a.m21242A();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: b */
    public boolean mo21195b() {
        return this.f1409a.m21229d();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: c */
    public boolean mo21194c() {
        return this.f1409a.m21207z();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void collapseActionView() {
        this.f1409a.m21228e();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: d */
    public boolean mo21193d() {
        return this.f1409a.m21210w();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: e */
    public boolean mo21192e() {
        return this.f1409a.m21233J();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: f */
    public void mo21191f() {
        this.f1409a.m21227f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: g */
    public void mo21190g(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1411c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1409a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1411c);
            }
        }
        this.f1411c = scrollingTabContainerView;
        if (scrollingTabContainerView != null && this.f1423o == 2) {
            this.f1409a.addView(scrollingTabContainerView, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1411c.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
            layoutParams.f22a = 8388691;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Context getContext() {
        return this.f1409a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.f1409a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: h */
    public boolean mo21189h() {
        return this.f1409a.m21211v();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: i */
    public void mo21188i(int i) {
        View view;
        int i2 = this.f1410b ^ i;
        this.f1410b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m21199D();
                }
                m21198E();
            }
            if ((i2 & 3) != 0) {
                m21197F();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1409a.setTitle(this.f1417i);
                    this.f1409a.setSubtitle(this.f1418j);
                } else {
                    this.f1409a.setTitle((CharSequence) null);
                    this.f1409a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && (view = this.f1412d) != null) {
                if ((i & 16) != 0) {
                    this.f1409a.addView(view);
                } else {
                    this.f1409a.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: j */
    public void mo21187j(CharSequence charSequence) {
        this.f1419k = charSequence;
        m21199D();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: k */
    public Menu mo21186k() {
        return this.f1409a.getMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: l */
    public void mo21185l(int i) {
        m21202A(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: m */
    public int mo21184m() {
        return this.f1423o;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: n */
    public ViewPropertyAnimatorCompat mo21183n(final int i, long j) {
        ViewPropertyAnimatorCompat c = ViewCompat.m19206c(this.f1409a);
        c.m19115a(i == 0 ? 1.0f : 0.0f);
        c.m19112d(j);
        c.m19110f(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2

            /* renamed from: a */
            private boolean f1428a = false;

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            /* renamed from: a */
            public void mo19104a(View view) {
                this.f1428a = true;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            /* renamed from: b */
            public void mo19103b(View view) {
                if (!this.f1428a) {
                    ToolbarWidgetWrapper.this.f1409a.setVisibility(i);
                }
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            /* renamed from: c */
            public void mo19102c(View view) {
                ToolbarWidgetWrapper.this.f1409a.setVisibility(0);
            }
        });
        return c;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: o */
    public void mo21182o(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f1409a.setMenuCallbacks(callback, callback2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: p */
    public ViewGroup mo21181p() {
        return this.f1409a;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: q */
    public void mo21180q(boolean z) {
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: r */
    public int mo21179r() {
        return this.f1410b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: s */
    public void mo21178s(int i) {
        mo21187j(i == 0 ? null : getContext().getString(i));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(int i) {
        setIcon(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.f1413e = drawable;
        m21197F();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (this.f1422n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1409a.getContext());
            this.f1422n = actionMenuPresenter;
            actionMenuPresenter.m21924s(C0042R.C0045id.action_menu_presenter);
        }
        this.f1422n.mo9519h(callback);
        this.f1409a.setMenu((MenuBuilder) menu, this.f1422n);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuPrepared() {
        this.f1421m = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.f1416h = true;
        m21200C(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setVisibility(int i) {
        this.f1409a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.f1420l = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f1416h) {
            m21200C(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: t */
    public void mo21177t() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: u */
    public void mo21176u() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: v */
    public void mo21175v(Drawable drawable) {
        this.f1415g = drawable;
        m21198E();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    /* renamed from: w */
    public void mo21174w(boolean z) {
        this.f1409a.setCollapsible(z);
    }

    /* renamed from: y */
    public void m21172y(View view) {
        View view2 = this.f1412d;
        if (!(view2 == null || (this.f1410b & 16) == 0)) {
            this.f1409a.removeView(view2);
        }
        this.f1412d = view;
        if (view != null && (this.f1410b & 16) != 0) {
            this.f1409a.addView(view);
        }
    }

    /* renamed from: z */
    public void m21171z(int i) {
        if (i != this.f1424p) {
            this.f1424p = i;
            if (TextUtils.isEmpty(this.f1409a.getNavigationContentDescription())) {
                mo21178s(this.f1424p);
            }
        }
    }
}
