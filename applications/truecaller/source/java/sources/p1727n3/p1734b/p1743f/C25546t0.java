package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26625z;
/* renamed from: n3.b.f.t0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/t0.class */
public class C25546t0 implements AbstractC25551v {

    /* renamed from: a */
    public Toolbar f71486a;

    /* renamed from: b */
    public int f71487b;

    /* renamed from: c */
    public View f71488c;

    /* renamed from: d */
    public View f71489d;

    /* renamed from: e */
    public Drawable f71490e;

    /* renamed from: f */
    public Drawable f71491f;

    /* renamed from: g */
    public Drawable f71492g;

    /* renamed from: h */
    public boolean f71493h;

    /* renamed from: i */
    public CharSequence f71494i;

    /* renamed from: j */
    public CharSequence f71495j;

    /* renamed from: k */
    public CharSequence f71496k;

    /* renamed from: l */
    public Window.Callback f71497l;

    /* renamed from: m */
    public boolean f71498m;

    /* renamed from: n */
    public ActionMenuPresenter f71499n;

    /* renamed from: o */
    public int f71500o;

    /* renamed from: p */
    public Drawable f71501p;

    public C25546t0(Toolbar toolbar, boolean z) {
        int i;
        Drawable drawable;
        int i2 = C0032R.string.abc_action_bar_up_description;
        this.f71500o = 0;
        this.f71486a = toolbar;
        this.f71494i = toolbar.getTitle();
        this.f71495j = toolbar.getSubtitle();
        this.f71493h = this.f71494i != null;
        this.f71492g = toolbar.getNavigationIcon();
        C25540r0 m3306q = C25540r0.m3306q(toolbar.getContext(), null, C0032R.styleable.ActionBar, C0032R.attr.actionBarStyle, 0);
        this.f71501p = m3306q.m3316g(C0032R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence m3309n = m3306q.m3309n(C0032R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(m3309n)) {
                setTitle(m3309n);
            }
            CharSequence m3309n2 = m3306q.m3309n(C0032R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(m3309n2)) {
                mo3258t4(m3309n2);
            }
            Drawable m3316g = m3306q.m3316g(C0032R.styleable.ActionBar_logo);
            if (m3316g != null) {
                this.f71491f = m3316g;
                m3291j();
            }
            Drawable m3316g2 = m3306q.m3316g(C0032R.styleable.ActionBar_icon);
            if (m3316g2 != null) {
                this.f71490e = m3316g2;
                m3291j();
            }
            if (this.f71492g == null && (drawable = this.f71501p) != null) {
                this.f71492g = drawable;
                m3292i();
            }
            mo3256v4(m3306q.m3313j(C0032R.styleable.ActionBar_displayOptions, 0));
            int m3311l = m3306q.m3311l(C0032R.styleable.ActionBar_customNavigationLayout, 0);
            if (m3311l != 0) {
                View inflate = LayoutInflater.from(this.f71486a.getContext()).inflate(m3311l, (ViewGroup) this.f71486a, false);
                View view = this.f71489d;
                if (view != null && (this.f71487b & 16) != 0) {
                    this.f71486a.removeView(view);
                }
                this.f71489d = inflate;
                if (inflate != null && (this.f71487b & 16) != 0) {
                    this.f71486a.addView(inflate);
                }
                mo3256v4(this.f71487b | 16);
            }
            int m3312k = m3306q.m3312k(C0032R.styleable.ActionBar_height, 0);
            if (m3312k > 0) {
                ViewGroup.LayoutParams layoutParams = this.f71486a.getLayoutParams();
                layoutParams.height = m3312k;
                this.f71486a.setLayoutParams(layoutParams);
            }
            int m3318e = m3306q.m3318e(C0032R.styleable.ActionBar_contentInsetStart, -1);
            int m3318e2 = m3306q.m3318e(C0032R.styleable.ActionBar_contentInsetEnd, -1);
            if (m3318e >= 0 || m3318e2 >= 0) {
                Toolbar toolbar2 = this.f71486a;
                int max = Math.max(m3318e, 0);
                int max2 = Math.max(m3318e2, 0);
                toolbar2.m43089d();
                toolbar2.f475t.m3345a(max, max2);
            }
            int m3311l2 = m3306q.m3311l(C0032R.styleable.ActionBar_titleTextStyle, 0);
            if (m3311l2 != 0) {
                Toolbar toolbar3 = this.f71486a;
                Context context = toolbar3.getContext();
                toolbar3.f467l = m3311l2;
                TextView textView = toolbar3.f457b;
                if (textView != null) {
                    textView.setTextAppearance(context, m3311l2);
                }
            }
            int m3311l3 = m3306q.m3311l(C0032R.styleable.ActionBar_subtitleTextStyle, 0);
            if (m3311l3 != 0) {
                Toolbar toolbar4 = this.f71486a;
                Context context2 = toolbar4.getContext();
                toolbar4.f468m = m3311l3;
                TextView textView2 = toolbar4.f458c;
                if (textView2 != null) {
                    textView2.setTextAppearance(context2, m3311l3);
                }
            }
            int m3311l4 = m3306q.m3311l(C0032R.styleable.ActionBar_popupTheme, 0);
            if (m3311l4 != 0) {
                this.f71486a.setPopupTheme(m3311l4);
            }
        } else {
            if (this.f71486a.getNavigationIcon() != null) {
                i = 15;
                this.f71501p = this.f71486a.getNavigationIcon();
            } else {
                i = 11;
            }
            this.f71487b = i;
        }
        m3306q.f71466b.recycle();
        if (i2 != this.f71500o) {
            this.f71500o = i2;
            if (TextUtils.isEmpty(this.f71486a.getNavigationContentDescription())) {
                mo3254x4(this.f71500o);
            }
        }
        this.f71496k = this.f71486a.getNavigationContentDescription();
        this.f71486a.setNavigationOnClickListener(new View$OnClickListenerC25544s0(this));
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: A4 */
    public void mo3277A4() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f71486a.f456a;
        if (actionMenuView == null || (actionMenuPresenter = actionMenuView.f238t) == null) {
            return;
        }
        actionMenuPresenter.h();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: B4 */
    public int mo3276B4() {
        return this.f71487b;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: C4 */
    public void mo3275C4() {
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: D4 */
    public void mo3274D4(Drawable drawable) {
        this.f71492g = drawable;
        m3292i();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: E4 */
    public Menu mo3273E4() {
        return this.f71486a.getMenu();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: F4 */
    public C26625z mo3272F4(int i, long j) {
        C26625z m1579b = C26614s.m1579b(this.f71486a);
        m1579b.m1551a(i == 0 ? 1.0f : 0.0f);
        m1579b.m1549c(j);
        a aVar = new a(this, i);
        View view = m1579b.f74523a.get();
        if (view != null) {
            m1579b.m1547e(view, aVar);
        }
        return m1579b;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: G4 */
    public ViewGroup mo3271G4() {
        return this.f71486a;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: H4 */
    public void mo3270H4(boolean z) {
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: I4 */
    public void mo3269I4(C25525k0 c25525k0) {
        View view = this.f71488c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f71486a;
            if (parent == toolbar) {
                toolbar.removeView(this.f71488c);
            }
        }
        this.f71488c = null;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: J4 */
    public void mo3268J4(int i) {
        this.f71491f = i != 0 ? C25440a.m3540a(getContext(), i) : null;
        m3291j();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: K4 */
    public void mo3267K4(int i) {
        this.f71492g = i != 0 ? C25440a.m3540a(getContext(), i) : null;
        m3292i();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: L4 */
    public void mo3266L4(AbstractC25483m.AbstractC25484a abstractC25484a, C25469g.AbstractC25470a abstractC25470a) {
        Toolbar toolbar = this.f71486a;
        toolbar.f452P = abstractC25484a;
        toolbar.f453Q = abstractC25470a;
        ActionMenuView actionMenuView = toolbar.f456a;
        if (actionMenuView != null) {
            actionMenuView.f239u = abstractC25484a;
            actionMenuView.f240v = abstractC25470a;
        }
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: a */
    public boolean mo3265a() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f71486a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f456a) != null && actionMenuView.f237s;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: b */
    public boolean mo3264b() {
        return this.f71486a.m43071v();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: c */
    public boolean mo3263c() {
        return this.f71486a.m43077p();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void collapseActionView() {
        Toolbar.C0080d c0080d = this.f71486a.f451O;
        C25473i c25473i = c0080d == null ? null : c0080d.f488b;
        if (c25473i != null) {
            c25473i.collapseActionView();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if ((r0 != null && r0.m()) != false) goto L13;
     */
    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3262d() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.Toolbar r0 = r0.f71486a
            androidx.appcompat.widget.ActionMenuView r0 = r0.f456a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L2c
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f238t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L23
            r0 = r3
            boolean r0 = r0.m()
            if (r0 == 0) goto L23
            r0 = 1
            r5 = r0
            goto L25
        L23:
            r0 = 0
            r5 = r0
        L25:
            r0 = r5
            if (r0 == 0) goto L2c
            goto L2e
        L2c:
            r0 = 0
            r4 = r0
        L2e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25546t0.mo3262d():boolean");
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: e */
    public void mo3261e(Menu menu, AbstractC25483m.AbstractC25484a abstractC25484a) {
        C25473i c25473i;
        if (this.f71499n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f71486a.getContext());
            this.f71499n = actionMenuPresenter;
            actionMenuPresenter.f71186i = C0032R.C0034id.action_menu_presenter;
        }
        ActionMenuPresenter actionMenuPresenter2 = this.f71499n;
        actionMenuPresenter2.f71182e = abstractC25484a;
        Toolbar toolbar = this.f71486a;
        C25469g c25469g = (C25469g) menu;
        if (c25469g == null && toolbar.f456a == null) {
            return;
        }
        toolbar.m43087f();
        C25469g c25469g2 = toolbar.f456a.f234p;
        if (c25469g2 == c25469g) {
            return;
        }
        if (c25469g2 != null) {
            c25469g2.m3463u(toolbar.f450N);
            c25469g2.m3463u(toolbar.f451O);
        }
        if (toolbar.f451O == null) {
            toolbar.f451O = new Toolbar.C0080d();
        }
        actionMenuPresenter2.r = true;
        if (c25469g != null) {
            c25469g.m3482b(actionMenuPresenter2, toolbar.f465j);
            c25469g.m3482b(toolbar.f451O, toolbar.f465j);
        } else {
            actionMenuPresenter2.g(toolbar.f465j, (C25469g) null);
            Toolbar.C0080d c0080d = toolbar.f451O;
            C25469g c25469g3 = c0080d.f487a;
            if (c25469g3 != null && (c25473i = c0080d.f488b) != null) {
                c25469g3.m3480d(c25473i);
            }
            c0080d.f487a = null;
            actionMenuPresenter2.d(true);
            toolbar.f451O.mo3420d(true);
        }
        toolbar.f456a.setPopupTheme(toolbar.f466k);
        toolbar.f456a.setPresenter(actionMenuPresenter2);
        toolbar.f450N = actionMenuPresenter2;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: f */
    public void mo3260f() {
        this.f71498m = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if (r5 == false) goto L18;
     */
    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3259g() {
        /*
            r2 = this;
            r0 = r2
            androidx.appcompat.widget.Toolbar r0 = r0.f71486a
            androidx.appcompat.widget.ActionMenuView r0 = r0.f456a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L41
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f238t
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L38
            r0 = r3
            androidx.appcompat.widget.ActionMenuPresenter$c r0 = r0.w
            if (r0 != 0) goto L2d
            r0 = r3
            boolean r0 = r0.o()
            if (r0 == 0) goto L28
            goto L2d
        L28:
            r0 = 0
            r5 = r0
            goto L2f
        L2d:
            r0 = 1
            r5 = r0
        L2f:
            r0 = r5
            if (r0 == 0) goto L38
            r0 = 1
            r5 = r0
            goto L3a
        L38:
            r0 = 0
            r5 = r0
        L3a:
            r0 = r5
            if (r0 == 0) goto L41
            goto L43
        L41:
            r0 = 0
            r4 = r0
        L43:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25546t0.mo3259g():boolean");
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public Context getContext() {
        return this.f71486a.getContext();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public CharSequence getTitle() {
        return this.f71486a.getTitle();
    }

    /* renamed from: h */
    public final void m3293h() {
        if ((this.f71487b & 4) != 0) {
            if (TextUtils.isEmpty(this.f71496k)) {
                this.f71486a.setNavigationContentDescription(this.f71500o);
            } else {
                this.f71486a.setNavigationContentDescription(this.f71496k);
            }
        }
    }

    /* renamed from: i */
    public final void m3292i() {
        if ((this.f71487b & 4) == 0) {
            this.f71486a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f71486a;
        Drawable drawable = this.f71492g;
        if (drawable == null) {
            drawable = this.f71501p;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: j */
    public final void m3291j() {
        Drawable drawable;
        int i = this.f71487b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f71491f;
            if (drawable == null) {
                drawable = this.f71490e;
            }
        } else {
            drawable = this.f71490e;
        }
        this.f71486a.setLogo(drawable);
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setIcon(int i) {
        this.f71490e = i != 0 ? C25440a.m3540a(getContext(), i) : null;
        m3291j();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setIcon(Drawable drawable) {
        this.f71490e = drawable;
        m3291j();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setTitle(CharSequence charSequence) {
        this.f71493h = true;
        this.f71494i = charSequence;
        if ((this.f71487b & 8) != 0) {
            this.f71486a.setTitle(charSequence);
        }
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setVisibility(int i) {
        this.f71486a.setVisibility(i);
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setWindowCallback(Window.Callback callback) {
        this.f71497l = callback;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f71493h) {
            this.f71494i = charSequence;
            if ((this.f71487b & 8) == 0) {
                return;
            }
            this.f71486a.setTitle(charSequence);
        }
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: t4 */
    public void mo3258t4(CharSequence charSequence) {
        this.f71495j = charSequence;
        if ((this.f71487b & 8) != 0) {
            this.f71486a.setSubtitle(charSequence);
        }
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: u4 */
    public boolean mo3257u4() {
        Toolbar.C0080d c0080d = this.f71486a.f451O;
        return (c0080d == null || c0080d.f488b == null) ? false : true;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: v4 */
    public void mo3256v4(int i) {
        View view;
        int i2 = this.f71487b ^ i;
        this.f71487b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m3293h();
                }
                m3292i();
            }
            if ((i2 & 3) != 0) {
                m3291j();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f71486a.setTitle(this.f71494i);
                    this.f71486a.setSubtitle(this.f71495j);
                } else {
                    this.f71486a.setTitle((CharSequence) null);
                    this.f71486a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f71489d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f71486a.addView(view);
            } else {
                this.f71486a.removeView(view);
            }
        }
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: w4 */
    public int mo3255w4() {
        return 0;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: x4 */
    public void mo3254x4(int i) {
        this.f71496k = i == 0 ? null : getContext().getString(i);
        m3293h();
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: y4 */
    public void mo3253y4() {
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25551v
    /* renamed from: z4 */
    public void mo3252z4(boolean z) {
        this.f71486a.setCollapsible(z);
    }
}
