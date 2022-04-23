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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.aa;
import androidx.core.view.v;
import androidx.core.view.y;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac.class */
public final class ac implements o {

    /* renamed from: a  reason: collision with root package name */
    Toolbar f1047a;

    /* renamed from: b  reason: collision with root package name */
    CharSequence f1048b;

    /* renamed from: c  reason: collision with root package name */
    Window.Callback f1049c;

    /* renamed from: d  reason: collision with root package name */
    boolean f1050d;
    private int e;
    private View f;
    private View g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private boolean k;
    private CharSequence l;
    private CharSequence m;
    private ActionMenuPresenter n;
    private int o;
    private int p;
    private Drawable q;

    public ac(Toolbar toolbar, boolean z) {
        this(toolbar, z, a.h.abc_action_bar_up_description, a.e.abc_ic_ab_back_material);
    }

    public ac(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.o = 0;
        this.p = 0;
        this.f1047a = toolbar;
        this.f1048b = toolbar.i;
        this.l = toolbar.j;
        this.k = this.f1048b != null;
        this.j = toolbar.e();
        ab a2 = ab.a(toolbar.getContext(), null, a.j.ActionBar, a.C0018a.actionBarStyle, 0);
        this.q = a2.a(a.j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence c2 = a2.c(a.j.ActionBar_title);
            if (!TextUtils.isEmpty(c2)) {
                b(c2);
            }
            CharSequence c3 = a2.c(a.j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c3)) {
                this.l = c3;
                if ((this.e & 8) != 0) {
                    this.f1047a.setSubtitle(c3);
                }
            }
            Drawable a3 = a2.a(a.j.ActionBar_logo);
            if (a3 != null) {
                d(a3);
            }
            Drawable a4 = a2.a(a.j.ActionBar_icon);
            if (a4 != null) {
                a(a4);
            }
            if (this.j == null && (drawable = this.q) != null) {
                b(drawable);
            }
            c(a2.a(a.j.ActionBar_displayOptions, 0));
            int g = a2.g(a.j.ActionBar_customNavigationLayout, 0);
            if (g != 0) {
                a(LayoutInflater.from(this.f1047a.getContext()).inflate(g, (ViewGroup) this.f1047a, false));
                c(this.e | 16);
            }
            int f = a2.f(a.j.ActionBar_height, 0);
            if (f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1047a.getLayoutParams();
                layoutParams.height = f;
                this.f1047a.setLayoutParams(layoutParams);
            }
            int d2 = a2.d(a.j.ActionBar_contentInsetStart, -1);
            int d3 = a2.d(a.j.ActionBar_contentInsetEnd, -1);
            if (d2 >= 0 || d3 >= 0) {
                this.f1047a.setContentInsetsRelative(Math.max(d2, 0), Math.max(d3, 0));
            }
            int g2 = a2.g(a.j.ActionBar_titleTextStyle, 0);
            if (g2 != 0) {
                Toolbar toolbar2 = this.f1047a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), g2);
            }
            int g3 = a2.g(a.j.ActionBar_subtitleTextStyle, 0);
            if (g3 != 0) {
                Toolbar toolbar3 = this.f1047a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), g3);
            }
            int g4 = a2.g(a.j.ActionBar_popupTheme, 0);
            if (g4 != 0) {
                this.f1047a.setPopupTheme(g4);
            }
        } else {
            int i3 = 11;
            if (this.f1047a.e() != null) {
                i3 = 15;
                this.q = this.f1047a.e();
            }
            this.e = i3;
        }
        a2.f1044a.recycle();
        if (i != this.p) {
            this.p = i;
            if (TextUtils.isEmpty(this.f1047a.d())) {
                d(this.p);
            }
        }
        this.m = this.f1047a.d();
        this.f1047a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ac.1

            /* renamed from: a  reason: collision with root package name */
            final androidx.appcompat.view.menu.a f1051a;

            {
                this.f1051a = new androidx.appcompat.view.menu.a(ac.this.f1047a.getContext(), 0, 16908332, 0, 0, ac.this.f1048b);
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (ac.this.f1049c != null && ac.this.f1050d) {
                    ac.this.f1049c.onMenuItemSelected(0, this.f1051a);
                }
            }
        });
    }

    private void c(CharSequence charSequence) {
        this.f1048b = charSequence;
        if ((this.e & 8) != 0) {
            this.f1047a.setTitle(charSequence);
        }
    }

    private void d(Drawable drawable) {
        this.i = drawable;
        q();
    }

    private void d(CharSequence charSequence) {
        this.m = charSequence;
        s();
    }

    private void q() {
        Drawable drawable;
        int i = this.e;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.i;
            if (drawable == null) {
                drawable = this.h;
            }
        } else {
            drawable = this.h;
        }
        this.f1047a.setLogo(drawable);
    }

    private void r() {
        if ((this.e & 4) != 0) {
            Toolbar toolbar = this.f1047a;
            Drawable drawable = this.j;
            if (drawable == null) {
                drawable = this.q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1047a.setNavigationIcon((Drawable) null);
    }

    private void s() {
        if ((this.e & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.m)) {
            this.f1047a.setNavigationContentDescription(this.p);
        } else {
            this.f1047a.setNavigationContentDescription(this.m);
        }
    }

    @Override // androidx.appcompat.widget.o
    public final ViewGroup a() {
        return this.f1047a;
    }

    @Override // androidx.appcompat.widget.o
    public final y a(final int i, long j) {
        return v.m(this.f1047a).a(i == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED).a(j).a(new aa() { // from class: androidx.appcompat.widget.ac.2

            /* renamed from: c  reason: collision with root package name */
            private boolean f1055c = false;

            @Override // androidx.core.view.aa, androidx.core.view.z
            public final void a(View view) {
                ac.this.f1047a.setVisibility(0);
            }

            @Override // androidx.core.view.aa, androidx.core.view.z
            public final void b(View view) {
                if (!this.f1055c) {
                    ac.this.f1047a.setVisibility(i);
                }
            }

            @Override // androidx.core.view.aa, androidx.core.view.z
            public final void c(View view) {
                this.f1055c = true;
            }
        });
    }

    @Override // androidx.appcompat.widget.o
    public final void a(int i) {
        a(i != 0 ? androidx.appcompat.a.a.a.b(this.f1047a.getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.o
    public final void a(Drawable drawable) {
        this.h = drawable;
        q();
    }

    @Override // androidx.appcompat.widget.o
    public final void a(Menu menu, m.a aVar) {
        if (this.n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1047a.getContext());
            this.n = actionMenuPresenter;
            actionMenuPresenter.h = a.f.action_menu_presenter;
        }
        this.n.f = aVar;
        this.f1047a.setMenu((g) menu, this.n);
    }

    @Override // androidx.appcompat.widget.o
    public final void a(View view) {
        View view2 = this.g;
        if (!(view2 == null || (this.e & 16) == 0)) {
            this.f1047a.removeView(view2);
        }
        this.g = view;
        if (view != null && (this.e & 16) != 0) {
            this.f1047a.addView(view);
        }
    }

    @Override // androidx.appcompat.widget.o
    public final void a(Window.Callback callback) {
        this.f1049c = callback;
    }

    @Override // androidx.appcompat.widget.o
    public final void a(m.a aVar, g.a aVar2) {
        this.f1047a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.o
    public final void a(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1047a;
            if (parent == toolbar) {
                toolbar.removeView(this.f);
            }
        }
        this.f = scrollingTabContainerView;
        if (scrollingTabContainerView != null && this.o == 2) {
            this.f1047a.addView(scrollingTabContainerView, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.f567a = 8388691;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    @Override // androidx.appcompat.widget.o
    public final void a(CharSequence charSequence) {
        if (!this.k) {
            c(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.o
    public final void a(boolean z) {
        this.f1047a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.o
    public final Context b() {
        return this.f1047a.getContext();
    }

    @Override // androidx.appcompat.widget.o
    public final void b(int i) {
        d(i != 0 ? androidx.appcompat.a.a.a.b(this.f1047a.getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.o
    public final void b(Drawable drawable) {
        this.j = drawable;
        r();
    }

    @Override // androidx.appcompat.widget.o
    public final void b(CharSequence charSequence) {
        this.k = true;
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.o
    public final void c(int i) {
        View view;
        int i2 = this.e ^ i;
        this.e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    s();
                }
                r();
            }
            if ((i2 & 3) != 0) {
                q();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1047a.setTitle(this.f1048b);
                    this.f1047a.setSubtitle(this.l);
                } else {
                    this.f1047a.setTitle((CharSequence) null);
                    this.f1047a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && (view = this.g) != null) {
                if ((i & 16) != 0) {
                    this.f1047a.addView(view);
                } else {
                    this.f1047a.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.o
    public final void c(Drawable drawable) {
        v.a(this.f1047a, drawable);
    }

    @Override // androidx.appcompat.widget.o
    public final boolean c() {
        Toolbar toolbar = this.f1047a;
        return (toolbar.m == null || toolbar.m.f1030b == null) ? false : true;
    }

    @Override // androidx.appcompat.widget.o
    public final void d() {
        this.f1047a.c();
    }

    @Override // androidx.appcompat.widget.o
    public final void d(int i) {
        d(i == 0 ? null : this.f1047a.getContext().getString(i));
    }

    @Override // androidx.appcompat.widget.o
    public final CharSequence e() {
        return this.f1047a.i;
    }

    @Override // androidx.appcompat.widget.o
    public final void e(int i) {
        this.f1047a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.o
    public final boolean f() {
        Toolbar toolbar = this.f1047a;
        return toolbar.getVisibility() == 0 && toolbar.f1021a != null && toolbar.f1021a.f867b;
    }

    @Override // androidx.appcompat.widget.o
    public final boolean g() {
        return this.f1047a.ak_();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.widget.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.Toolbar r0 = r0.f1047a
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuView r0 = r0.f1021a
            if (r0 == 0) goto L_0x0046
            r0 = r3
            androidx.appcompat.widget.ActionMenuView r0 = r0.f1021a
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f868c
            if (r0 == 0) goto L_0x003e
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f868c
            r3 = r0
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter$c r0 = r0.o
            if (r0 != 0) goto L_0x0033
            r0 = r3
            boolean r0 = r0.j()
            if (r0 == 0) goto L_0x002e
            goto L_0x0033
        L_0x002e:
            r0 = 0
            r4 = r0
            goto L_0x0035
        L_0x0033:
            r0 = 1
            r4 = r0
        L_0x0035:
            r0 = r4
            if (r0 == 0) goto L_0x003e
            r0 = 1
            r4 = r0
            goto L_0x0040
        L_0x003e:
            r0 = 0
            r4 = r0
        L_0x0040:
            r0 = r4
            if (r0 == 0) goto L_0x0046
            r0 = 1
            return r0
        L_0x0046:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ac.h():boolean");
    }

    @Override // androidx.appcompat.widget.o
    public final boolean i() {
        return this.f1047a.b();
    }

    @Override // androidx.appcompat.widget.o
    public final boolean j() {
        Toolbar toolbar = this.f1047a;
        if (toolbar.f1021a == null) {
            return false;
        }
        ActionMenuView actionMenuView = toolbar.f1021a;
        return actionMenuView.f868c != null && actionMenuView.f868c.g();
    }

    @Override // androidx.appcompat.widget.o
    public final void k() {
        this.f1050d = true;
    }

    @Override // androidx.appcompat.widget.o
    public final void l() {
        Toolbar toolbar = this.f1047a;
        if (toolbar.f1021a != null) {
            toolbar.f1021a.c();
        }
    }

    @Override // androidx.appcompat.widget.o
    public final int m() {
        return this.e;
    }

    @Override // androidx.appcompat.widget.o
    public final int n() {
        return this.o;
    }

    @Override // androidx.appcompat.widget.o
    public final View o() {
        return this.g;
    }

    @Override // androidx.appcompat.widget.o
    public final Menu p() {
        return this.f1047a.f();
    }
}
