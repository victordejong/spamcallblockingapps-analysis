package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.widget.C0294ae;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.appcompat.view.menu.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public final class View$OnKeyListenerC0220q extends AbstractC0211k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, AbstractC0214m {

    /* renamed from: e */
    private static final int f860e = C0083a.C0090g.abc_popup_menu_item_layout;

    /* renamed from: a */
    final C0294ae f861a;

    /* renamed from: c */
    View f863c;

    /* renamed from: d */
    ViewTreeObserver f864d;

    /* renamed from: f */
    private final Context f865f;

    /* renamed from: g */
    private final C0199g f866g;

    /* renamed from: h */
    private final C0198f f867h;

    /* renamed from: i */
    private final boolean f868i;

    /* renamed from: j */
    private final int f869j;

    /* renamed from: k */
    private final int f870k;

    /* renamed from: l */
    private final int f871l;

    /* renamed from: n */
    private PopupWindow.OnDismissListener f873n;

    /* renamed from: o */
    private View f874o;

    /* renamed from: p */
    private AbstractC0214m.AbstractC0215a f875p;

    /* renamed from: q */
    private boolean f876q;

    /* renamed from: r */
    private boolean f877r;

    /* renamed from: s */
    private int f878s;

    /* renamed from: u */
    private boolean f880u;

    /* renamed from: b */
    final ViewTreeObserver.OnGlobalLayoutListener f862b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.q.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0220q.this.mo21536e() || View$OnKeyListenerC0220q.this.f861a.m21526j()) {
                return;
            }
            View view = View$OnKeyListenerC0220q.this.f863c;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0220q.this.mo21538d();
            } else {
                View$OnKeyListenerC0220q.this.f861a.mo21545a_();
            }
        }
    };

    /* renamed from: m */
    private final View.OnAttachStateChangeListener f872m = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.q.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0220q.this.f864d != null) {
                if (!View$OnKeyListenerC0220q.this.f864d.isAlive()) {
                    View$OnKeyListenerC0220q.this.f864d = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0220q.this.f864d.removeGlobalOnLayoutListener(View$OnKeyListenerC0220q.this.f862b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: t */
    private int f879t = 0;

    public View$OnKeyListenerC0220q(Context context, C0199g c0199g, View view, int i, int i2, boolean z) {
        this.f865f = context;
        this.f866g = c0199g;
        this.f868i = z;
        this.f867h = new C0198f(c0199g, LayoutInflater.from(context), this.f868i, f860e);
        this.f870k = i;
        this.f871l = i2;
        Resources resources = context.getResources();
        this.f869j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0083a.C0087d.abc_config_prefDialogWidth));
        this.f874o = view;
        this.f861a = new C0294ae(this.f865f, null, this.f870k, this.f871l);
        c0199g.m21883a(this, context);
    }

    /* renamed from: j */
    private boolean m21790j() {
        boolean z = true;
        if (!mo21536e()) {
            if (this.f876q || this.f874o == null) {
                z = false;
            } else {
                this.f863c = this.f874o;
                this.f861a.m21547a((PopupWindow.OnDismissListener) this);
                this.f861a.m21549a((AdapterView.OnItemClickListener) this);
                this.f861a.m21546a(true);
                View view = this.f863c;
                boolean z2 = this.f864d == null;
                this.f864d = view.getViewTreeObserver();
                if (z2) {
                    this.f864d.addOnGlobalLayoutListener(this.f862b);
                }
                view.addOnAttachStateChangeListener(this.f872m);
                this.f861a.m21542b(view);
                this.f861a.m21533f(this.f879t);
                if (!this.f877r) {
                    this.f878s = m21815a(this.f867h, null, this.f865f, this.f869j);
                    this.f877r = true;
                }
                this.f861a.m21529h(this.f878s);
                this.f861a.m21527i(2);
                this.f861a.m21552a(m21812i());
                this.f861a.mo21545a_();
                ListView g = this.f861a.mo21532g();
                g.setOnKeyListener(this);
                if (this.f880u && this.f866g.m21852n() != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f865f).inflate(C0083a.C0090g.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
                    TextView textView = (TextView) frameLayout.findViewById(16908310);
                    if (textView != null) {
                        textView.setText(this.f866g.m21852n());
                    }
                    frameLayout.setEnabled(false);
                    g.addHeaderView(frameLayout, null, false);
                }
                this.f861a.mo21548a((ListAdapter) this.f867h);
                this.f861a.mo21545a_();
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21798a(int i) {
        this.f879t = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3588a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21797a(View view) {
        this.f874o = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21796a(PopupWindow.OnDismissListener onDismissListener) {
        this.f873n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21795a(C0199g c0199g) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
        if (c0199g != this.f866g) {
            return;
        }
        mo21538d();
        if (this.f875p == null) {
            return;
        }
        this.f875p.mo21353a(c0199g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        this.f875p = abstractC0215a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        this.f877r = false;
        if (this.f867h != null) {
            this.f867h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        boolean z;
        if (subMenuC0223r.hasVisibleItems()) {
            C0212l c0212l = new C0212l(this.f865f, subMenuC0223r, this.f863c, this.f868i, this.f870k, this.f871l);
            c0212l.m21805a(this.f875p);
            c0212l.m21804a(AbstractC0211k.m21814b(subMenuC0223r));
            c0212l.m21806a(this.f873n);
            this.f873n = null;
            this.f866g.m21878a(false);
            int f = this.f861a.m21534f();
            int c = this.f861a.m21540c();
            int i = f;
            if ((Gravity.getAbsoluteGravity(this.f879t, C0595u.m20320g(this.f874o)) & 7) == 5) {
                i = f + this.f874o.getWidth();
            }
            if (c0212l.m21809a(i, c)) {
                if (this.f875p != null) {
                    this.f875p.mo21354a(subMenuC0223r);
                }
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: a_ */
    public void mo21545a_() {
        if (!m21790j()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: b */
    public void mo21794b(int i) {
        this.f861a.m21543b(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: b */
    public void mo21793b(boolean z) {
        this.f867h.m21899a(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3581b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: c */
    public void mo21792c(int i) {
        this.f861a.m21553a(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: c */
    public void mo21791c(boolean z) {
        this.f880u = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: d */
    public void mo21538d() {
        if (mo21536e()) {
            this.f861a.mo21538d();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: e */
    public boolean mo21536e() {
        return !this.f876q && this.f861a.mo21536e();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: f */
    public Parcelable mo3577f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: g */
    public ListView mo21532g() {
        return this.f861a.mo21532g();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f876q = true;
        this.f866g.close();
        if (this.f864d != null) {
            if (!this.f864d.isAlive()) {
                this.f864d = this.f863c.getViewTreeObserver();
            }
            this.f864d.removeGlobalOnLayoutListener(this.f862b);
            this.f864d = null;
        }
        this.f863c.removeOnAttachStateChangeListener(this.f872m);
        if (this.f873n != null) {
            this.f873n.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        boolean z = true;
        if (keyEvent.getAction() == 1 && i == 82) {
            mo21538d();
        } else {
            z = false;
        }
        return z;
    }
}
