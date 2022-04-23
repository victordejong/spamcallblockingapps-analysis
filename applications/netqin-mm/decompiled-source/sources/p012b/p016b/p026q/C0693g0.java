package p012b.p016b.p026q;

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
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import p012b.p016b.C0574a;
import p012b.p016b.C0578e;
import p012b.p016b.C0579f;
import p012b.p016b.C0581h;
import p012b.p016b.C0583j;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.C0635a;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p042i.p054p.C0951a0;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1017y;
/* renamed from: b.b.q.g0 */
/* loaded from: classes-dex2jar.jar:b/b/q/g0.class */
public class C0693g0 implements AbstractC0715o {

    /* renamed from: a */
    public Toolbar f3414a;

    /* renamed from: b */
    public int f3415b;

    /* renamed from: c */
    public View f3416c;

    /* renamed from: d */
    public View f3417d;

    /* renamed from: e */
    public Drawable f3418e;

    /* renamed from: f */
    public Drawable f3419f;

    /* renamed from: g */
    public Drawable f3420g;

    /* renamed from: h */
    public boolean f3421h;

    /* renamed from: i */
    public CharSequence f3422i;

    /* renamed from: j */
    public CharSequence f3423j;

    /* renamed from: k */
    public CharSequence f3424k;

    /* renamed from: l */
    public Window.Callback f3425l;

    /* renamed from: m */
    public boolean f3426m;

    /* renamed from: n */
    public ActionMenuPresenter f3427n;

    /* renamed from: o */
    public int f3428o;

    /* renamed from: p */
    public int f3429p;

    /* renamed from: q */
    public Drawable f3430q;

    /* renamed from: b.b.q.g0$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/g0$a.class */
    public class View$OnClickListenerC0694a implements View.OnClickListener {

        /* renamed from: a */
        public final C0635a f3431a;

        public View$OnClickListenerC0694a() {
            this.f3431a = new C0635a(C0693g0.this.f3414a.getContext(), 0, 16908332, 0, 0, C0693g0.this.f3422i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0693g0 g0Var = C0693g0.this;
            Window.Callback callback = g0Var.f3425l;
            if (callback != null && g0Var.f3426m) {
                callback.onMenuItemSelected(0, this.f3431a);
            }
        }
    }

    /* renamed from: b.b.q.g0$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/g0$b.class */
    public class C0695b extends C0951a0 {

        /* renamed from: a */
        public boolean f3433a = false;

        /* renamed from: b */
        public final /* synthetic */ int f3434b;

        public C0695b(int i) {
            this.f3434b = i;
        }

        @Override // p012b.p042i.p054p.C0951a0, p012b.p042i.p054p.AbstractC1021z
        /* renamed from: a */
        public void mo35154a(View view) {
            this.f3433a = true;
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            if (!this.f3433a) {
                C0693g0.this.f3414a.setVisibility(this.f3434b);
            }
        }

        @Override // p012b.p042i.p054p.C0951a0, p012b.p042i.p054p.AbstractC1021z
        /* renamed from: c */
        public void mo35152c(View view) {
            C0693g0.this.f3414a.setVisibility(0);
        }
    }

    public C0693g0(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0581h.abc_action_bar_up_description, C0578e.abc_ic_ab_back_material);
    }

    public C0693g0(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f3428o = 0;
        this.f3429p = 0;
        this.f3414a = toolbar;
        this.f3422i = toolbar.getTitle();
        this.f3423j = toolbar.getSubtitle();
        this.f3421h = this.f3422i != null;
        this.f3420g = toolbar.getNavigationIcon();
        C0691f0 a = C0691f0.m36414a(toolbar.getContext(), null, C0583j.ActionBar, C0574a.actionBarStyle, 0);
        this.f3430q = a.m36412b(C0583j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence e = a.m36406e(C0583j.ActionBar_title);
            if (!TextUtils.isEmpty(e)) {
                m36394c(e);
            }
            CharSequence e2 = a.m36406e(C0583j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(e2)) {
                m36395b(e2);
            }
            Drawable b = a.m36412b(C0583j.ActionBar_logo);
            if (b != null) {
                m36399a(b);
            }
            Drawable b2 = a.m36412b(C0583j.ActionBar_icon);
            if (b2 != null) {
                setIcon(b2);
            }
            if (this.f3420g == null && (drawable = this.f3430q) != null) {
                m36396b(drawable);
            }
            mo36272a(a.m36407d(C0583j.ActionBar_displayOptions, 0));
            int g = a.m36401g(C0583j.ActionBar_customNavigationLayout, 0);
            if (g != 0) {
                m36398a(LayoutInflater.from(this.f3414a.getContext()).inflate(g, (ViewGroup) this.f3414a, false));
                mo36272a(this.f3415b | 16);
            }
            int f = a.m36403f(C0583j.ActionBar_height, 0);
            if (f > 0) {
                ViewGroup.LayoutParams layoutParams = this.f3414a.getLayoutParams();
                layoutParams.height = f;
                this.f3414a.setLayoutParams(layoutParams);
            }
            int b3 = a.m36411b(C0583j.ActionBar_contentInsetStart, -1);
            int b4 = a.m36411b(C0583j.ActionBar_contentInsetEnd, -1);
            if (b3 >= 0 || b4 >= 0) {
                this.f3414a.m38874a(Math.max(b3, 0), Math.max(b4, 0));
            }
            int g2 = a.m36401g(C0583j.ActionBar_titleTextStyle, 0);
            if (g2 != 0) {
                Toolbar toolbar2 = this.f3414a;
                toolbar2.m38861b(toolbar2.getContext(), g2);
            }
            int g3 = a.m36401g(C0583j.ActionBar_subtitleTextStyle, 0);
            if (g3 != 0) {
                Toolbar toolbar3 = this.f3414a;
                toolbar3.m38873a(toolbar3.getContext(), g3);
            }
            int g4 = a.m36401g(C0583j.ActionBar_popupTheme, 0);
            if (g4 != 0) {
                this.f3414a.setPopupTheme(g4);
            }
        } else {
            this.f3415b = m36390n();
        }
        a.m36413b();
        m36393d(i);
        this.f3424k = this.f3414a.getNavigationContentDescription();
        this.f3414a.setNavigationOnClickListener(new View$OnClickListenerC0694a());
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public C1017y mo36271a(int i, long j) {
        C1017y a = C1002u.m35249a(this.f3414a);
        a.m35164a(i == 0 ? 1.0f : 0.0f);
        a.m35163a(j);
        a.m35159a(new C0695b(i));
        return a;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public void mo36272a(int i) {
        View view;
        int i2 = this.f3415b ^ i;
        this.f3415b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m36389o();
                }
                m36388p();
            }
            if ((i2 & 3) != 0) {
                m36387q();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f3414a.setTitle(this.f3422i);
                    this.f3414a.setSubtitle(this.f3423j);
                } else {
                    this.f3414a.setTitle((CharSequence) null);
                    this.f3414a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && (view = this.f3417d) != null) {
                if ((i & 16) != 0) {
                    this.f3414a.addView(view);
                } else {
                    this.f3414a.removeView(view);
                }
            }
        }
    }

    /* renamed from: a */
    public void m36399a(Drawable drawable) {
        this.f3419f = drawable;
        m36387q();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public void mo36270a(Menu menu, AbstractC0662m.AbstractC0663a aVar) {
        if (this.f3427n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f3414a.getContext());
            this.f3427n = actionMenuPresenter;
            actionMenuPresenter.m36651a(C0579f.action_menu_presenter);
        }
        this.f3427n.mo36511a(aVar);
        this.f3414a.m38866a((C0647g) menu, this.f3427n);
    }

    /* renamed from: a */
    public void m36398a(View view) {
        View view2 = this.f3417d;
        if (!(view2 == null || (this.f3415b & 16) == 0)) {
            this.f3414a.removeView(view2);
        }
        this.f3417d = view;
        if (view != null && (this.f3415b & 16) != 0) {
            this.f3414a.addView(view);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public void mo36269a(C0737y yVar) {
        View view = this.f3416c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f3414a;
            if (parent == toolbar) {
                toolbar.removeView(this.f3416c);
            }
        }
        this.f3416c = yVar;
        if (yVar != null && this.f3428o == 2) {
            this.f3414a.addView(yVar, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f3416c.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
            layoutParams.f156a = 8388691;
            yVar.setAllowCollapse(true);
        }
    }

    /* renamed from: a */
    public void m36397a(CharSequence charSequence) {
        this.f3424k = charSequence;
        m36389o();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public void mo36268a(boolean z) {
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: a */
    public boolean mo36273a() {
        return this.f3414a.m38844n();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: b */
    public void mo36267b() {
        this.f3426m = true;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: b */
    public void mo36266b(int i) {
        m36399a(i != 0 ? C0601a.m36777c(getContext(), i) : null);
    }

    /* renamed from: b */
    public void m36396b(Drawable drawable) {
        this.f3420g = drawable;
        m36388p();
    }

    /* renamed from: b */
    public void m36395b(CharSequence charSequence) {
        this.f3423j = charSequence;
        if ((this.f3415b & 8) != 0) {
            this.f3414a.setSubtitle(charSequence);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: b */
    public void mo36265b(boolean z) {
        this.f3414a.setCollapsible(z);
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: c */
    public void mo36263c(int i) {
        this.f3414a.setVisibility(i);
    }

    /* renamed from: c */
    public void m36394c(CharSequence charSequence) {
        this.f3421h = true;
        m36392d(charSequence);
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: c */
    public boolean mo36264c() {
        return this.f3414a.m38863b();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public void collapseActionView() {
        this.f3414a.m38858c();
    }

    /* renamed from: d */
    public void m36393d(int i) {
        if (i != this.f3429p) {
            this.f3429p = i;
            if (TextUtils.isEmpty(this.f3414a.getNavigationContentDescription())) {
                m36391e(this.f3429p);
            }
        }
    }

    /* renamed from: d */
    public final void m36392d(CharSequence charSequence) {
        this.f3422i = charSequence;
        if ((this.f3415b & 8) != 0) {
            this.f3414a.setTitle(charSequence);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: d */
    public boolean mo36262d() {
        return this.f3414a.m38845m();
    }

    /* renamed from: e */
    public void m36391e(int i) {
        m36397a(i == 0 ? null : getContext().getString(i));
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: e */
    public boolean mo36261e() {
        return this.f3414a.m38846l();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: f */
    public boolean mo36260f() {
        return this.f3414a.m38840r();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: g */
    public void mo36259g() {
        this.f3414a.m38855d();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public Context getContext() {
        return this.f3414a.getContext();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public CharSequence getTitle() {
        return this.f3414a.getTitle();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: h */
    public boolean mo36258h() {
        return this.f3414a.m38847k();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: i */
    public int mo36257i() {
        return this.f3428o;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: j */
    public ViewGroup mo36256j() {
        return this.f3414a;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: k */
    public int mo36255k() {
        return this.f3415b;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: l */
    public void mo36254l() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    /* renamed from: m */
    public void mo36253m() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    /* renamed from: n */
    public final int m36390n() {
        int i;
        if (this.f3414a.getNavigationIcon() != null) {
            i = 15;
            this.f3430q = this.f3414a.getNavigationIcon();
        } else {
            i = 11;
        }
        return i;
    }

    /* renamed from: o */
    public final void m36389o() {
        if ((this.f3415b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f3424k)) {
            this.f3414a.setNavigationContentDescription(this.f3429p);
        } else {
            this.f3414a.setNavigationContentDescription(this.f3424k);
        }
    }

    /* renamed from: p */
    public final void m36388p() {
        if ((this.f3415b & 4) != 0) {
            Toolbar toolbar = this.f3414a;
            Drawable drawable = this.f3420g;
            if (drawable == null) {
                drawable = this.f3430q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f3414a.setNavigationIcon((Drawable) null);
    }

    /* renamed from: q */
    public final void m36387q() {
        Drawable drawable;
        int i = this.f3415b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f3419f;
            if (drawable == null) {
                drawable = this.f3418e;
            }
        } else {
            drawable = this.f3418e;
        }
        this.f3414a.setLogo(drawable);
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public void setIcon(int i) {
        setIcon(i != 0 ? C0601a.m36777c(getContext(), i) : null);
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public void setIcon(Drawable drawable) {
        this.f3418e = drawable;
        m36387q();
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public void setWindowCallback(Window.Callback callback) {
        this.f3425l = callback;
    }

    @Override // p012b.p016b.p026q.AbstractC0715o
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f3421h) {
            m36392d(charSequence);
        }
    }
}
