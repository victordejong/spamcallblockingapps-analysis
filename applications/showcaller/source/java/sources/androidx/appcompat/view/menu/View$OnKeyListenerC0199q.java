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
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.widget.MenuPopupWindow;
import p020b.p021a.C1426d;
import p020b.p021a.C1429g;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.view.menu.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public final class View$OnKeyListenerC0199q extends AbstractC0190k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, AbstractC0193m, View.OnKeyListener {

    /* renamed from: e */
    private static final int f718e = C1429g.abc_popup_menu_item_layout;

    /* renamed from: f */
    private final Context f719f;

    /* renamed from: g */
    private final C0178g f720g;

    /* renamed from: h */
    private final C0177f f721h;

    /* renamed from: i */
    private final boolean f722i;

    /* renamed from: j */
    private final int f723j;

    /* renamed from: k */
    private final int f724k;

    /* renamed from: l */
    private final int f725l;

    /* renamed from: m */
    final MenuPopupWindow f726m;

    /* renamed from: p */
    private PopupWindow.OnDismissListener f729p;

    /* renamed from: q */
    private View f730q;

    /* renamed from: r */
    View f731r;

    /* renamed from: s */
    private AbstractC0193m.AbstractC0194a f732s;

    /* renamed from: t */
    ViewTreeObserver f733t;

    /* renamed from: u */
    private boolean f734u;

    /* renamed from: v */
    private boolean f735v;

    /* renamed from: w */
    private int f736w;

    /* renamed from: y */
    private boolean f738y;

    /* renamed from: n */
    final ViewTreeObserver.OnGlobalLayoutListener f727n = new ViewTreeObserver$OnGlobalLayoutListenerC0200a();

    /* renamed from: o */
    private final View.OnAttachStateChangeListener f728o = new View$OnAttachStateChangeListenerC0201b();

    /* renamed from: x */
    private int f737x = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0200a implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0200a() {
            View$OnKeyListenerC0199q.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0199q.this.mo35138a() || View$OnKeyListenerC0199q.this.f726m.m35154B()) {
                return;
            }
            View view = View$OnKeyListenerC0199q.this.f731r;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0199q.this.dismiss();
            } else {
                View$OnKeyListenerC0199q.this.f726m.mo35134h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q$b.class */
    public class View$OnAttachStateChangeListenerC0201b implements View.OnAttachStateChangeListener {
        View$OnAttachStateChangeListenerC0201b() {
            View$OnKeyListenerC0199q.this = r4;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0199q.this.f733t;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0199q.this.f733t = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0199q view$OnKeyListenerC0199q = View$OnKeyListenerC0199q.this;
                view$OnKeyListenerC0199q.f733t.removeGlobalOnLayoutListener(view$OnKeyListenerC0199q.f727n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public View$OnKeyListenerC0199q(Context context, C0178g c0178g, View view, int i, int i2, boolean z) {
        this.f719f = context;
        this.f720g = c0178g;
        this.f722i = z;
        this.f721h = new C0177f(c0178g, LayoutInflater.from(context), z, f718e);
        this.f724k = i;
        this.f725l = i2;
        Resources resources = context.getResources();
        this.f723j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C1426d.abc_config_prefDialogWidth));
        this.f730q = view;
        this.f726m = new MenuPopupWindow(context, null, i, i2);
        c0178g.m35391c(this, context);
    }

    /* renamed from: B */
    private boolean m35316B() {
        View view;
        if (mo35138a()) {
            return true;
        }
        if (this.f734u || (view = this.f730q) == null) {
            return false;
        }
        this.f731r = view;
        this.f726m.m35145K(this);
        this.f726m.m35144L(this);
        this.f726m.m35146J(true);
        View view2 = this.f731r;
        boolean z = this.f733t == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f733t = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f727n);
        }
        view2.addOnAttachStateChangeListener(this.f728o);
        this.f726m.m35152D(view2);
        this.f726m.m35149G(this.f737x);
        if (!this.f735v) {
            this.f736w = AbstractC0190k.m35332q(this.f721h, null, this.f719f, this.f723j);
            this.f735v = true;
        }
        this.f726m.m35150F(this.f736w);
        this.f726m.m35147I(2);
        this.f726m.m35148H(m35333p());
        this.f726m.mo35134h();
        ListView mo35132k = this.f726m.mo35132k();
        mo35132k.setOnKeyListener(this);
        if (this.f738y && this.f720g.m35366z() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f719f).inflate(C1429g.abc_popup_menu_header_item_layout, (ViewGroup) mo35132k, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f720g.m35366z());
            }
            frameLayout.setEnabled(false);
            mo35132k.addHeaderView(frameLayout, null, false);
        }
        this.f726m.mo35129p(this.f721h);
        this.f726m.mo35134h();
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: a */
    public boolean mo35138a() {
        return !this.f734u && this.f726m.mo35138a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        if (c0178g != this.f720g) {
            return;
        }
        dismiss();
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f732s;
        if (abstractC0194a == null) {
            return;
        }
        abstractC0194a.mo35224b(c0178g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        this.f735v = false;
        C0177f c0177f = this.f721h;
        if (c0177f != null) {
            c0177f.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    public boolean mo4535d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    public void dismiss() {
        if (mo35138a()) {
            this.f726m.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: g */
    public void mo35315g(AbstractC0193m.AbstractC0194a abstractC0194a) {
        this.f732s = abstractC0194a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: h */
    public void mo35134h() {
        if (m35316B()) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: k */
    public ListView mo35132k() {
        return this.f726m.mo35132k();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        if (subMenuC0202r.hasVisibleItems()) {
            C0191l c0191l = new C0191l(this.f719f, subMenuC0202r, this.f731r, this.f722i, this.f724k, this.f725l);
            c0191l.m35321j(this.f732s);
            c0191l.m35324g(AbstractC0190k.m35330z(subMenuC0202r));
            c0191l.m35322i(this.f729p);
            this.f729p = null;
            this.f720g.m35387e(false);
            int m35136c = this.f726m.m35136c();
            int m35130o = this.f726m.m35130o();
            int i = m35136c;
            if ((Gravity.getAbsoluteGravity(this.f737x, C1679w.m29346C(this.f730q)) & 7) == 5) {
                i = m35136c + this.f730q.getWidth();
            }
            if (!c0191l.m35317n(i, m35130o)) {
                return false;
            }
            AbstractC0193m.AbstractC0194a abstractC0194a = this.f732s;
            if (abstractC0194a == null) {
                return true;
            }
            abstractC0194a.mo35223c(subMenuC0202r);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: m */
    public Parcelable mo4527m() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: n */
    public void mo35314n(C0178g c0178g) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f734u = true;
        this.f720g.close();
        ViewTreeObserver viewTreeObserver = this.f733t;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f733t = this.f731r.getViewTreeObserver();
            }
            this.f733t.removeGlobalOnLayoutListener(this.f727n);
            this.f733t = null;
        }
        this.f731r.removeOnAttachStateChangeListener(this.f728o);
        PopupWindow.OnDismissListener onDismissListener = this.f729p;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: r */
    public void mo35313r(View view) {
        this.f730q = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: t */
    public void mo35312t(boolean z) {
        this.f721h.m35415d(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: u */
    public void mo35311u(int i) {
        this.f737x = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: v */
    public void mo35310v(int i) {
        this.f726m.m35135e(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: w */
    public void mo35309w(PopupWindow.OnDismissListener onDismissListener) {
        this.f729p = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: x */
    public void mo35308x(boolean z) {
        this.f738y = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: y */
    public void mo35307y(int i) {
        this.f726m.m35131l(i);
    }
}
