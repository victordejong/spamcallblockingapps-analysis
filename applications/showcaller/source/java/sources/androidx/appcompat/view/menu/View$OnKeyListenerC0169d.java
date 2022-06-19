package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.widget.AbstractC0326u;
import androidx.appcompat.widget.MenuPopupWindow;
import java.util.ArrayList;
import java.util.List;
import p020b.p021a.C1426d;
import p020b.p021a.C1429g;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public final class View$OnKeyListenerC0169d extends AbstractC0190k implements AbstractC0193m, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: e */
    private static final int f574e = C1429g.abc_cascading_menu_item_layout;

    /* renamed from: A */
    private boolean f575A;

    /* renamed from: B */
    private AbstractC0193m.AbstractC0194a f576B;

    /* renamed from: C */
    ViewTreeObserver f577C;

    /* renamed from: D */
    private PopupWindow.OnDismissListener f578D;

    /* renamed from: E */
    boolean f579E;

    /* renamed from: f */
    private final Context f580f;

    /* renamed from: g */
    private final int f581g;

    /* renamed from: h */
    private final int f582h;

    /* renamed from: i */
    private final int f583i;

    /* renamed from: j */
    private final boolean f584j;

    /* renamed from: s */
    private View f593s;

    /* renamed from: t */
    View f594t;

    /* renamed from: v */
    private boolean f596v;

    /* renamed from: w */
    private boolean f597w;

    /* renamed from: x */
    private int f598x;

    /* renamed from: y */
    private int f599y;

    /* renamed from: l */
    private final List<C0178g> f586l = new ArrayList();

    /* renamed from: m */
    final List<C0174d> f587m = new ArrayList();

    /* renamed from: n */
    final ViewTreeObserver.OnGlobalLayoutListener f588n = new ViewTreeObserver$OnGlobalLayoutListenerC0170a();

    /* renamed from: o */
    private final View.OnAttachStateChangeListener f589o = new View$OnAttachStateChangeListenerC0171b();

    /* renamed from: p */
    private final AbstractC0326u f590p = new C0172c();

    /* renamed from: q */
    private int f591q = 0;

    /* renamed from: r */
    private int f592r = 0;

    /* renamed from: z */
    private boolean f600z = false;

    /* renamed from: u */
    private int f595u = m35428F();

    /* renamed from: k */
    final Handler f585k = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0170a implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0170a() {
            View$OnKeyListenerC0169d.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0169d.this.mo35138a() || View$OnKeyListenerC0169d.this.f587m.size() <= 0 || View$OnKeyListenerC0169d.this.f587m.get(0).f608a.m35154B()) {
                return;
            }
            View view = View$OnKeyListenerC0169d.this.f594t;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0169d.this.dismiss();
                return;
            }
            for (C0174d c0174d : View$OnKeyListenerC0169d.this.f587m) {
                c0174d.f608a.mo35134h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$b.class */
    public class View$OnAttachStateChangeListenerC0171b implements View.OnAttachStateChangeListener {
        View$OnAttachStateChangeListenerC0171b() {
            View$OnKeyListenerC0169d.this = r4;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0169d.this.f577C;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0169d.this.f577C = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0169d view$OnKeyListenerC0169d = View$OnKeyListenerC0169d.this;
                view$OnKeyListenerC0169d.f577C.removeGlobalOnLayoutListener(view$OnKeyListenerC0169d.f588n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$c.class */
    public class C0172c implements AbstractC0326u {

        /* renamed from: androidx.appcompat.view.menu.d$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$c$a.class */
        class RunnableC0173a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ C0174d f604d;

            /* renamed from: e */
            final /* synthetic */ MenuItem f605e;

            /* renamed from: f */
            final /* synthetic */ C0178g f606f;

            RunnableC0173a(C0174d c0174d, MenuItem menuItem, C0178g c0178g) {
                C0172c.this = r4;
                this.f604d = c0174d;
                this.f605e = menuItem;
                this.f606f = c0178g;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0174d c0174d = this.f604d;
                if (c0174d != null) {
                    View$OnKeyListenerC0169d.this.f579E = true;
                    c0174d.f609b.m35387e(false);
                    View$OnKeyListenerC0169d.this.f579E = false;
                }
                if (!this.f605e.isEnabled() || !this.f605e.hasSubMenu()) {
                    return;
                }
                this.f606f.m35406N(this.f605e, 4);
            }
        }

        C0172c() {
            View$OnKeyListenerC0169d.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractC0326u
        /* renamed from: d */
        public void mo34747d(C0178g c0178g, MenuItem menuItem) {
            C0174d c0174d = null;
            View$OnKeyListenerC0169d.this.f585k.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0169d.this.f587m.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0178g == View$OnKeyListenerC0169d.this.f587m.get(i).f609b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < View$OnKeyListenerC0169d.this.f587m.size()) {
                c0174d = View$OnKeyListenerC0169d.this.f587m.get(i2);
            }
            View$OnKeyListenerC0169d.this.f585k.postAtTime(new RunnableC0173a(c0174d, menuItem, c0178g), c0178g, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.AbstractC0326u
        /* renamed from: g */
        public void mo34746g(C0178g c0178g, MenuItem menuItem) {
            View$OnKeyListenerC0169d.this.f585k.removeCallbacksAndMessages(c0178g);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$d.class */
    public static class C0174d {

        /* renamed from: a */
        public final MenuPopupWindow f608a;

        /* renamed from: b */
        public final C0178g f609b;

        /* renamed from: c */
        public final int f610c;

        public C0174d(MenuPopupWindow menuPopupWindow, C0178g c0178g, int i) {
            this.f608a = menuPopupWindow;
            this.f609b = c0178g;
            this.f610c = i;
        }

        /* renamed from: a */
        public ListView m35425a() {
            return this.f608a.mo35132k();
        }
    }

    public View$OnKeyListenerC0169d(Context context, View view, int i, int i2, boolean z) {
        this.f580f = context;
        this.f593s = view;
        this.f582h = i;
        this.f583i = i2;
        this.f584j = z;
        Resources resources = context.getResources();
        this.f581g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C1426d.abc_config_prefDialogWidth));
    }

    /* renamed from: B */
    private MenuPopupWindow m35432B() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f580f, null, this.f582h, this.f583i);
        menuPopupWindow.m35117T(this.f590p);
        menuPopupWindow.m35144L(this);
        menuPopupWindow.m35145K(this);
        menuPopupWindow.m35152D(this.f593s);
        menuPopupWindow.m35149G(this.f592r);
        menuPopupWindow.m35146J(true);
        menuPopupWindow.m35147I(2);
        return menuPopupWindow;
    }

    /* renamed from: C */
    private int m35431C(C0178g c0178g) {
        int size = this.f587m.size();
        for (int i = 0; i < size; i++) {
            if (c0178g == this.f587m.get(i).f609b) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: D */
    private MenuItem m35430D(C0178g c0178g, C0178g c0178g2) {
        int size = c0178g.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0178g.getItem(i);
            if (item.hasSubMenu() && c0178g2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* renamed from: E */
    private View m35429E(C0174d c0174d, C0178g c0178g) {
        int i;
        C0177f c0177f;
        int firstVisiblePosition;
        MenuItem m35430D = m35430D(c0174d.f609b, c0178g);
        if (m35430D == null) {
            return null;
        }
        ListView m35425a = c0174d.m35425a();
        ListAdapter adapter = m35425a.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            c0177f = (C0177f) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0177f = (C0177f) adapter;
            i = 0;
        }
        int count = c0177f.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (m35430D == c0177f.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (firstVisiblePosition = (i2 + i) - m35425a.getFirstVisiblePosition()) < 0 || firstVisiblePosition >= m35425a.getChildCount()) {
            return null;
        }
        return m35425a.getChildAt(firstVisiblePosition);
    }

    /* renamed from: F */
    private int m35428F() {
        int i = 1;
        if (C1679w.m29346C(this.f593s) == 1) {
            i = 0;
        }
        return i;
    }

    /* renamed from: G */
    private int m35427G(int i) {
        List<C0174d> list = this.f587m;
        ListView m35425a = list.get(list.size() - 1).m35425a();
        int[] iArr = new int[2];
        m35425a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f594t.getWindowVisibleDisplayFrame(rect);
        return this.f595u == 1 ? (iArr[0] + m35425a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: H */
    private void m35426H(C0178g c0178g) {
        View view;
        C0174d c0174d;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f580f);
        C0177f c0177f = new C0177f(c0178g, from, this.f584j, f574e);
        if (!mo35138a() && this.f600z) {
            c0177f.m35415d(true);
        } else if (mo35138a()) {
            c0177f.m35415d(AbstractC0190k.m35330z(c0178g));
        }
        int m35332q = AbstractC0190k.m35332q(c0177f, null, this.f580f, this.f581g);
        MenuPopupWindow m35432B = m35432B();
        m35432B.mo35129p(c0177f);
        m35432B.m35150F(m35332q);
        m35432B.m35149G(this.f592r);
        if (this.f587m.size() > 0) {
            List<C0174d> list = this.f587m;
            c0174d = list.get(list.size() - 1);
            view = m35429E(c0174d, c0178g);
        } else {
            c0174d = null;
            view = null;
        }
        if (view != null) {
            m35432B.m35116U(false);
            m35432B.m35119R(null);
            int m35427G = m35427G(m35332q);
            boolean z = m35427G == 1;
            this.f595u = m35427G;
            if (Build.VERSION.SDK_INT >= 26) {
                m35432B.m35152D(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f593s.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f592r & 7) == 5) {
                    iArr[0] = iArr[0] + this.f593s.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f592r & 5) == 5) {
                if (!z) {
                    m35332q = view.getWidth();
                    i3 = i - m35332q;
                }
                i3 = i + m35332q;
            } else {
                if (z) {
                    m35332q = view.getWidth();
                    i3 = i + m35332q;
                }
                i3 = i - m35332q;
            }
            m35432B.m35135e(i3);
            m35432B.m35143M(true);
            m35432B.m35131l(i2);
        } else {
            if (this.f596v) {
                m35432B.m35135e(this.f598x);
            }
            if (this.f597w) {
                m35432B.m35131l(this.f599y);
            }
            m35432B.m35148H(m35333p());
        }
        this.f587m.add(new C0174d(m35432B, c0178g, this.f595u));
        m35432B.mo35134h();
        ListView mo35132k = m35432B.mo35132k();
        mo35132k.setOnKeyListener(this);
        if (c0174d != null || !this.f575A || c0178g.m35366z() == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) from.inflate(C1429g.abc_popup_menu_header_item_layout, (ViewGroup) mo35132k, false);
        frameLayout.setEnabled(false);
        ((TextView) frameLayout.findViewById(16908310)).setText(c0178g.m35366z());
        mo35132k.addHeaderView(frameLayout, null, false);
        m35432B.mo35134h();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: a */
    public boolean mo35138a() {
        boolean z = false;
        if (this.f587m.size() > 0) {
            z = false;
            if (this.f587m.get(0).f608a.mo35138a()) {
                z = true;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        int m35431C = m35431C(c0178g);
        if (m35431C < 0) {
            return;
        }
        int i = m35431C + 1;
        if (i < this.f587m.size()) {
            this.f587m.get(i).f609b.m35387e(false);
        }
        C0174d remove = this.f587m.remove(m35431C);
        remove.f609b.m35403Q(this);
        if (this.f579E) {
            remove.f608a.m35118S(null);
            remove.f608a.m35151E(0);
        }
        remove.f608a.dismiss();
        int size = this.f587m.size();
        if (size > 0) {
            this.f595u = this.f587m.get(size - 1).f610c;
        } else {
            this.f595u = m35428F();
        }
        if (size != 0) {
            if (!z) {
                return;
            }
            this.f587m.get(0).f609b.m35387e(false);
            return;
        }
        dismiss();
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f576B;
        if (abstractC0194a != null) {
            abstractC0194a.mo35224b(c0178g, true);
        }
        ViewTreeObserver viewTreeObserver = this.f577C;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f577C.removeGlobalOnLayoutListener(this.f588n);
            }
            this.f577C = null;
        }
        this.f594t.removeOnAttachStateChangeListener(this.f589o);
        this.f578D.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        for (C0174d c0174d : this.f587m) {
            AbstractC0190k.m35335A(c0174d.m35425a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    public boolean mo4535d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    public void dismiss() {
        int size = this.f587m.size();
        if (size > 0) {
            C0174d[] c0174dArr = (C0174d[]) this.f587m.toArray(new C0174d[size]);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0174d c0174d = c0174dArr[size];
                if (c0174d.f608a.mo35138a()) {
                    c0174d.f608a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: g */
    public void mo35315g(AbstractC0193m.AbstractC0194a abstractC0194a) {
        this.f576B = abstractC0194a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: h */
    public void mo35134h() {
        if (mo35138a()) {
            return;
        }
        for (C0178g c0178g : this.f586l) {
            m35426H(c0178g);
        }
        this.f586l.clear();
        View view = this.f593s;
        this.f594t = view;
        if (view == null) {
            return;
        }
        boolean z = this.f577C == null;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.f577C = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f588n);
        }
        this.f594t.addOnAttachStateChangeListener(this.f589o);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: k */
    public ListView mo35132k() {
        ListView listView;
        if (this.f587m.isEmpty()) {
            listView = null;
        } else {
            List<C0174d> list = this.f587m;
            listView = list.get(list.size() - 1).m35425a();
        }
        return listView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        for (C0174d c0174d : this.f587m) {
            if (subMenuC0202r == c0174d.f609b) {
                c0174d.m35425a().requestFocus();
                return true;
            }
        }
        if (subMenuC0202r.hasVisibleItems()) {
            mo35314n(subMenuC0202r);
            AbstractC0193m.AbstractC0194a abstractC0194a = this.f576B;
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
        c0178g.m35391c(this, this.f580f);
        if (mo35138a()) {
            m35426H(c0178g);
        } else {
            this.f586l.add(c0178g);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: o */
    protected boolean mo35334o() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0174d c0174d;
        int size = this.f587m.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0174d = null;
                break;
            }
            c0174d = this.f587m.get(i);
            if (!c0174d.f608a.mo35138a()) {
                break;
            }
            i++;
        }
        if (c0174d != null) {
            c0174d.f609b.m35387e(false);
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
        if (this.f593s != view) {
            this.f593s = view;
            this.f592r = C1614e.m29600b(this.f591q, C1679w.m29346C(view));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: t */
    public void mo35312t(boolean z) {
        this.f600z = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: u */
    public void mo35311u(int i) {
        if (this.f591q != i) {
            this.f591q = i;
            this.f592r = C1614e.m29600b(i, C1679w.m29346C(this.f593s));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: v */
    public void mo35310v(int i) {
        this.f596v = true;
        this.f598x = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: w */
    public void mo35309w(PopupWindow.OnDismissListener onDismissListener) {
        this.f578D = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: x */
    public void mo35308x(boolean z) {
        this.f575A = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0190k
    /* renamed from: y */
    public void mo35307y(int i) {
        this.f597w = true;
        this.f599y = i;
    }
}
