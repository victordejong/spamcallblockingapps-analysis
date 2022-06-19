package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
/* renamed from: androidx.appcompat.view.menu.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public final class View$OnKeyListenerC0289q extends AbstractC0280k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, AbstractC0283m {

    /* renamed from: e */
    private static final int f970e = C0142a.C0149g.abc_popup_menu_item_layout;

    /* renamed from: a */
    final MenuPopupWindow f971a;

    /* renamed from: c */
    View f973c;

    /* renamed from: d */
    ViewTreeObserver f974d;

    /* renamed from: f */
    private final Context f975f;

    /* renamed from: h */
    private final C0268g f976h;

    /* renamed from: i */
    private final C0267f f977i;

    /* renamed from: j */
    private final boolean f978j;

    /* renamed from: k */
    private final int f979k;

    /* renamed from: l */
    private final int f980l;

    /* renamed from: m */
    private final int f981m;

    /* renamed from: o */
    private PopupWindow.OnDismissListener f983o;

    /* renamed from: p */
    private View f984p;

    /* renamed from: q */
    private AbstractC0283m.AbstractC0284a f985q;

    /* renamed from: r */
    private boolean f986r;

    /* renamed from: s */
    private boolean f987s;

    /* renamed from: t */
    private int f988t;

    /* renamed from: v */
    private boolean f990v;

    /* renamed from: b */
    final ViewTreeObserver.OnGlobalLayoutListener f972b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.q.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (!View$OnKeyListenerC0289q.this.mo45923e() || View$OnKeyListenerC0289q.this.f971a.f1260m) {
                return;
            }
            View view = View$OnKeyListenerC0289q.this.f973c;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0289q.this.mo45925d();
            } else {
                View$OnKeyListenerC0289q.this.f971a.mo45922e_();
            }
        }
    };

    /* renamed from: n */
    private final View.OnAttachStateChangeListener f982n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.q.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0289q.this.f974d != null) {
                if (!View$OnKeyListenerC0289q.this.f974d.isAlive()) {
                    View$OnKeyListenerC0289q.this.f974d = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0289q.this.f974d.removeGlobalOnLayoutListener(View$OnKeyListenerC0289q.this.f972b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: u */
    private int f989u = 0;

    public View$OnKeyListenerC0289q(Context context, C0268g c0268g, View view, int i, int i2, boolean z) {
        this.f975f = context;
        this.f976h = c0268g;
        this.f978j = z;
        this.f977i = new C0267f(c0268g, LayoutInflater.from(context), z, f970e);
        this.f980l = i;
        this.f981m = i2;
        Resources resources = context.getResources();
        this.f979k = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0142a.C0146d.abc_config_prefDialogWidth));
        this.f984p = view;
        this.f971a = new MenuPopupWindow(context, null, i, i2);
        c0268g.m46099a(this, context);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46050a(int i) {
        this.f989u = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46049a(View view) {
        this.f984p = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46048a(PopupWindow.OnDismissListener onDismissListener) {
        this.f983o = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46047a(C0268g c0268g) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
        if (c0268g != this.f976h) {
            return;
        }
        mo45925d();
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f985q;
        if (abstractC0284a == null) {
            return;
        }
        abstractC0284a.mo45990a(c0268g, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f985q = abstractC0284a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        this.f987s = false;
        C0267f c0267f = this.f977i;
        if (c0267f != null) {
            c0267f.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10551a() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo10542a(androidx.appcompat.view.menu.SubMenuC0292r r10) {
        /*
            r9 = this;
            r0 = r10
            boolean r0 = r0.hasVisibleItems()
            if (r0 == 0) goto Lbc
            androidx.appcompat.view.menu.l r0 = new androidx.appcompat.view.menu.l
            r1 = r0
            r2 = r9
            android.content.Context r2 = r2.f975f
            r3 = r10
            r4 = r9
            android.view.View r4 = r4.f973c
            r5 = r9
            boolean r5 = r5.f978j
            r6 = r9
            int r6 = r6.f980l
            r7 = r9
            int r7 = r7.f981m
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r11 = r0
            r0 = r11
            r1 = r9
            androidx.appcompat.view.menu.m$a r1 = r1.f985q
            r0.m46056a(r1)
            r0 = r11
            r1 = r10
            boolean r1 = androidx.appcompat.view.menu.AbstractC0280k.m46060b(r1)
            r0.m46055a(r1)
            r0 = r11
            r1 = r9
            android.widget.PopupWindow$OnDismissListener r1 = r1.f983o
            r0.f957b = r1
            r0 = r9
            r1 = 0
            r0.f983o = r1
            r0 = r9
            androidx.appcompat.view.menu.g r0 = r0.f976h
            r1 = 0
            r0.m46094a(r1)
            r0 = r9
            androidx.appcompat.widget.MenuPopupWindow r0 = r0.f971a
            int r0 = r0.f1253f
            r12 = r0
            r0 = r9
            androidx.appcompat.widget.MenuPopupWindow r0 = r0.f971a
            int r0 = r0.m45926c()
            r13 = r0
            r0 = r12
            r14 = r0
            r0 = r9
            int r0 = r0.f989u
            r1 = r9
            android.view.View r1 = r1.f984p
            int r1 = androidx.core.view.C0926v.m44097f(r1)
            int r0 = android.view.Gravity.getAbsoluteGravity(r0, r1)
            r1 = 7
            r0 = r0 & r1
            r1 = 5
            if (r0 != r1) goto L7d
            r0 = r12
            r1 = r9
            android.view.View r1 = r1.f984p
            int r1 = r1.getWidth()
            int r0 = r0 + r1
            r14 = r0
        L7d:
            r0 = r11
            boolean r0 = r0.m46051f()
            if (r0 == 0) goto L8a
        L84:
            r0 = 1
            r14 = r0
            goto La4
        L8a:
            r0 = r11
            android.view.View r0 = r0.f956a
            if (r0 != 0) goto L97
            r0 = 0
            r14 = r0
            goto La4
        L97:
            r0 = r11
            r1 = r14
            r2 = r13
            r3 = 1
            r4 = 1
            r0.m46057a(r1, r2, r3, r4)
            goto L84
        La4:
            r0 = r14
            if (r0 == 0) goto Lbc
            r0 = r9
            androidx.appcompat.view.menu.m$a r0 = r0.f985q
            r11 = r0
            r0 = r11
            if (r0 == 0) goto Lba
            r0 = r11
            r1 = r10
            boolean r0 = r0.mo45991a(r1)
        Lba:
            r0 = 1
            return r0
        Lbc:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.View$OnKeyListenerC0289q.mo10542a(androidx.appcompat.view.menu.r):boolean");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: b */
    public final void mo46046b(int i) {
        this.f971a.f1253f = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: b */
    public final void mo46045b(boolean z) {
        this.f977i.f876b = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: c */
    public final void mo46044c(int i) {
        this.f971a.m45934a(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: c */
    public final void mo46043c(boolean z) {
        this.f990v = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: d */
    public final void mo45925d() {
        if (mo45923e()) {
            this.f971a.mo45925d();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e */
    public final boolean mo45923e() {
        return !this.f986r && this.f971a.f1261n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e_ */
    public final void mo45922e_() {
        boolean z;
        View view;
        if (mo45923e()) {
            z = true;
        } else if (this.f986r || (view = this.f984p) == null) {
            z = false;
        } else {
            this.f973c = view;
            this.f971a.m45929a(this);
            this.f971a.f1257j = this;
            this.f971a.m45918j();
            View view2 = this.f973c;
            boolean z2 = this.f974d == null;
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.f974d = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f972b);
            }
            view2.addOnAttachStateChangeListener(this.f982n);
            this.f971a.f1256i = view2;
            this.f971a.f1254g = this.f989u;
            if (!this.f987s) {
                this.f988t = m46061a(this.f977i, null, this.f975f, this.f979k);
                this.f987s = true;
            }
            this.f971a.m45924d(this.f988t);
            this.f971a.m45916l();
            this.f971a.m45933a(this.f955g);
            this.f971a.mo45922e_();
            DropDownListView dropDownListView = this.f971a.f1252e;
            dropDownListView.setOnKeyListener(this);
            if (this.f990v && this.f976h.f888f != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f975f).inflate(C0142a.C0149g.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
                TextView textView = (TextView) frameLayout.findViewById(16908310);
                if (textView != null) {
                    textView.setText(this.f976h.f888f);
                }
                frameLayout.setEnabled(false);
                dropDownListView.addHeaderView(frameLayout, null, false);
            }
            this.f971a.mo45930a(this.f977i);
            this.f971a.mo45922e_();
            z = true;
        }
        if (z) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: g */
    public final ListView mo45920g() {
        return this.f971a.f1252e;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f986r = true;
        this.f976h.close();
        ViewTreeObserver viewTreeObserver = this.f974d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f974d = this.f973c.getViewTreeObserver();
            }
            this.f974d.removeGlobalOnLayoutListener(this.f972b);
            this.f974d = null;
        }
        this.f973c.removeOnAttachStateChangeListener(this.f982n);
        PopupWindow.OnDismissListener onDismissListener = this.f983o;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            mo45925d();
            return true;
        }
        return false;
    }
}
