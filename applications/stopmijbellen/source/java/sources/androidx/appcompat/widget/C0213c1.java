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
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.widget.Toolbar;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
import p117h8.C3035k;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.c1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c1.class */
public class C0213c1 implements AbstractC0230g0 {

    /* renamed from: a */
    public Toolbar f874a;

    /* renamed from: b */
    public int f875b;

    /* renamed from: c */
    public View f876c;

    /* renamed from: d */
    public View f877d;

    /* renamed from: e */
    public Drawable f878e;

    /* renamed from: f */
    public Drawable f879f;

    /* renamed from: g */
    public Drawable f880g;

    /* renamed from: h */
    public boolean f881h;

    /* renamed from: i */
    public CharSequence f882i;

    /* renamed from: j */
    public CharSequence f883j;

    /* renamed from: k */
    public CharSequence f884k;

    /* renamed from: l */
    public Window.Callback f885l;

    /* renamed from: m */
    public boolean f886m;

    /* renamed from: n */
    public C0202c f887n;

    /* renamed from: o */
    public int f888o;

    /* renamed from: p */
    public Drawable f889p;

    /* renamed from: androidx.appcompat.widget.c1$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c1$a.class */
    public class C0214a extends C3260w0 {

        /* renamed from: N */
        public boolean f890N = false;

        /* renamed from: O */
        public final /* synthetic */ int f891O;

        public C0214a(int i) {
            C0213c1.this = r4;
            this.f891O = i;
        }

        @Override // p134j4.C3260w0, p163m0.AbstractC3614z
        /* renamed from: a */
        public void mo1977a(View view) {
            this.f890N = true;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            if (!this.f890N) {
                C0213c1.this.f874a.setVisibility(this.f891O);
            }
        }

        @Override // p134j4.C3260w0, p163m0.AbstractC3614z
        /* renamed from: d */
        public void mo1975d(View view) {
            C0213c1.this.f874a.setVisibility(0);
        }
    }

    public C0213c1(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.f888o = 0;
        this.f874a = toolbar;
        this.f882i = toolbar.getTitle();
        this.f883j = toolbar.getSubtitle();
        this.f881h = this.f882i != null;
        this.f880g = toolbar.getNavigationIcon();
        C0303z0 m8383q = C0303z0.m8383q(toolbar.getContext(), null, C3035k.f10214a, C3681R.attr.actionBarStyle, 0);
        int i = 15;
        this.f889p = m8383q.m8393g(15);
        if (z) {
            CharSequence m8386n = m8383q.m8386n(27);
            if (!TextUtils.isEmpty(m8386n)) {
                setTitle(m8386n);
            }
            CharSequence m8386n2 = m8383q.m8386n(25);
            if (!TextUtils.isEmpty(m8386n2)) {
                this.f883j = m8386n2;
                if ((this.f875b & 8) != 0) {
                    this.f874a.setSubtitle(m8386n2);
                }
            }
            Drawable m8393g = m8383q.m8393g(20);
            if (m8393g != null) {
                this.f879f = m8393g;
                m8563C();
            }
            Drawable m8393g2 = m8383q.m8393g(17);
            if (m8393g2 != null) {
                this.f878e = m8393g2;
                m8563C();
            }
            if (this.f880g == null && (drawable = this.f889p) != null) {
                this.f880g = drawable;
                m8564B();
            }
            mo8511o(m8383q.m8390j(10, 0));
            int m8388l = m8383q.m8388l(9, 0);
            if (m8388l != 0) {
                View inflate = LayoutInflater.from(this.f874a.getContext()).inflate(m8388l, (ViewGroup) this.f874a, false);
                View view = this.f877d;
                if (view != null && (this.f875b & 16) != 0) {
                    this.f874a.removeView(view);
                }
                this.f877d = inflate;
                if (inflate != null && (this.f875b & 16) != 0) {
                    this.f874a.addView(inflate);
                }
                mo8511o(this.f875b | 16);
            }
            int m8389k = m8383q.m8389k(13, 0);
            if (m8389k > 0) {
                ViewGroup.LayoutParams layoutParams = this.f874a.getLayoutParams();
                layoutParams.height = m8389k;
                this.f874a.setLayoutParams(layoutParams);
            }
            int m8395e = m8383q.m8395e(7, -1);
            int m8395e2 = m8383q.m8395e(3, -1);
            if (m8395e >= 0 || m8395e2 >= 0) {
                Toolbar toolbar2 = this.f874a;
                int max = Math.max(m8395e, 0);
                int max2 = Math.max(m8395e2, 0);
                toolbar2.m8614d();
                toolbar2.f786t.m8435a(max, max2);
            }
            int m8388l2 = m8383q.m8388l(28, 0);
            if (m8388l2 != 0) {
                Toolbar toolbar3 = this.f874a;
                Context context = toolbar3.getContext();
                toolbar3.f778l = m8388l2;
                TextView textView = toolbar3.f768b;
                if (textView != null) {
                    textView.setTextAppearance(context, m8388l2);
                }
            }
            int m8388l3 = m8383q.m8388l(26, 0);
            if (m8388l3 != 0) {
                Toolbar toolbar4 = this.f874a;
                Context context2 = toolbar4.getContext();
                toolbar4.f779m = m8388l3;
                TextView textView2 = toolbar4.f769c;
                if (textView2 != null) {
                    textView2.setTextAppearance(context2, m8388l3);
                }
            }
            int m8388l4 = m8383q.m8388l(22, 0);
            if (m8388l4 != 0) {
                this.f874a.setPopupTheme(m8388l4);
            }
        } else {
            if (this.f874a.getNavigationIcon() != null) {
                this.f889p = this.f874a.getNavigationIcon();
            } else {
                i = 11;
            }
            this.f875b = i;
        }
        m8383q.f1164b.recycle();
        if (2131820545 != this.f888o) {
            this.f888o = C3681R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(this.f874a.getNavigationContentDescription())) {
                mo8507s(this.f888o);
            }
        }
        this.f884k = this.f874a.getNavigationContentDescription();
        this.f874a.setNavigationOnClickListener(new View$OnClickListenerC0201b1(this));
    }

    /* renamed from: A */
    public final void m8565A() {
        if ((this.f875b & 4) != 0) {
            if (TextUtils.isEmpty(this.f884k)) {
                this.f874a.setNavigationContentDescription(this.f888o);
            } else {
                this.f874a.setNavigationContentDescription(this.f884k);
            }
        }
    }

    /* renamed from: B */
    public final void m8564B() {
        if ((this.f875b & 4) == 0) {
            this.f874a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f874a;
        Drawable drawable = this.f880g;
        if (drawable == null) {
            drawable = this.f889p;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: C */
    public final void m8563C() {
        Drawable drawable;
        int i = this.f875b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f879f;
            if (drawable == null) {
                drawable = this.f878e;
            }
        } else {
            drawable = this.f878e;
        }
        this.f874a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: a */
    public void mo8525a(Menu menu, AbstractC0144i.AbstractC0145a abstractC0145a) {
        C0140g c0140g;
        if (this.f887n == null) {
            C0202c c0202c = new C0202c(this.f874a.getContext());
            this.f887n = c0202c;
            c0202c.f375i = C3681R.C3684id.action_menu_presenter;
        }
        C0202c c0202c2 = this.f887n;
        c0202c2.f371e = abstractC0145a;
        Toolbar toolbar = this.f874a;
        C0136e c0136e = (C0136e) menu;
        if (c0136e == null && toolbar.f767a == null) {
            return;
        }
        toolbar.m8612f();
        C0136e c0136e2 = toolbar.f767a.f577p;
        if (c0136e2 == c0136e) {
            return;
        }
        if (c0136e2 != null) {
            c0136e2.m8704t(toolbar.f761L);
            c0136e2.m8704t(toolbar.f762M);
        }
        if (toolbar.f762M == null) {
            toolbar.f762M = new Toolbar.C0188d();
        }
        c0202c2.f851r = true;
        if (c0136e != null) {
            c0136e.m8713b(c0202c2, toolbar.f776j);
            c0136e.m8713b(toolbar.f762M, toolbar.f776j);
        } else {
            c0202c2.mo715c(toolbar.f776j, null);
            Toolbar.C0188d c0188d = toolbar.f762M;
            C0136e c0136e3 = c0188d.f796a;
            if (c0136e3 != null && (c0140g = c0188d.f797b) != null) {
                c0136e3.mo8680d(c0140g);
            }
            c0188d.f796a = null;
            c0202c2.mo711g(true);
            toolbar.f762M.mo711g(true);
        }
        toolbar.f767a.setPopupTheme(toolbar.f777k);
        toolbar.f767a.setPresenter(c0202c2);
        toolbar.f761L = c0202c2;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: b */
    public boolean mo8524b() {
        return this.f874a.m8601q();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: c */
    public void mo8523c() {
        this.f886m = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void collapseActionView() {
        Toolbar.C0188d c0188d = this.f874a.f762M;
        C0140g c0140g = c0188d == null ? null : c0188d.f797b;
        if (c0140g != null) {
            c0140g.collapseActionView();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8522d() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.Toolbar r0 = r0.f874a
            androidx.appcompat.widget.ActionMenuView r0 = r0.f767a
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L4a
            r0 = r3
            androidx.appcompat.widget.c r0 = r0.f581t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L3e
            r0 = r3
            androidx.appcompat.widget.c$c r0 = r0.f855v
            if (r0 != 0) goto L30
            r0 = r3
            boolean r0 = r0.m8570o()
            if (r0 == 0) goto L2a
            goto L30
        L2a:
            r0 = 0
            r6 = r0
            goto L33
        L30:
            r0 = 1
            r6 = r0
        L33:
            r0 = r6
            if (r0 == 0) goto L3e
            r0 = 1
            r6 = r0
            goto L41
        L3e:
            r0 = 0
            r6 = r0
        L41:
            r0 = r4
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L4a
            r0 = 1
            r5 = r0
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0213c1.mo8522d():boolean");
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: e */
    public boolean mo8521e() {
        ActionMenuView actionMenuView = this.f874a.f767a;
        boolean z = false;
        if (actionMenuView != null) {
            C0202c c0202c = actionMenuView.f581t;
            z = false;
            if (c0202c != null && c0202c.m8572m()) {
                z = true;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: f */
    public boolean mo8520f() {
        return this.f874a.m8595w();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: g */
    public boolean mo8519g() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f874a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f767a) != null && actionMenuView.f580s;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public Context getContext() {
        return this.f874a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public CharSequence getTitle() {
        return this.f874a.getTitle();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: h */
    public void mo8518h() {
        C0202c c0202c;
        ActionMenuView actionMenuView = this.f874a.f767a;
        if (actionMenuView == null || (c0202c = actionMenuView.f581t) == null) {
            return;
        }
        c0202c.m8574b();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: i */
    public void mo8517i(AbstractC0144i.AbstractC0145a abstractC0145a, C0136e.AbstractC0137a abstractC0137a) {
        Toolbar toolbar = this.f874a;
        toolbar.f763N = abstractC0145a;
        toolbar.f764O = abstractC0137a;
        ActionMenuView actionMenuView = toolbar.f767a;
        if (actionMenuView != null) {
            actionMenuView.f582u = abstractC0145a;
            actionMenuView.f583v = abstractC0137a;
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: j */
    public void mo8516j(int i) {
        this.f874a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: k */
    public void mo8515k(C0277s0 c0277s0) {
        View view = this.f876c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f874a;
            if (parent == toolbar) {
                toolbar.removeView(this.f876c);
            }
        }
        this.f876c = null;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: l */
    public ViewGroup mo8514l() {
        return this.f874a;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: m */
    public void mo8513m(boolean z) {
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: n */
    public boolean mo8512n() {
        Toolbar.C0188d c0188d = this.f874a.f762M;
        return (c0188d == null || c0188d.f797b == null) ? false : true;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: o */
    public void mo8511o(int i) {
        View view;
        int i2 = this.f875b ^ i;
        this.f875b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m8565A();
                }
                m8564B();
            }
            if ((i2 & 3) != 0) {
                m8563C();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f874a.setTitle(this.f882i);
                    this.f874a.setSubtitle(this.f883j);
                } else {
                    this.f874a.setTitle((CharSequence) null);
                    this.f874a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f877d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f874a.addView(view);
            } else {
                this.f874a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: p */
    public int mo8510p() {
        return this.f875b;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: q */
    public Menu mo8509q() {
        return this.f874a.getMenu();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: r */
    public void mo8508r(int i) {
        this.f879f = i != 0 ? C2788a.m3015b(getContext(), i) : null;
        m8563C();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: s */
    public void mo8507s(int i) {
        this.f884k = i == 0 ? null : getContext().getString(i);
        m8565A();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void setIcon(int i) {
        this.f878e = i != 0 ? C2788a.m3015b(getContext(), i) : null;
        m8563C();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void setIcon(Drawable drawable) {
        this.f878e = drawable;
        m8563C();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void setTitle(CharSequence charSequence) {
        this.f881h = true;
        m8562z(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void setWindowCallback(Window.Callback callback) {
        this.f885l = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f881h) {
            m8562z(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: t */
    public int mo8506t() {
        return 0;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: u */
    public C3611y mo8505u(int i, long j) {
        C3611y m2122b = C3589v.m2122b(this.f874a);
        m2122b.m1984a(i == 0 ? 1.0f : 0.0f);
        m2122b.m1982c(j);
        C0214a c0214a = new C0214a(i);
        View view = m2122b.f11802a.get();
        if (view != null) {
            m2122b.m1980e(view, c0214a);
        }
        return m2122b;
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: v */
    public void mo8504v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: w */
    public void mo8503w() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: x */
    public void mo8502x(Drawable drawable) {
        this.f880g = drawable;
        m8564B();
    }

    @Override // androidx.appcompat.widget.AbstractC0230g0
    /* renamed from: y */
    public void mo8501y(boolean z) {
        this.f874a.setCollapsible(z);
    }

    /* renamed from: z */
    public final void m8562z(CharSequence charSequence) {
        this.f882i = charSequence;
        if ((this.f875b & 8) != 0) {
            this.f874a.setTitle(charSequence);
            if (!this.f881h) {
                return;
            }
            C3589v.m2102v(this.f874a.getRootView(), charSequence);
        }
    }
}
