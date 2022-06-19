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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.widget.C0288ah;
import androidx.core.p023g.C0552u;
/* renamed from: androidx.appcompat.view.menu.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public final class View$OnKeyListenerC0203q extends AbstractC0194k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, AbstractC0197m {

    /* renamed from: e */
    private static final int f781e = C0051a.C0058g.abc_popup_menu_item_layout;

    /* renamed from: a */
    final C0288ah f782a;

    /* renamed from: c */
    View f784c;

    /* renamed from: d */
    ViewTreeObserver f785d;

    /* renamed from: f */
    private final Context f786f;

    /* renamed from: g */
    private final C0182g f787g;

    /* renamed from: h */
    private final C0181f f788h;

    /* renamed from: i */
    private final boolean f789i;

    /* renamed from: j */
    private final int f790j;

    /* renamed from: k */
    private final int f791k;

    /* renamed from: l */
    private final int f792l;

    /* renamed from: n */
    private PopupWindow.OnDismissListener f794n;

    /* renamed from: o */
    private View f795o;

    /* renamed from: p */
    private AbstractC0197m.AbstractC0198a f796p;

    /* renamed from: q */
    private boolean f797q;

    /* renamed from: r */
    private boolean f798r;

    /* renamed from: s */
    private int f799s;

    /* renamed from: u */
    private boolean f801u;

    /* renamed from: b */
    final ViewTreeObserver.OnGlobalLayoutListener f783b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.q.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0203q.this.mo7266c() || View$OnKeyListenerC0203q.this.f782a.m7254i()) {
                return;
            }
            View view = View$OnKeyListenerC0203q.this.f784c;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0203q.this.mo7270b();
            } else {
                View$OnKeyListenerC0203q.this.f782a.mo7250j_();
            }
        }
    };

    /* renamed from: m */
    private final View.OnAttachStateChangeListener f793m = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.q.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0203q.this.f785d != null) {
                if (!View$OnKeyListenerC0203q.this.f785d.isAlive()) {
                    View$OnKeyListenerC0203q.this.f785d = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0203q.this.f785d.removeGlobalOnLayoutListener(View$OnKeyListenerC0203q.this.f783b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: t */
    private int f800t = 0;

    public View$OnKeyListenerC0203q(Context context, C0182g c0182g, View view, int i, int i2, boolean z) {
        this.f786f = context;
        this.f787g = c0182g;
        this.f789i = z;
        this.f788h = new C0181f(c0182g, LayoutInflater.from(context), this.f789i, f781e);
        this.f791k = i;
        this.f792l = i2;
        Resources resources = context.getResources();
        this.f790j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0051a.C0055d.abc_config_prefDialogWidth));
        this.f795o = view;
        this.f782a = new C0288ah(this.f786f, null, this.f791k, this.f792l);
        c0182g.addMenuPresenter(this, context);
    }

    /* renamed from: g */
    private boolean m7509g() {
        View view;
        if (mo7266c()) {
            return true;
        }
        if (this.f797q || (view = this.f795o) == null) {
            return false;
        }
        this.f784c = view;
        this.f782a.m7272a((PopupWindow.OnDismissListener) this);
        this.f782a.m7274a((AdapterView.OnItemClickListener) this);
        this.f782a.m7271a(true);
        View view2 = this.f784c;
        boolean z = this.f785d == null;
        this.f785d = view2.getViewTreeObserver();
        if (z) {
            this.f785d.addOnGlobalLayoutListener(this.f783b);
        }
        view2.addOnAttachStateChangeListener(this.f793m);
        this.f782a.m7268b(view2);
        this.f782a.m7259f(this.f800t);
        if (!this.f798r) {
            this.f799s = m7534a(this.f788h, null, this.f786f, this.f790j);
            this.f798r = true;
        }
        this.f782a.m7255h(this.f799s);
        this.f782a.m7253i(2);
        this.f782a.m7277a(m7531f());
        this.f782a.mo7250j_();
        ListView k_ = this.f782a.mo7248k_();
        k_.setOnKeyListener(this);
        if (this.f801u && this.f787g.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f786f).inflate(C0051a.C0058g.abc_popup_menu_header_item_layout, (ViewGroup) k_, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f787g.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            k_.addHeaderView(frameLayout, null, false);
        }
        this.f782a.mo7273a((ListAdapter) this.f788h);
        this.f782a.mo7250j_();
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7517a(int i) {
        this.f800t = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7516a(View view) {
        this.f795o = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7515a(PopupWindow.OnDismissListener onDismissListener) {
        this.f794n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7514a(C0182g c0182g) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7513a(boolean z) {
        this.f788h.m7568a(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: b */
    public void mo7270b() {
        if (mo7266c()) {
            this.f782a.mo7270b();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: b */
    public void mo7512b(int i) {
        this.f782a.m7269b(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: b */
    public void mo7511b(boolean z) {
        this.f801u = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: c */
    public void mo7510c(int i) {
        this.f782a.m7278a(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: c */
    public boolean mo7266c() {
        return !this.f797q && this.f782a.mo7266c();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: j_ */
    public void mo7250j_() {
        if (m7509g()) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: k_ */
    public ListView mo7248k_() {
        return this.f782a.mo7248k_();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        if (c0182g != this.f787g) {
            return;
        }
        mo7270b();
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f796p;
        if (abstractC0198a == null) {
            return;
        }
        abstractC0198a.mo7435a(c0182g, z);
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f797q = true;
        this.f787g.close();
        ViewTreeObserver viewTreeObserver = this.f785d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f785d = this.f784c.getViewTreeObserver();
            }
            this.f785d.removeGlobalOnLayoutListener(this.f783b);
            this.f785d = null;
        }
        this.f784c.removeOnAttachStateChangeListener(this.f793m);
        PopupWindow.OnDismissListener onDismissListener = this.f794n;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            mo7270b();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        if (subMenuC0206r.hasVisibleItems()) {
            C0195l c0195l = new C0195l(this.f786f, subMenuC0206r, this.f784c, this.f789i, this.f791k, this.f792l);
            c0195l.m7524a(this.f796p);
            c0195l.m7523a(AbstractC0194k.m7533b(subMenuC0206r));
            c0195l.m7525a(this.f794n);
            this.f794n = null;
            this.f787g.close(false);
            int f = this.f782a.m7260f();
            int e = this.f782a.m7262e();
            int i = f;
            if ((Gravity.getAbsoluteGravity(this.f800t, C0552u.m6245f(this.f795o)) & 7) == 5) {
                i = f + this.f795o.getWidth();
            }
            if (!c0195l.m7528a(i, e)) {
                return false;
            }
            AbstractC0197m.AbstractC0198a abstractC0198a = this.f796p;
            if (abstractC0198a == null) {
                return true;
            }
            abstractC0198a.mo7436a(subMenuC0206r);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
        this.f796p = abstractC0198a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        this.f798r = false;
        C0181f c0181f = this.f788h;
        if (c0181f != null) {
            c0181f.notifyDataSetChanged();
        }
    }
}
