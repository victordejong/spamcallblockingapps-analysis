package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.C0187a;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p026h.C0570aa;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0607y;
/* renamed from: androidx.appcompat.widget.aq */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aq.class */
public class C0318aq implements AbstractC0368x {

    /* renamed from: a */
    Toolbar f1341a;

    /* renamed from: b */
    CharSequence f1342b;

    /* renamed from: c */
    Window.Callback f1343c;

    /* renamed from: d */
    boolean f1344d;

    /* renamed from: e */
    private int f1345e;

    /* renamed from: f */
    private View f1346f;

    /* renamed from: g */
    private View f1347g;

    /* renamed from: h */
    private Drawable f1348h;

    /* renamed from: i */
    private Drawable f1349i;

    /* renamed from: j */
    private Drawable f1350j;

    /* renamed from: k */
    private boolean f1351k;

    /* renamed from: l */
    private CharSequence f1352l;

    /* renamed from: m */
    private CharSequence f1353m;

    /* renamed from: n */
    private C0330c f1354n;

    /* renamed from: o */
    private int f1355o;

    /* renamed from: p */
    private int f1356p;

    /* renamed from: q */
    private Drawable f1357q;

    public C0318aq(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0083a.C0091h.abc_action_bar_up_description, C0083a.C0088e.abc_ic_ab_back_material);
    }

    public C0318aq(Toolbar toolbar, boolean z, int i, int i2) {
        this.f1355o = 0;
        this.f1356p = 0;
        this.f1341a = toolbar;
        this.f1342b = toolbar.getTitle();
        this.f1352l = toolbar.getSubtitle();
        this.f1351k = this.f1342b != null;
        this.f1350j = toolbar.getNavigationIcon();
        C0317ap m21433a = C0317ap.m21433a(toolbar.getContext(), null, C0083a.C0093j.ActionBar, C0083a.C0084a.actionBarStyle, 0);
        this.f1357q = m21433a.m21440a(C0083a.C0093j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m21429c = m21433a.m21429c(C0083a.C0093j.ActionBar_title);
            if (!TextUtils.isEmpty(m21429c)) {
                m21417b(m21429c);
            }
            CharSequence m21429c2 = m21433a.m21429c(C0083a.C0093j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m21429c2)) {
                m21415c(m21429c2);
            }
            Drawable m21440a = m21433a.m21440a(C0083a.C0093j.ActionBar_logo);
            if (m21440a != null) {
                m21418b(m21440a);
            }
            Drawable m21440a2 = m21433a.m21440a(C0083a.C0093j.ActionBar_icon);
            if (m21440a2 != null) {
                mo21195a(m21440a2);
            }
            if (this.f1350j == null && this.f1357q != null) {
                m21416c(this.f1357q);
            }
            mo21184c(m21433a.m21438a(C0083a.C0093j.ActionBar_displayOptions, 0));
            int m21420g = m21433a.m21420g(C0083a.C0093j.ActionBar_customNavigationLayout, 0);
            if (m21420g != 0) {
                m21419a(LayoutInflater.from(this.f1341a.getContext()).inflate(m21420g, (ViewGroup) this.f1341a, false));
                mo21184c(this.f1345e | 16);
            }
            int m21422f = m21433a.m21422f(C0083a.C0093j.ActionBar_height, 0);
            if (m21422f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1341a.getLayoutParams();
                layoutParams.height = m21422f;
                this.f1341a.setLayoutParams(layoutParams);
            }
            int m21426d = m21433a.m21426d(C0083a.C0093j.ActionBar_contentInsetStart, -1);
            int m21426d2 = m21433a.m21426d(C0083a.C0093j.ActionBar_contentInsetEnd, -1);
            if (m21426d >= 0 || m21426d2 >= 0) {
                this.f1341a.m21616a(Math.max(m21426d, 0), Math.max(m21426d2, 0));
            }
            int m21420g2 = m21433a.m21420g(C0083a.C0093j.ActionBar_titleTextStyle, 0);
            if (m21420g2 != 0) {
                this.f1341a.m21615a(this.f1341a.getContext(), m21420g2);
            }
            int m21420g3 = m21433a.m21420g(C0083a.C0093j.ActionBar_subtitleTextStyle, 0);
            if (m21420g3 != 0) {
                this.f1341a.m21600b(this.f1341a.getContext(), m21420g3);
            }
            int m21420g4 = m21433a.m21420g(C0083a.C0093j.ActionBar_popupTheme, 0);
            if (m21420g4 != 0) {
                this.f1341a.setPopupTheme(m21420g4);
            }
        } else {
            this.f1345e = m21410r();
        }
        m21433a.m21441a();
        m21413e(i);
        this.f1353m = this.f1341a.getNavigationContentDescription();
        this.f1341a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.aq.1

            /* renamed from: a */
            final C0187a f1358a;

            {
                C0318aq.this = this;
                this.f1358a = new C0187a(C0318aq.this.f1341a.getContext(), 0, 16908332, 0, 0, C0318aq.this.f1342b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C0318aq.this.f1343c == null || !C0318aq.this.f1344d) {
                    return;
                }
                C0318aq.this.f1343c.onMenuItemSelected(0, this.f1358a);
            }
        });
    }

    /* renamed from: e */
    private void m21412e(CharSequence charSequence) {
        this.f1342b = charSequence;
        if ((this.f1345e & 8) != 0) {
            this.f1341a.setTitle(charSequence);
        }
    }

    /* renamed from: r */
    private int m21410r() {
        int i = 11;
        if (this.f1341a.getNavigationIcon() != null) {
            i = 15;
            this.f1357q = this.f1341a.getNavigationIcon();
        }
        return i;
    }

    /* renamed from: s */
    private void m21409s() {
        Drawable drawable = null;
        if ((this.f1345e & 2) != 0) {
            drawable = (this.f1345e & 1) != 0 ? this.f1349i != null ? this.f1349i : this.f1348h : this.f1348h;
        }
        this.f1341a.setLogo(drawable);
    }

    /* renamed from: t */
    private void m21408t() {
        if ((this.f1345e & 4) != 0) {
            this.f1341a.setNavigationIcon(this.f1350j != null ? this.f1350j : this.f1357q);
        } else {
            this.f1341a.setNavigationIcon((Drawable) null);
        }
    }

    /* renamed from: u */
    private void m21407u() {
        if ((this.f1345e & 4) != 0) {
            if (TextUtils.isEmpty(this.f1353m)) {
                this.f1341a.setNavigationContentDescription(this.f1356p);
            } else {
                this.f1341a.setNavigationContentDescription(this.f1353m);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public ViewGroup mo21198a() {
        return this.f1341a;
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public C0607y mo21196a(final int i, long j) {
        return C0595u.m20311m(this.f1341a).m20255a(i == 0 ? 1.0f : 0.0f).m20254a(j).m20250a(new C0570aa() { // from class: androidx.appcompat.widget.aq.2

            /* renamed from: c */
            private boolean f1362c = false;

            @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
            /* renamed from: a */
            public void mo20245a(View view) {
                C0318aq.this.f1341a.setVisibility(0);
            }

            @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
            /* renamed from: b */
            public void mo20244b(View view) {
                if (!this.f1362c) {
                    C0318aq.this.f1341a.setVisibility(i);
                }
            }

            @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
            /* renamed from: c */
            public void mo20243c(View view) {
                this.f1362c = true;
            }
        });
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21197a(int i) {
        mo21195a(i != 0 ? C0094a.m22275b(mo21188b(), i) : null);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21195a(Drawable drawable) {
        this.f1348h = drawable;
        m21409s();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21194a(Menu menu, AbstractC0214m.AbstractC0215a abstractC0215a) {
        if (this.f1354n == null) {
            this.f1354n = new C0330c(this.f1341a.getContext());
            this.f1354n.m21923a(C0083a.C0089f.action_menu_presenter);
        }
        this.f1354n.mo3585a(abstractC0215a);
        this.f1341a.m21606a((C0199g) menu, this.f1354n);
    }

    /* renamed from: a */
    public void m21419a(View view) {
        if (this.f1347g != null && (this.f1345e & 16) != 0) {
            this.f1341a.removeView(this.f1347g);
        }
        this.f1347g = view;
        if (view == null || (this.f1345e & 16) == 0) {
            return;
        }
        this.f1341a.addView(this.f1347g);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21193a(Window.Callback callback) {
        this.f1343c = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21192a(AbstractC0214m.AbstractC0215a abstractC0215a, C0199g.AbstractC0200a abstractC0200a) {
        this.f1341a.m21605a(abstractC0215a, abstractC0200a);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21191a(C0305ai c0305ai) {
        if (this.f1346f != null && this.f1346f.getParent() == this.f1341a) {
            this.f1341a.removeView(this.f1346f);
        }
        this.f1346f = c0305ai;
        if (c0305ai == null || this.f1355o != 2) {
            return;
        }
        this.f1341a.addView(this.f1346f, 0);
        Toolbar.C0273b c0273b = (Toolbar.C0273b) this.f1346f.getLayoutParams();
        c0273b.width = -2;
        c0273b.height = -2;
        c0273b.f327a = 8388691;
        c0305ai.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21190a(CharSequence charSequence) {
        if (!this.f1351k) {
            m21412e(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: a */
    public void mo21189a(boolean z) {
        this.f1341a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: b */
    public Context mo21188b() {
        return this.f1341a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: b */
    public void mo21187b(int i) {
        m21418b(i != 0 ? C0094a.m22275b(mo21188b(), i) : null);
    }

    /* renamed from: b */
    public void m21418b(Drawable drawable) {
        this.f1349i = drawable;
        m21409s();
    }

    /* renamed from: b */
    public void m21417b(CharSequence charSequence) {
        this.f1351k = true;
        m21412e(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: b */
    public void mo21186b(boolean z) {
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: c */
    public void mo21184c(int i) {
        int i2 = this.f1345e ^ i;
        this.f1345e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m21407u();
                }
                m21408t();
            }
            if ((i2 & 3) != 0) {
                m21409s();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1341a.setTitle(this.f1342b);
                    this.f1341a.setSubtitle(this.f1352l);
                } else {
                    this.f1341a.setTitle((CharSequence) null);
                    this.f1341a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || this.f1347g == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f1341a.addView(this.f1347g);
            } else {
                this.f1341a.removeView(this.f1347g);
            }
        }
    }

    /* renamed from: c */
    public void m21416c(Drawable drawable) {
        this.f1350j = drawable;
        m21408t();
    }

    /* renamed from: c */
    public void m21415c(CharSequence charSequence) {
        this.f1352l = charSequence;
        if ((this.f1345e & 8) != 0) {
            this.f1341a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: c */
    public boolean mo21185c() {
        return this.f1341a.m21590g();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: d */
    public void mo21183d() {
        this.f1341a.m21589h();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: d */
    public void mo21182d(int i) {
        this.f1341a.setVisibility(i);
    }

    /* renamed from: d */
    public void m21414d(CharSequence charSequence) {
        this.f1353m = charSequence;
        m21407u();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: e */
    public CharSequence mo21181e() {
        return this.f1341a.getTitle();
    }

    /* renamed from: e */
    public void m21413e(int i) {
        if (i == this.f1356p) {
            return;
        }
        this.f1356p = i;
        if (!TextUtils.isEmpty(this.f1341a.getNavigationContentDescription())) {
            return;
        }
        m21411f(this.f1356p);
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: f */
    public void mo21180f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    /* renamed from: f */
    public void m21411f(int i) {
        m21414d(i == 0 ? null : mo21188b().getString(i));
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: g */
    public void mo21179g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: h */
    public boolean mo21178h() {
        return this.f1341a.m21618a();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: i */
    public boolean mo21177i() {
        return this.f1341a.m21602b();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: j */
    public boolean mo21176j() {
        return this.f1341a.m21597c();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: k */
    public boolean mo21175k() {
        return this.f1341a.m21594d();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: l */
    public boolean mo21174l() {
        return this.f1341a.m21592e();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: m */
    public void mo21173m() {
        this.f1344d = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: n */
    public void mo21172n() {
        this.f1341a.m21591f();
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: o */
    public int mo21171o() {
        return this.f1345e;
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: p */
    public int mo21170p() {
        return this.f1355o;
    }

    @Override // androidx.appcompat.widget.AbstractC0368x
    /* renamed from: q */
    public Menu mo21169q() {
        return this.f1341a.getMenu();
    }
}
