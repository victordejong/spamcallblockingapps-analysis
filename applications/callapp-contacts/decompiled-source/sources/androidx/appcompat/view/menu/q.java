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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public final class q extends k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, m {
    private static final int e = a.g.abc_popup_menu_item_layout;

    /* renamed from: a  reason: collision with root package name */
    final MenuPopupWindow f837a;

    /* renamed from: c  reason: collision with root package name */
    View f839c;

    /* renamed from: d  reason: collision with root package name */
    ViewTreeObserver f840d;
    private final Context f;
    private final g h;
    private final f i;
    private final boolean j;
    private final int k;
    private final int l;
    private final int m;
    private PopupWindow.OnDismissListener o;
    private View p;
    private m.a q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean v;

    /* renamed from: b  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f838b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.q.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (q.this.e() && !q.this.f837a.m) {
                View view = q.this.f839c;
                if (view == null || !view.isShown()) {
                    q.this.d();
                } else {
                    q.this.f837a.e_();
                }
            }
        }
    };
    private final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.q.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            if (q.this.f840d != null) {
                if (!q.this.f840d.isAlive()) {
                    q.this.f840d = view.getViewTreeObserver();
                }
                q.this.f840d.removeGlobalOnLayoutListener(q.this.f838b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int u = 0;

    public q(Context context, g gVar, View view, int i, int i2, boolean z) {
        this.f = context;
        this.h = gVar;
        this.j = z;
        this.i = new f(gVar, LayoutInflater.from(context), z, e);
        this.l = i;
        this.m = i2;
        Resources resources = context.getResources();
        this.k = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
        this.p = view;
        this.f837a = new MenuPopupWindow(context, null, i, i2);
        gVar.a(this, context);
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(int i) {
        this.u = i;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(View view) {
        this.p = view;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(PopupWindow.OnDismissListener onDismissListener) {
        this.o = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(g gVar, boolean z) {
        if (gVar == this.h) {
            d();
            m.a aVar = this.q;
            if (aVar != null) {
                aVar.a(gVar, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
        this.q = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        this.s = false;
        f fVar = this.i;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.view.menu.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.appcompat.view.menu.r r10) {
        /*
            r9 = this;
            r0 = r10
            boolean r0 = r0.hasVisibleItems()
            if (r0 == 0) goto L_0x00bc
            androidx.appcompat.view.menu.l r0 = new androidx.appcompat.view.menu.l
            r1 = r0
            r2 = r9
            android.content.Context r2 = r2.f
            r3 = r10
            r4 = r9
            android.view.View r4 = r4.f839c
            r5 = r9
            boolean r5 = r5.j
            r6 = r9
            int r6 = r6.l
            r7 = r9
            int r7 = r7.m
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r11 = r0
            r0 = r11
            r1 = r9
            androidx.appcompat.view.menu.m$a r1 = r1.q
            r0.a(r1)
            r0 = r11
            r1 = r10
            boolean r1 = androidx.appcompat.view.menu.k.b(r1)
            r0.a(r1)
            r0 = r11
            r1 = r9
            android.widget.PopupWindow$OnDismissListener r1 = r1.o
            r0.f832b = r1
            r0 = r9
            r1 = 0
            r0.o = r1
            r0 = r9
            androidx.appcompat.view.menu.g r0 = r0.h
            r1 = 0
            r0.a(r1)
            r0 = r9
            androidx.appcompat.widget.MenuPopupWindow r0 = r0.f837a
            int r0 = r0.f
            r12 = r0
            r0 = r9
            androidx.appcompat.widget.MenuPopupWindow r0 = r0.f837a
            int r0 = r0.c()
            r13 = r0
            r0 = r12
            r14 = r0
            r0 = r9
            int r0 = r0.u
            r1 = r9
            android.view.View r1 = r1.p
            int r1 = androidx.core.view.v.f(r1)
            int r0 = android.view.Gravity.getAbsoluteGravity(r0, r1)
            r1 = 7
            r0 = r0 & r1
            r1 = 5
            if (r0 != r1) goto L_0x007d
            r0 = r12
            r1 = r9
            android.view.View r1 = r1.p
            int r1 = r1.getWidth()
            int r0 = r0 + r1
            r14 = r0
        L_0x007d:
            r0 = r11
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x008a
        L_0x0084:
            r0 = 1
            r14 = r0
            goto L_0x00a4
        L_0x008a:
            r0 = r11
            android.view.View r0 = r0.f831a
            if (r0 != 0) goto L_0x0097
            r0 = 0
            r14 = r0
            goto L_0x00a4
        L_0x0097:
            r0 = r11
            r1 = r14
            r2 = r13
            r3 = 1
            r4 = 1
            r0.a(r1, r2, r3, r4)
            goto L_0x0084
        L_0x00a4:
            r0 = r14
            if (r0 == 0) goto L_0x00bc
            r0 = r9
            androidx.appcompat.view.menu.m$a r0 = r0.q
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00ba
            r0 = r11
            r1 = r10
            boolean r0 = r0.a(r1)
        L_0x00ba:
            r0 = 1
            return r0
        L_0x00bc:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.q.a(androidx.appcompat.view.menu.r):boolean");
    }

    @Override // androidx.appcompat.view.menu.k
    public final void b(int i) {
        this.f837a.f = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void b(boolean z) {
        this.i.f805b = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void c(int i) {
        this.f837a.a(i);
    }

    @Override // androidx.appcompat.view.menu.k
    public final void c(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.p
    public final void d() {
        if (e()) {
            this.f837a.d();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public final boolean e() {
        return !this.r && this.f837a.n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.p
    public final void e_() {
        boolean z;
        View view;
        if (e()) {
            z = true;
        } else if (this.r || (view = this.p) == null) {
            z = false;
        } else {
            this.f839c = view;
            this.f837a.a(this);
            this.f837a.j = this;
            this.f837a.j();
            View view2 = this.f839c;
            boolean z2 = this.f840d == null;
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.f840d = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f838b);
            }
            view2.addOnAttachStateChangeListener(this.n);
            this.f837a.i = view2;
            this.f837a.g = this.u;
            if (!this.s) {
                this.t = a(this.i, null, this.f, this.k);
                this.s = true;
            }
            this.f837a.d(this.t);
            this.f837a.l();
            this.f837a.a(this.g);
            this.f837a.e_();
            DropDownListView dropDownListView = this.f837a.e;
            dropDownListView.setOnKeyListener(this);
            if (this.v && this.h.f != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
                TextView textView = (TextView) frameLayout.findViewById(16908310);
                if (textView != null) {
                    textView.setText(this.h.f);
                }
                frameLayout.setEnabled(false);
                dropDownListView.addHeaderView(frameLayout, null, false);
            }
            this.f837a.a(this.i);
            this.f837a.e_();
            z = true;
        }
        if (!z) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public final ListView g() {
        return this.f837a.e;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.r = true;
        this.h.close();
        ViewTreeObserver viewTreeObserver = this.f840d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f840d = this.f839c.getViewTreeObserver();
            }
            this.f840d.removeGlobalOnLayoutListener(this.f838b);
            this.f840d = null;
        }
        this.f839c.removeOnAttachStateChangeListener(this.n);
        PopupWindow.OnDismissListener onDismissListener = this.o;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        d();
        return true;
    }
}
