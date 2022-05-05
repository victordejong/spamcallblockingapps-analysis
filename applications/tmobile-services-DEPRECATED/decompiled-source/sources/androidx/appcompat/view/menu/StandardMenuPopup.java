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
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/StandardMenuPopup.class */
final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {

    /* renamed from: A */
    private static final int f718A = C0042R.layout.abc_popup_menu_item_layout;

    /* renamed from: g */
    private final Context f719g;

    /* renamed from: h */
    private final MenuBuilder f720h;

    /* renamed from: i */
    private final MenuAdapter f721i;

    /* renamed from: j */
    private final boolean f722j;

    /* renamed from: k */
    private final int f723k;

    /* renamed from: l */
    private final int f724l;

    /* renamed from: m */
    private final int f725m;

    /* renamed from: n */
    final MenuPopupWindow f726n;

    /* renamed from: q */
    private PopupWindow.OnDismissListener f729q;

    /* renamed from: r */
    private View f730r;

    /* renamed from: s */
    View f731s;

    /* renamed from: t */
    private MenuPresenter.Callback f732t;

    /* renamed from: u */
    ViewTreeObserver f733u;

    /* renamed from: v */
    private boolean f734v;

    /* renamed from: w */
    private boolean f735w;

    /* renamed from: x */
    private int f736x;

    /* renamed from: z */
    private boolean f738z;

    /* renamed from: o */
    final ViewTreeObserver.OnGlobalLayoutListener f727o = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (StandardMenuPopup.this.mo21440a() && !StandardMenuPopup.this.f726n.m21456B()) {
                View view = StandardMenuPopup.this.f731s;
                if (view == null || !view.isShown()) {
                    StandardMenuPopup.this.dismiss();
                } else {
                    StandardMenuPopup.this.f726n.mo21439b();
                }
            }
        }
    };

    /* renamed from: p */
    private final View.OnAttachStateChangeListener f728p = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = StandardMenuPopup.this.f733u;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    StandardMenuPopup.this.f733u = view.getViewTreeObserver();
                }
                StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
                standardMenuPopup.f733u.removeGlobalOnLayoutListener(standardMenuPopup.f727o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: y */
    private int f737y = 0;

    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i, int i2, boolean z) {
        this.f719g = context;
        this.f720h = menuBuilder;
        this.f722j = z;
        this.f721i = new MenuAdapter(menuBuilder, LayoutInflater.from(context), this.f722j, f718A);
        this.f724l = i;
        this.f725m = i2;
        Resources resources = context.getResources();
        this.f723k = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0042R.dimen.abc_config_prefDialogWidth));
        this.f730r = view;
        this.f726n = new MenuPopupWindow(this.f719g, null, this.f724l, this.f725m);
        menuBuilder.m21872c(this, context);
    }

    /* renamed from: B */
    private boolean m21797B() {
        View view;
        if (mo21440a()) {
            return true;
        }
        if (this.f734v || (view = this.f730r) == null) {
            return false;
        }
        this.f731s = view;
        this.f726n.m21447K(this);
        this.f726n.m21446L(this);
        this.f726n.m21448J(true);
        View view2 = this.f731s;
        boolean z = this.f733u == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f733u = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f727o);
        }
        view2.addOnAttachStateChangeListener(this.f728p);
        this.f726n.m21454D(view2);
        this.f726n.m21451G(this.f737y);
        if (!this.f735w) {
            this.f736x = MenuPopup.m21813q(this.f721i, null, this.f719g, this.f723k);
            this.f735w = true;
        }
        this.f726n.m21452F(this.f736x);
        this.f726n.m21449I(2);
        this.f726n.m21450H(m21814p());
        this.f726n.mo21439b();
        ListView k = this.f726n.mo21434k();
        k.setOnKeyListener(this);
        if (this.f738z && this.f720h.m21847z() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f719g).inflate(C0042R.layout.abc_popup_menu_header_item_layout, (ViewGroup) k, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f720h.m21847z());
            }
            frameLayout.setEnabled(false);
            k.addHeaderView(frameLayout, null, false);
        }
        this.f726n.mo21431p(this.f721i);
        this.f726n.mo21439b();
        return true;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: a */
    public boolean mo21440a() {
        return !this.f734v && this.f726n.mo21440a();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: b */
    public void mo21439b() {
        if (!m21797B()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.f720h) {
            dismiss();
            MenuPresenter.Callback callback = this.f732t;
            if (callback != null) {
                callback.mo21698c(menuBuilder, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        this.f735w = false;
        MenuAdapter menuAdapter = this.f721i;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        if (mo21440a()) {
            this.f726n.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    public boolean mo9522e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: h */
    public void mo9519h(MenuPresenter.Callback callback) {
        this.f732t = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: k */
    public ListView mo21434k() {
        return this.f726n.mo21434k();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f719g, subMenuBuilder, this.f731s, this.f722j, this.f724l, this.f725m);
        menuPopupHelper.m21802j(this.f732t);
        menuPopupHelper.m21805g(MenuPopup.m21811z(subMenuBuilder));
        menuPopupHelper.m21803i(this.f729q);
        this.f729q = null;
        this.f720h.m21868e(false);
        int d = this.f726n.m21437d();
        int o = this.f726n.m21432o();
        int i = d;
        if ((Gravity.getAbsoluteGravity(this.f737y, ViewCompat.m19244A(this.f730r)) & 7) == 5) {
            i = d + this.f730r.getWidth();
        }
        if (!menuPopupHelper.m21798n(i, o)) {
            return false;
        }
        MenuPresenter.Callback callback = this.f732t;
        if (callback == null) {
            return true;
        }
        callback.mo21697d(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: m */
    public Parcelable mo9514m() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: n */
    public void mo21796n(MenuBuilder menuBuilder) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f734v = true;
        this.f720h.close();
        ViewTreeObserver viewTreeObserver = this.f733u;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f733u = this.f731s.getViewTreeObserver();
            }
            this.f733u.removeGlobalOnLayoutListener(this.f727o);
            this.f733u = null;
        }
        this.f731s.removeOnAttachStateChangeListener(this.f728p);
        PopupWindow.OnDismissListener onDismissListener = this.f729q;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: r */
    public void mo21795r(View view) {
        this.f730r = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: t */
    public void mo21794t(boolean z) {
        this.f721i.m21896d(z);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: u */
    public void mo21793u(int i) {
        this.f737y = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: v */
    public void mo21792v(int i) {
        this.f726n.m21436f(i);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: w */
    public void mo21791w(PopupWindow.OnDismissListener onDismissListener) {
        this.f729q = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: x */
    public void mo21790x(boolean z) {
        this.f738z = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: y */
    public void mo21789y(int i) {
        this.f726n.m21433l(i);
    }
}
