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
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.C0166a;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.Toolbar;
import p020b.p021a.C1423a;
import p020b.p021a.C1427e;
import p020b.p021a.C1428f;
import p020b.p021a.C1430h;
import p020b.p021a.C1432j;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1611c0;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.widget.f0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f0.class */
public class C0289f0 implements AbstractC0316p {

    /* renamed from: a */
    Toolbar f1265a;

    /* renamed from: b */
    private int f1266b;

    /* renamed from: c */
    private View f1267c;

    /* renamed from: d */
    private View f1268d;

    /* renamed from: e */
    private Drawable f1269e;

    /* renamed from: f */
    private Drawable f1270f;

    /* renamed from: g */
    private Drawable f1271g;

    /* renamed from: h */
    private boolean f1272h;

    /* renamed from: i */
    CharSequence f1273i;

    /* renamed from: j */
    private CharSequence f1274j;

    /* renamed from: k */
    private CharSequence f1275k;

    /* renamed from: l */
    Window.Callback f1276l;

    /* renamed from: m */
    boolean f1277m;

    /* renamed from: n */
    private ActionMenuPresenter f1278n;

    /* renamed from: o */
    private int f1279o;

    /* renamed from: p */
    private int f1280p;

    /* renamed from: q */
    private Drawable f1281q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.f0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f0$a.class */
    public class View$OnClickListenerC0290a implements View.OnClickListener {

        /* renamed from: d */
        final C0166a f1282d;

        View$OnClickListenerC0290a() {
            C0289f0.this = r11;
            this.f1282d = new C0166a(r11.f1265a.getContext(), 0, 16908332, 0, 0, r11.f1273i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0289f0 c0289f0 = C0289f0.this;
            Window.Callback callback = c0289f0.f1276l;
            if (callback == null || !c0289f0.f1277m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1282d);
        }
    }

    /* renamed from: androidx.appcompat.widget.f0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f0$b.class */
    class C0291b extends C1611c0 {

        /* renamed from: a */
        private boolean f1284a = false;

        /* renamed from: b */
        final /* synthetic */ int f1285b;

        C0291b(int i) {
            C0289f0.this = r4;
            this.f1285b = i;
        }

        @Override // p020b.p041h.p050l.C1611c0, p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: a */
        public void mo29609a(View view) {
            this.f1284a = true;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            if (!this.f1284a) {
                C0289f0.this.f1265a.setVisibility(this.f1285b);
            }
        }

        @Override // p020b.p041h.p050l.C1611c0, p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: c */
        public void mo29608c(View view) {
            C0289f0.this.f1265a.setVisibility(0);
        }
    }

    public C0289f0(Toolbar toolbar, boolean z) {
        this(toolbar, z, C1430h.abc_action_bar_up_description, C1427e.abc_ic_ab_back_material);
    }

    public C0289f0(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f1279o = 0;
        this.f1280p = 0;
        this.f1265a = toolbar;
        this.f1273i = toolbar.getTitle();
        this.f1274j = toolbar.getSubtitle();
        this.f1272h = this.f1273i != null;
        this.f1271g = toolbar.getNavigationIcon();
        C0286e0 m34946v = C0286e0.m34946v(toolbar.getContext(), null, C1432j.ActionBar, C1423a.actionBarStyle, 0);
        this.f1281q = m34946v.m34961g(C1432j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m34952p = m34946v.m34952p(C1432j.ActionBar_title);
            if (!TextUtils.isEmpty(m34952p)) {
                m34927A(m34952p);
            }
            CharSequence m34952p2 = m34946v.m34952p(C1432j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m34952p2)) {
                m34915z(m34952p2);
            }
            Drawable m34961g = m34946v.m34961g(C1432j.ActionBar_logo);
            if (m34961g != null) {
                m34919v(m34961g);
            }
            Drawable m34961g2 = m34946v.m34961g(C1432j.ActionBar_icon);
            if (m34961g2 != null) {
                setIcon(m34961g2);
            }
            if (this.f1271g == null && (drawable = this.f1281q) != null) {
                m34916y(drawable);
            }
            mo34787i(m34946v.m34957k(C1432j.ActionBar_displayOptions, 0));
            int m34954n = m34946v.m34954n(C1432j.ActionBar_customNavigationLayout, 0);
            if (m34954n != 0) {
                m34921t(LayoutInflater.from(this.f1265a.getContext()).inflate(m34954n, (ViewGroup) this.f1265a, false));
                mo34787i(this.f1266b | 16);
            }
            int m34955m = m34946v.m34955m(C1432j.ActionBar_height, 0);
            if (m34955m > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1265a.getLayoutParams();
                layoutParams.height = m34955m;
                this.f1265a.setLayoutParams(layoutParams);
            }
            int m34963e = m34946v.m34963e(C1432j.ActionBar_contentInsetStart, -1);
            int m34963e2 = m34946v.m34963e(C1432j.ActionBar_contentInsetEnd, -1);
            if (m34963e >= 0 || m34963e2 >= 0) {
                this.f1265a.setContentInsetsRelative(Math.max(m34963e, 0), Math.max(m34963e2, 0));
            }
            int m34954n2 = m34946v.m34954n(C1432j.ActionBar_titleTextStyle, 0);
            if (m34954n2 != 0) {
                Toolbar toolbar2 = this.f1265a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), m34954n2);
            }
            int m34954n3 = m34946v.m34954n(C1432j.ActionBar_subtitleTextStyle, 0);
            if (m34954n3 != 0) {
                Toolbar toolbar3 = this.f1265a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), m34954n3);
            }
            int m34954n4 = m34946v.m34954n(C1432j.ActionBar_popupTheme, 0);
            if (m34954n4 != 0) {
                this.f1265a.setPopupTheme(m34954n4);
            }
        } else {
            this.f1266b = m34922s();
        }
        m34946v.m34945w();
        m34920u(i);
        this.f1275k = this.f1265a.getNavigationContentDescription();
        this.f1265a.setNavigationOnClickListener(new View$OnClickListenerC0290a());
    }

    /* renamed from: B */
    private void m34926B(CharSequence charSequence) {
        this.f1273i = charSequence;
        if ((this.f1266b & 8) != 0) {
            this.f1265a.setTitle(charSequence);
        }
    }

    /* renamed from: C */
    private void m34925C() {
        if ((this.f1266b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1275k)) {
                this.f1265a.setNavigationContentDescription(this.f1280p);
            } else {
                this.f1265a.setNavigationContentDescription(this.f1275k);
            }
        }
    }

    /* renamed from: D */
    private void m34924D() {
        if ((this.f1266b & 4) == 0) {
            this.f1265a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1265a;
        Drawable drawable = this.f1271g;
        if (drawable == null) {
            drawable = this.f1281q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: E */
    private void m34923E() {
        Drawable drawable;
        int i = this.f1266b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f1270f;
            if (drawable == null) {
                drawable = this.f1269e;
            }
        } else {
            drawable = this.f1269e;
        }
        this.f1265a.setLogo(drawable);
    }

    /* renamed from: s */
    private int m34922s() {
        int i;
        if (this.f1265a.getNavigationIcon() != null) {
            i = 15;
            this.f1281q = this.f1265a.getNavigationIcon();
        } else {
            i = 11;
        }
        return i;
    }

    /* renamed from: A */
    public void m34927A(CharSequence charSequence) {
        this.f1272h = true;
        m34926B(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: a */
    public boolean mo34795a() {
        return this.f1265a.m35038A();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: b */
    public boolean mo34794b() {
        return this.f1265a.m35025d();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: c */
    public boolean mo34793c() {
        return this.f1265a.m35003z();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void collapseActionView() {
        this.f1265a.m35024e();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: d */
    public boolean mo34792d() {
        return this.f1265a.m35006w();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: e */
    public boolean mo34791e() {
        return this.f1265a.m35029J();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: f */
    public void mo34790f() {
        this.f1265a.m35023f();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: g */
    public void mo34789g(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1267c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1265a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1267c);
            }
        }
        this.f1267c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f1279o != 2) {
            return;
        }
        this.f1265a.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1267c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.f208a = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public Context getContext() {
        return this.f1265a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public CharSequence getTitle() {
        return this.f1265a.getTitle();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: h */
    public boolean mo34788h() {
        return this.f1265a.m35007v();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: i */
    public void mo34787i(int i) {
        View view;
        int i2 = this.f1266b ^ i;
        this.f1266b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m34925C();
                }
                m34924D();
            }
            if ((i2 & 3) != 0) {
                m34923E();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1265a.setTitle(this.f1273i);
                    this.f1265a.setSubtitle(this.f1274j);
                } else {
                    this.f1265a.setTitle((CharSequence) null);
                    this.f1265a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f1268d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f1265a.addView(view);
            } else {
                this.f1265a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: j */
    public void mo34786j(int i) {
        m34919v(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: k */
    public int mo34785k() {
        return this.f1279o;
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: l */
    public C1601a0 mo34784l(int i, long j) {
        return C1679w.m29302d(this.f1265a).m29642a(i == 0 ? 1.0f : 0.0f).m29639d(j).m29637f(new C0291b(i));
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: m */
    public ViewGroup mo34783m() {
        return this.f1265a;
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: n */
    public void mo34782n(boolean z) {
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: o */
    public int mo34781o() {
        return this.f1266b;
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: p */
    public void mo34780p() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: q */
    public void mo34779q() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    /* renamed from: r */
    public void mo34778r(boolean z) {
        this.f1265a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setIcon(int i) {
        setIcon(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setIcon(Drawable drawable) {
        this.f1269e = drawable;
        m34923E();
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setMenu(Menu menu, AbstractC0193m.AbstractC0194a abstractC0194a) {
        if (this.f1278n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1265a.getContext());
            this.f1278n = actionMenuPresenter;
            actionMenuPresenter.m35438s(C1428f.action_menu_presenter);
        }
        this.f1278n.mo35315g(abstractC0194a);
        this.f1265a.setMenu((C0178g) menu, this.f1278n);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setMenuPrepared() {
        this.f1277m = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setVisibility(int i) {
        this.f1265a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setWindowCallback(Window.Callback callback) {
        this.f1276l = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0316p
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f1272h) {
            m34926B(charSequence);
        }
    }

    /* renamed from: t */
    public void m34921t(View view) {
        View view2 = this.f1268d;
        if (view2 != null && (this.f1266b & 16) != 0) {
            this.f1265a.removeView(view2);
        }
        this.f1268d = view;
        if (view == null || (this.f1266b & 16) == 0) {
            return;
        }
        this.f1265a.addView(view);
    }

    /* renamed from: u */
    public void m34920u(int i) {
        if (i == this.f1280p) {
            return;
        }
        this.f1280p = i;
        if (!TextUtils.isEmpty(this.f1265a.getNavigationContentDescription())) {
            return;
        }
        m34918w(this.f1280p);
    }

    /* renamed from: v */
    public void m34919v(Drawable drawable) {
        this.f1270f = drawable;
        m34923E();
    }

    /* renamed from: w */
    public void m34918w(int i) {
        m34917x(i == 0 ? null : getContext().getString(i));
    }

    /* renamed from: x */
    public void m34917x(CharSequence charSequence) {
        this.f1275k = charSequence;
        m34925C();
    }

    /* renamed from: y */
    public void m34916y(Drawable drawable) {
        this.f1271g = drawable;
        m34924D();
    }

    /* renamed from: z */
    public void m34915z(CharSequence charSequence) {
        this.f1274j = charSequence;
        if ((this.f1266b & 8) != 0) {
            this.f1265a.setSubtitle(charSequence);
        }
    }
}
