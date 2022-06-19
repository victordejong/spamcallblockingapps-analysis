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
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.C0170a;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p023g.C0527aa;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
/* renamed from: androidx.appcompat.widget.at */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/at.class */
public class C0312at implements AbstractC0355z {

    /* renamed from: a */
    Toolbar f1284a;

    /* renamed from: b */
    CharSequence f1285b;

    /* renamed from: c */
    Window.Callback f1286c;

    /* renamed from: d */
    boolean f1287d;

    /* renamed from: e */
    private int f1288e;

    /* renamed from: f */
    private View f1289f;

    /* renamed from: g */
    private View f1290g;

    /* renamed from: h */
    private Drawable f1291h;

    /* renamed from: i */
    private Drawable f1292i;

    /* renamed from: j */
    private Drawable f1293j;

    /* renamed from: k */
    private boolean f1294k;

    /* renamed from: l */
    private CharSequence f1295l;

    /* renamed from: m */
    private CharSequence f1296m;

    /* renamed from: n */
    private ActionMenuPresenter f1297n;

    /* renamed from: o */
    private int f1298o;

    /* renamed from: p */
    private int f1299p;

    /* renamed from: q */
    private Drawable f1300q;

    public C0312at(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0051a.C0059h.abc_action_bar_up_description, C0051a.C0056e.abc_ic_ab_back_material);
    }

    public C0312at(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f1298o = 0;
        this.f1299p = 0;
        this.f1284a = toolbar;
        this.f1285b = toolbar.getTitle();
        this.f1295l = toolbar.getSubtitle();
        this.f1294k = this.f1285b != null;
        this.f1293j = toolbar.getNavigationIcon();
        C0311as m7156a = C0311as.m7156a(toolbar.getContext(), null, C0051a.C0061j.ActionBar, C0051a.C0052a.actionBarStyle, 0);
        this.f1300q = m7156a.m7163a(C0051a.C0061j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m7152c = m7156a.m7152c(C0051a.C0061j.ActionBar_title);
            if (!TextUtils.isEmpty(m7152c)) {
                mo6946b(m7152c);
            }
            CharSequence m7152c2 = m7156a.m7152c(C0051a.C0061j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m7152c2)) {
                m7140c(m7152c2);
            }
            Drawable m7163a = m7156a.m7163a(C0051a.C0061j.ActionBar_logo);
            if (m7163a != null) {
                m7141c(m7163a);
            }
            Drawable m7163a2 = m7156a.m7163a(C0051a.C0061j.ActionBar_icon);
            if (m7163a2 != null) {
                mo6956a(m7163a2);
            }
            if (this.f1293j == null && (drawable = this.f1300q) != null) {
                mo6947b(drawable);
            }
            mo6943c(m7156a.m7161a(C0051a.C0061j.ActionBar_displayOptions, 0));
            int m7143g = m7156a.m7143g(C0051a.C0061j.ActionBar_customNavigationLayout, 0);
            if (m7143g != 0) {
                m7142a(LayoutInflater.from(this.f1284a.getContext()).inflate(m7143g, (ViewGroup) this.f1284a, false));
                mo6943c(this.f1288e | 16);
            }
            int m7145f = m7156a.m7145f(C0051a.C0061j.ActionBar_height, 0);
            if (m7145f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1284a.getLayoutParams();
                layoutParams.height = m7145f;
                this.f1284a.setLayoutParams(layoutParams);
            }
            int m7149d = m7156a.m7149d(C0051a.C0061j.ActionBar_contentInsetStart, -1);
            int m7149d2 = m7156a.m7149d(C0051a.C0061j.ActionBar_contentInsetEnd, -1);
            if (m7149d >= 0 || m7149d2 >= 0) {
                this.f1284a.setContentInsetsRelative(Math.max(m7149d, 0), Math.max(m7149d2, 0));
            }
            int m7143g2 = m7156a.m7143g(C0051a.C0061j.ActionBar_titleTextStyle, 0);
            if (m7143g2 != 0) {
                Toolbar toolbar2 = this.f1284a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), m7143g2);
            }
            int m7143g3 = m7156a.m7143g(C0051a.C0061j.ActionBar_subtitleTextStyle, 0);
            if (m7143g3 != 0) {
                Toolbar toolbar3 = this.f1284a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), m7143g3);
            }
            int m7143g4 = m7156a.m7143g(C0051a.C0061j.ActionBar_popupTheme, 0);
            if (m7143g4 != 0) {
                this.f1284a.setPopupTheme(m7143g4);
            }
        } else {
            this.f1288e = m7136r();
        }
        m7156a.m7164a();
        m7137f(i);
        this.f1296m = this.f1284a.getNavigationContentDescription();
        this.f1284a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.at.1

            /* renamed from: a */
            final C0170a f1301a;

            {
                C0312at.this = this;
                this.f1301a = new C0170a(C0312at.this.f1284a.getContext(), 0, 16908332, 0, 0, C0312at.this.f1285b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C0312at.this.f1286c == null || !C0312at.this.f1287d) {
                    return;
                }
                C0312at.this.f1286c.onMenuItemSelected(0, this.f1301a);
            }
        });
    }

    /* renamed from: e */
    private void m7138e(CharSequence charSequence) {
        this.f1285b = charSequence;
        if ((this.f1288e & 8) != 0) {
            this.f1284a.setTitle(charSequence);
        }
    }

    /* renamed from: r */
    private int m7136r() {
        int i;
        if (this.f1284a.getNavigationIcon() != null) {
            i = 15;
            this.f1300q = this.f1284a.getNavigationIcon();
        } else {
            i = 11;
        }
        return i;
    }

    /* renamed from: s */
    private void m7135s() {
        Drawable drawable;
        int i = this.f1288e;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f1292i;
            if (drawable == null) {
                drawable = this.f1291h;
            }
        } else {
            drawable = this.f1291h;
        }
        this.f1284a.setLogo(drawable);
    }

    /* renamed from: t */
    private void m7134t() {
        if ((this.f1288e & 4) == 0) {
            this.f1284a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1284a;
        Drawable drawable = this.f1293j;
        if (drawable == null) {
            drawable = this.f1300q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: u */
    private void m7133u() {
        if ((this.f1288e & 4) != 0) {
            if (TextUtils.isEmpty(this.f1296m)) {
                this.f1284a.setNavigationContentDescription(this.f1299p);
            } else {
                this.f1284a.setNavigationContentDescription(this.f1296m);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public ViewGroup mo6959a() {
        return this.f1284a;
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public C0564y mo6957a(final int i, long j) {
        return C0552u.m6233n(this.f1284a).m6188a(i == 0 ? 1.0f : 0.0f).m6187a(j).m6183a(new C0527aa() { // from class: androidx.appcompat.widget.at.2

            /* renamed from: c */
            private boolean f1305c = false;

            @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
            /* renamed from: a */
            public void mo3963a(View view) {
                C0312at.this.f1284a.setVisibility(0);
            }

            @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
            /* renamed from: b */
            public void mo3962b(View view) {
                if (!this.f1305c) {
                    C0312at.this.f1284a.setVisibility(i);
                }
            }

            @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
            /* renamed from: c */
            public void mo3961c(View view) {
                this.f1305c = true;
            }
        });
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6958a(int i) {
        mo6956a(i != 0 ? C0062a.m7983b(mo6949b(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6956a(Drawable drawable) {
        this.f1291h = drawable;
        m7135s();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6955a(Menu menu, AbstractC0197m.AbstractC0198a abstractC0198a) {
        if (this.f1297n == null) {
            this.f1297n = new ActionMenuPresenter(this.f1284a.getContext());
            this.f1297n.m7592a(C0051a.C0057f.action_menu_presenter);
        }
        this.f1297n.setCallback(abstractC0198a);
        this.f1284a.setMenu((C0182g) menu, this.f1297n);
    }

    /* renamed from: a */
    public void m7142a(View view) {
        View view2 = this.f1290g;
        if (view2 != null && (this.f1288e & 16) != 0) {
            this.f1284a.removeView(view2);
        }
        this.f1290g = view;
        if (view == null || (this.f1288e & 16) == 0) {
            return;
        }
        this.f1284a.addView(this.f1290g);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6954a(Window.Callback callback) {
        this.f1286c = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6953a(AbstractC0197m.AbstractC0198a abstractC0198a, C0182g.AbstractC0183a abstractC0183a) {
        this.f1284a.setMenuCallbacks(abstractC0198a, abstractC0183a);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6952a(C0299al c0299al) {
        View view = this.f1289f;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1284a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1289f);
            }
        }
        this.f1289f = c0299al;
        if (c0299al == null || this.f1298o != 2) {
            return;
        }
        this.f1284a.addView(this.f1289f, 0);
        Toolbar.C0263b c0263b = (Toolbar.C0263b) this.f1289f.getLayoutParams();
        c0263b.width = -2;
        c0263b.height = -2;
        c0263b.f237a = 8388691;
        c0299al.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6951a(CharSequence charSequence) {
        if (!this.f1294k) {
            m7138e(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: a */
    public void mo6950a(boolean z) {
        this.f1284a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: b */
    public Context mo6949b() {
        return this.f1284a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: b */
    public void mo6948b(int i) {
        m7141c(i != 0 ? C0062a.m7983b(mo6949b(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: b */
    public void mo6947b(Drawable drawable) {
        this.f1293j = drawable;
        m7134t();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: b */
    public void mo6946b(CharSequence charSequence) {
        this.f1294k = true;
        m7138e(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: b */
    public void mo6945b(boolean z) {
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: c */
    public void mo6943c(int i) {
        View view;
        int i2 = this.f1288e ^ i;
        this.f1288e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m7133u();
                }
                m7134t();
            }
            if ((i2 & 3) != 0) {
                m7135s();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1284a.setTitle(this.f1285b);
                    this.f1284a.setSubtitle(this.f1295l);
                } else {
                    this.f1284a.setTitle((CharSequence) null);
                    this.f1284a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f1290g) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f1284a.addView(view);
            } else {
                this.f1284a.removeView(view);
            }
        }
    }

    /* renamed from: c */
    public void m7141c(Drawable drawable) {
        this.f1292i = drawable;
        m7135s();
    }

    /* renamed from: c */
    public void m7140c(CharSequence charSequence) {
        this.f1295l = charSequence;
        if ((this.f1288e & 8) != 0) {
            this.f1284a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: c */
    public boolean mo6944c() {
        return this.f1284a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: d */
    public void mo6942d() {
        this.f1284a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: d */
    public void mo6941d(int i) {
        m7139d(i == 0 ? null : mo6949b().getString(i));
    }

    /* renamed from: d */
    public void m7139d(CharSequence charSequence) {
        this.f1296m = charSequence;
        m7133u();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: e */
    public CharSequence mo6940e() {
        return this.f1284a.getTitle();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: e */
    public void mo6939e(int i) {
        this.f1284a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: f */
    public void mo6938f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    /* renamed from: f */
    public void m7137f(int i) {
        if (i == this.f1299p) {
            return;
        }
        this.f1299p = i;
        if (!TextUtils.isEmpty(this.f1284a.getNavigationContentDescription())) {
            return;
        }
        mo6941d(this.f1299p);
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: g */
    public void mo6937g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: h */
    public boolean mo6936h() {
        return this.f1284a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: i */
    public boolean mo6935i() {
        return this.f1284a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: j */
    public boolean mo6934j() {
        return this.f1284a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: k */
    public boolean mo6933k() {
        return this.f1284a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: l */
    public boolean mo6932l() {
        return this.f1284a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: m */
    public void mo6931m() {
        this.f1287d = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: n */
    public void mo6930n() {
        this.f1284a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: o */
    public int mo6929o() {
        return this.f1288e;
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: p */
    public int mo6928p() {
        return this.f1298o;
    }

    @Override // androidx.appcompat.widget.AbstractC0355z
    /* renamed from: q */
    public Menu mo6927q() {
        return this.f1284a.getMenu();
    }
}
