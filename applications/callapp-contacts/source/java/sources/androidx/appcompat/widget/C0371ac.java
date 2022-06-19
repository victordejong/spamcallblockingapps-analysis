package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.C0256a;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.C0887aa;
import androidx.core.view.C0926v;
import androidx.core.view.C0940y;
/* renamed from: androidx.appcompat.widget.ac */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac.class */
public final class C0371ac implements AbstractC0406o {

    /* renamed from: a */
    Toolbar f1494a;

    /* renamed from: b */
    CharSequence f1495b;

    /* renamed from: c */
    Window.Callback f1496c;

    /* renamed from: d */
    boolean f1497d;

    /* renamed from: e */
    private int f1498e;

    /* renamed from: f */
    private View f1499f;

    /* renamed from: g */
    private View f1500g;

    /* renamed from: h */
    private Drawable f1501h;

    /* renamed from: i */
    private Drawable f1502i;

    /* renamed from: j */
    private Drawable f1503j;

    /* renamed from: k */
    private boolean f1504k;

    /* renamed from: l */
    private CharSequence f1505l;

    /* renamed from: m */
    private CharSequence f1506m;

    /* renamed from: n */
    private ActionMenuPresenter f1507n;

    /* renamed from: o */
    private int f1508o;

    /* renamed from: p */
    private int f1509p;

    /* renamed from: q */
    private Drawable f1510q;

    public C0371ac(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0142a.C0150h.abc_action_bar_up_description, C0142a.C0147e.abc_ic_ab_back_material);
    }

    public C0371ac(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f1508o = 0;
        this.f1509p = 0;
        this.f1494a = toolbar;
        this.f1495b = toolbar.f1449i;
        this.f1505l = toolbar.f1450j;
        this.f1504k = this.f1495b != null;
        this.f1503j = toolbar.m45837e();
        C0370ab m45804a = C0370ab.m45804a(toolbar.getContext(), null, C0142a.C0152j.ActionBar, C0142a.C0143a.actionBarStyle, 0);
        this.f1510q = m45804a.m45810a(C0142a.C0152j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m45801c = m45804a.m45801c(C0142a.C0152j.ActionBar_title);
            if (!TextUtils.isEmpty(m45801c)) {
                mo45641b(m45801c);
            }
            CharSequence m45801c2 = m45804a.m45801c(C0142a.C0152j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m45801c2)) {
                this.f1505l = m45801c2;
                if ((this.f1498e & 8) != 0) {
                    this.f1494a.setSubtitle(m45801c2);
                }
            }
            Drawable m45810a = m45804a.m45810a(C0142a.C0152j.ActionBar_logo);
            if (m45810a != null) {
                m45790d(m45810a);
            }
            Drawable m45810a2 = m45804a.m45810a(C0142a.C0152j.ActionBar_icon);
            if (m45810a2 != null) {
                mo45652a(m45810a2);
            }
            if (this.f1503j == null && (drawable = this.f1510q) != null) {
                mo45642b(drawable);
            }
            mo45639c(m45804a.m45809a(C0142a.C0152j.ActionBar_displayOptions, 0));
            int m45792g = m45804a.m45792g(C0142a.C0152j.ActionBar_customNavigationLayout, 0);
            if (m45792g != 0) {
                mo45650a(LayoutInflater.from(this.f1494a.getContext()).inflate(m45792g, (ViewGroup) this.f1494a, false));
                mo45639c(this.f1498e | 16);
            }
            int m45794f = m45804a.m45794f(C0142a.C0152j.ActionBar_height, 0);
            if (m45794f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1494a.getLayoutParams();
                layoutParams.height = m45794f;
                this.f1494a.setLayoutParams(layoutParams);
            }
            int m45798d = m45804a.m45798d(C0142a.C0152j.ActionBar_contentInsetStart, -1);
            int m45798d2 = m45804a.m45798d(C0142a.C0152j.ActionBar_contentInsetEnd, -1);
            if (m45798d >= 0 || m45798d2 >= 0) {
                this.f1494a.setContentInsetsRelative(Math.max(m45798d, 0), Math.max(m45798d2, 0));
            }
            int m45792g2 = m45804a.m45792g(C0142a.C0152j.ActionBar_titleTextStyle, 0);
            if (m45792g2 != 0) {
                Toolbar toolbar2 = this.f1494a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), m45792g2);
            }
            int m45792g3 = m45804a.m45792g(C0142a.C0152j.ActionBar_subtitleTextStyle, 0);
            if (m45792g3 != 0) {
                Toolbar toolbar3 = this.f1494a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), m45792g3);
            }
            int m45792g4 = m45804a.m45792g(C0142a.C0152j.ActionBar_popupTheme, 0);
            if (m45792g4 != 0) {
                this.f1494a.setPopupTheme(m45792g4);
            }
        } else {
            int i3 = 11;
            if (this.f1494a.m45837e() != null) {
                i3 = 15;
                this.f1510q = this.f1494a.m45837e();
            }
            this.f1498e = i3;
        }
        m45804a.f1491a.recycle();
        if (i != this.f1509p) {
            this.f1509p = i;
            if (TextUtils.isEmpty(this.f1494a.m45839d())) {
                mo45636d(this.f1509p);
            }
        }
        this.f1506m = this.f1494a.m45839d();
        this.f1494a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ac.1

            /* renamed from: a */
            final C0256a f1511a;

            {
                C0371ac.this = this;
                this.f1511a = new C0256a(this.f1494a.getContext(), 0, 16908332, 0, 0, this.f1495b);
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C0371ac.this.f1496c == null || !C0371ac.this.f1497d) {
                    return;
                }
                C0371ac.this.f1496c.onMenuItemSelected(0, this.f1511a);
            }
        });
    }

    /* renamed from: c */
    private void m45791c(CharSequence charSequence) {
        this.f1495b = charSequence;
        if ((this.f1498e & 8) != 0) {
            this.f1494a.setTitle(charSequence);
        }
    }

    /* renamed from: d */
    private void m45790d(Drawable drawable) {
        this.f1502i = drawable;
        m45788q();
    }

    /* renamed from: d */
    private void m45789d(CharSequence charSequence) {
        this.f1506m = charSequence;
        m45786s();
    }

    /* renamed from: q */
    private void m45788q() {
        Drawable drawable;
        int i = this.f1498e;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f1502i;
            if (drawable == null) {
                drawable = this.f1501h;
            }
        } else {
            drawable = this.f1501h;
        }
        this.f1494a.setLogo(drawable);
    }

    /* renamed from: r */
    private void m45787r() {
        if ((this.f1498e & 4) == 0) {
            this.f1494a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1494a;
        Drawable drawable = this.f1503j;
        if (drawable == null) {
            drawable = this.f1510q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: s */
    private void m45786s() {
        if ((this.f1498e & 4) != 0) {
            if (TextUtils.isEmpty(this.f1506m)) {
                this.f1494a.setNavigationContentDescription(this.f1509p);
            } else {
                this.f1494a.setNavigationContentDescription(this.f1506m);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final ViewGroup mo45655a() {
        return this.f1494a;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final C0940y mo45653a(final int i, long j) {
        return C0926v.m44086m(this.f1494a).m44049a(i == 0 ? 1.0f : 0.0f).m44048a(j).m44044a(new C0887aa() { // from class: androidx.appcompat.widget.ac.2

            /* renamed from: c */
            private boolean f1515c = false;

            @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
            /* renamed from: a */
            public final void mo44039a(View view) {
                C0371ac.this.f1494a.setVisibility(0);
            }

            @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
            /* renamed from: b */
            public final void mo44038b(View view) {
                if (!this.f1515c) {
                    C0371ac.this.f1494a.setVisibility(i);
                }
            }

            @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
            /* renamed from: c */
            public final void mo44037c(View view) {
                this.f1515c = true;
            }
        });
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45654a(int i) {
        mo45652a(i != 0 ? C0153a.m46374b(this.f1494a.getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45652a(Drawable drawable) {
        this.f1501h = drawable;
        m45788q();
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45651a(Menu menu, AbstractC0283m.AbstractC0284a abstractC0284a) {
        if (this.f1507n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1494a.getContext());
            this.f1507n = actionMenuPresenter;
            actionMenuPresenter.f820h = C0142a.C0148f.action_menu_presenter;
        }
        this.f1507n.f818f = abstractC0284a;
        this.f1494a.setMenu((C0268g) menu, this.f1507n);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45650a(View view) {
        View view2 = this.f1500g;
        if (view2 != null && (this.f1498e & 16) != 0) {
            this.f1494a.removeView(view2);
        }
        this.f1500g = view;
        if (view == null || (this.f1498e & 16) == 0) {
            return;
        }
        this.f1494a.addView(view);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45649a(Window.Callback callback) {
        this.f1496c = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45648a(AbstractC0283m.AbstractC0284a abstractC0284a, C0268g.AbstractC0269a abstractC0269a) {
        this.f1494a.setMenuCallbacks(abstractC0284a, abstractC0269a);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45647a(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1499f;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1494a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1499f);
            }
        }
        this.f1499f = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f1508o != 2) {
            return;
        }
        this.f1494a.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1499f.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.f282a = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45646a(CharSequence charSequence) {
        if (!this.f1504k) {
            m45791c(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: a */
    public final void mo45645a(boolean z) {
        this.f1494a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: b */
    public final Context mo45644b() {
        return this.f1494a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: b */
    public final void mo45643b(int i) {
        m45790d(i != 0 ? C0153a.m46374b(this.f1494a.getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: b */
    public final void mo45642b(Drawable drawable) {
        this.f1503j = drawable;
        m45787r();
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: b */
    public final void mo45641b(CharSequence charSequence) {
        this.f1504k = true;
        m45791c(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: c */
    public final void mo45639c(int i) {
        View view;
        int i2 = this.f1498e ^ i;
        this.f1498e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m45786s();
                }
                m45787r();
            }
            if ((i2 & 3) != 0) {
                m45788q();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1494a.setTitle(this.f1495b);
                    this.f1494a.setSubtitle(this.f1505l);
                } else {
                    this.f1494a.setTitle((CharSequence) null);
                    this.f1494a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f1500g) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f1494a.addView(view);
            } else {
                this.f1494a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: c */
    public final void mo45638c(Drawable drawable) {
        C0926v.m44128a(this.f1494a, drawable);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: c */
    public final boolean mo45640c() {
        Toolbar toolbar = this.f1494a;
        return (toolbar.f1453m == null || toolbar.f1453m.f1472b == null) ? false : true;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: d */
    public final void mo45637d() {
        this.f1494a.m45842c();
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: d */
    public final void mo45636d(int i) {
        m45789d(i == 0 ? null : this.f1494a.getContext().getString(i));
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: e */
    public final CharSequence mo45635e() {
        return this.f1494a.f1449i;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: e */
    public final void mo45634e(int i) {
        this.f1494a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: f */
    public final boolean mo45633f() {
        Toolbar toolbar = this.f1494a;
        return toolbar.getVisibility() == 0 && toolbar.f1441a != null && toolbar.f1441a.f1084b;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: g */
    public final boolean mo45632g() {
        return this.f1494a.ak_();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo45631h() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.Toolbar r0 = r0.f1494a
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuView r0 = r0.f1441a
            if (r0 == 0) goto L46
            r0 = r3
            androidx.appcompat.widget.ActionMenuView r0 = r0.f1441a
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f1085c
            if (r0 == 0) goto L3e
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f1085c
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter$c r0 = r0.f1062o
            if (r0 != 0) goto L33
            r0 = r3
            boolean r0 = r0.m46005j()
            if (r0 == 0) goto L2e
            goto L33
        L2e:
            r0 = 0
            r4 = r0
            goto L35
        L33:
            r0 = 1
            r4 = r0
        L35:
            r0 = r4
            if (r0 == 0) goto L3e
            r0 = 1
            r4 = r0
            goto L40
        L3e:
            r0 = 0
            r4 = r0
        L40:
            r0 = r4
            if (r0 == 0) goto L46
            r0 = 1
            return r0
        L46:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0371ac.mo45631h():boolean");
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: i */
    public final boolean mo45630i() {
        return this.f1494a.m45846b();
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: j */
    public final boolean mo45629j() {
        Toolbar toolbar = this.f1494a;
        if (toolbar.f1441a != null) {
            ActionMenuView actionMenuView = toolbar.f1441a;
            return actionMenuView.f1085c != null && actionMenuView.f1085c.m46008g();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: k */
    public final void mo45628k() {
        this.f1497d = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: l */
    public final void mo45627l() {
        Toolbar toolbar = this.f1494a;
        if (toolbar.f1441a != null) {
            toolbar.f1441a.m45995c();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: m */
    public final int mo45626m() {
        return this.f1498e;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: n */
    public final int mo45625n() {
        return this.f1508o;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: o */
    public final View mo45624o() {
        return this.f1500g;
    }

    @Override // androidx.appcompat.widget.AbstractC0406o
    /* renamed from: p */
    public final Menu mo45623p() {
        return this.f1494a.m45836f();
    }
}
