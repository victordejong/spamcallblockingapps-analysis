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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.widget.AbstractC0413s;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public final class View$OnKeyListenerC0259d extends AbstractC0280k implements View.OnKeyListener, PopupWindow.OnDismissListener, AbstractC0283m {

    /* renamed from: h */
    private static final int f826h = C0142a.C0149g.abc_cascading_menu_item_layout;

    /* renamed from: A */
    private AbstractC0283m.AbstractC0284a f827A;

    /* renamed from: B */
    private PopupWindow.OnDismissListener f828B;

    /* renamed from: d */
    View f832d;

    /* renamed from: e */
    ViewTreeObserver f833e;

    /* renamed from: f */
    boolean f834f;

    /* renamed from: i */
    private final Context f835i;

    /* renamed from: j */
    private final int f836j;

    /* renamed from: k */
    private final int f837k;

    /* renamed from: l */
    private final int f838l;

    /* renamed from: m */
    private final boolean f839m;

    /* renamed from: s */
    private View f845s;

    /* renamed from: u */
    private boolean f847u;

    /* renamed from: v */
    private boolean f848v;

    /* renamed from: w */
    private int f849w;

    /* renamed from: x */
    private int f850x;

    /* renamed from: z */
    private boolean f852z;

    /* renamed from: n */
    private final List<C0268g> f840n = new ArrayList();

    /* renamed from: b */
    final List<C0264a> f830b = new ArrayList();

    /* renamed from: c */
    final ViewTreeObserver.OnGlobalLayoutListener f831c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (!View$OnKeyListenerC0259d.this.mo45923e() || View$OnKeyListenerC0259d.this.f830b.size() <= 0 || View$OnKeyListenerC0259d.this.f830b.get(0).f860a.f1260m) {
                return;
            }
            View view = View$OnKeyListenerC0259d.this.f832d;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0259d.this.mo45925d();
                return;
            }
            for (C0264a c0264a : View$OnKeyListenerC0259d.this.f830b) {
                c0264a.f860a.mo45922e_();
            }
        }
    };

    /* renamed from: o */
    private final View.OnAttachStateChangeListener f841o = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0259d.this.f833e != null) {
                if (!View$OnKeyListenerC0259d.this.f833e.isAlive()) {
                    View$OnKeyListenerC0259d.this.f833e = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0259d.this.f833e.removeGlobalOnLayoutListener(View$OnKeyListenerC0259d.this.f831c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: p */
    private final AbstractC0413s f842p = new AbstractC0413s() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.AbstractC0413s
        /* renamed from: a */
        public final void mo45612a(C0268g c0268g, MenuItem menuItem) {
            View$OnKeyListenerC0259d.this.f829a.removeCallbacksAndMessages(c0268g);
        }

        @Override // androidx.appcompat.widget.AbstractC0413s
        /* renamed from: b */
        public final void mo45611b(final C0268g c0268g, final MenuItem menuItem) {
            C0264a c0264a = null;
            View$OnKeyListenerC0259d.this.f829a.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0259d.this.f830b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0268g == View$OnKeyListenerC0259d.this.f830b.get(i).f861b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < View$OnKeyListenerC0259d.this.f830b.size()) {
                c0264a = View$OnKeyListenerC0259d.this.f830b.get(i2);
            }
            final C0264a c0264a2 = c0264a;
            View$OnKeyListenerC0259d.this.f829a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (c0264a2 != null) {
                        View$OnKeyListenerC0259d.this.f834f = true;
                        c0264a2.f861b.m46094a(false);
                        View$OnKeyListenerC0259d.this.f834f = false;
                    }
                    if (!menuItem.isEnabled() || !menuItem.hasSubMenu()) {
                        return;
                    }
                    c0268g.m46102a(menuItem, (AbstractC0283m) null, 4);
                }
            }, c0268g, SystemClock.uptimeMillis() + 200);
        }
    };

    /* renamed from: q */
    private int f843q = 0;

    /* renamed from: r */
    private int f844r = 0;

    /* renamed from: y */
    private boolean f851y = false;

    /* renamed from: t */
    private int f846t = m46115j();

    /* renamed from: a */
    final Handler f829a = new Handler();

    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public static final class C0264a {

        /* renamed from: a */
        public final MenuPopupWindow f860a;

        /* renamed from: b */
        public final C0268g f861b;

        /* renamed from: c */
        public final int f862c;

        public C0264a(MenuPopupWindow menuPopupWindow, C0268g c0268g, int i) {
            this.f860a = menuPopupWindow;
            this.f861b = c0268g;
            this.f862c = i;
        }
    }

    public View$OnKeyListenerC0259d(Context context, View view, int i, int i2, boolean z) {
        this.f835i = context;
        this.f845s = view;
        this.f837k = i;
        this.f838l = i2;
        this.f839m = z;
        Resources resources = context.getResources();
        this.f836j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0142a.C0146d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    private static MenuItem m46119a(C0268g c0268g, C0268g c0268g2) {
        int size = c0268g.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0268g.getItem(i);
            if (item.hasSubMenu() && c0268g2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static View m46120a(C0264a c0264a, C0268g c0268g) {
        int i;
        C0267f c0267f;
        int firstVisiblePosition;
        MenuItem m46119a = m46119a(c0264a.f861b, c0268g);
        if (m46119a == null) {
            return null;
        }
        DropDownListView dropDownListView = c0264a.f860a.f1252e;
        ListAdapter adapter = dropDownListView.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            c0267f = (C0267f) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0267f = (C0267f) adapter;
            i = 0;
        }
        int count = c0267f.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (m46119a == c0267f.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (firstVisiblePosition = (i2 + i) - dropDownListView.getFirstVisiblePosition()) < 0 || firstVisiblePosition >= dropDownListView.getChildCount()) {
            return null;
        }
        return dropDownListView.getChildAt(firstVisiblePosition);
    }

    /* renamed from: c */
    private void m46118c(C0268g c0268g) {
        View view;
        C0264a c0264a;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f835i);
        C0267f c0267f = new C0267f(c0268g, from, this.f839m, f826h);
        if (!mo45923e() && this.f851y) {
            c0267f.f876b = true;
        } else if (mo45923e()) {
            c0267f.f876b = AbstractC0280k.m46060b(c0268g);
        }
        int a = m46061a(c0267f, null, this.f835i, this.f836j);
        MenuPopupWindow m46116i = m46116i();
        m46116i.mo45930a(c0267f);
        m46116i.m45924d(a);
        m46116i.f1254g = this.f844r;
        if (this.f830b.size() > 0) {
            List<C0264a> list = this.f830b;
            c0264a = list.get(list.size() - 1);
            view = m46120a(c0264a, c0268g);
        } else {
            c0264a = null;
            view = null;
        }
        if (view != null) {
            m46116i.m45909h();
            m46116i.m45911a();
            int m46117d = m46117d(a);
            boolean z = m46117d == 1;
            this.f846t = m46117d;
            if (Build.VERSION.SDK_INT >= 26) {
                m46116i.f1256i = view;
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f845s.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f844r & 7) == 5) {
                    iArr[0] = iArr[0] + this.f845s.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f844r & 5) == 5) {
                if (!z) {
                    a = view.getWidth();
                    i3 = i - a;
                }
                i3 = i + a;
            } else {
                if (z) {
                    a = view.getWidth();
                    i3 = i + a;
                }
                i3 = i - a;
            }
            m46116i.f1253f = i3;
            m46116i.m45912p();
            m46116i.m45934a(i2);
        } else {
            if (this.f847u) {
                m46116i.f1253f = this.f849w;
            }
            if (this.f848v) {
                m46116i.m45934a(this.f850x);
            }
            m46116i.m45933a(this.f955g);
        }
        this.f830b.add(new C0264a(m46116i, c0268g, this.f846t));
        m46116i.mo45922e_();
        DropDownListView dropDownListView = m46116i.f1252e;
        dropDownListView.setOnKeyListener(this);
        if (c0264a != null || !this.f852z || c0268g.f888f == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) from.inflate(C0142a.C0149g.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
        frameLayout.setEnabled(false);
        ((TextView) frameLayout.findViewById(16908310)).setText(c0268g.f888f);
        dropDownListView.addHeaderView(frameLayout, null, false);
        m46116i.mo45922e_();
    }

    /* renamed from: d */
    private int m46117d(int i) {
        List<C0264a> list = this.f830b;
        DropDownListView dropDownListView = list.get(list.size() - 1).f860a.f1252e;
        int[] iArr = new int[2];
        dropDownListView.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f832d.getWindowVisibleDisplayFrame(rect);
        return this.f846t == 1 ? (iArr[0] + dropDownListView.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: i */
    private MenuPopupWindow m46116i() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f835i, null, this.f837k, this.f838l);
        menuPopupWindow.f1282a = this.f842p;
        menuPopupWindow.f1257j = this;
        menuPopupWindow.m45929a(this);
        menuPopupWindow.f1256i = this.f845s;
        menuPopupWindow.f1254g = this.f844r;
        menuPopupWindow.m45918j();
        menuPopupWindow.m45916l();
        return menuPopupWindow;
    }

    /* renamed from: j */
    private int m46115j() {
        return C0926v.m44097f(this.f845s) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46050a(int i) {
        if (this.f843q != i) {
            this.f843q = i;
            this.f844r = C0908e.m44195a(i, C0926v.m44097f(this.f845s));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46049a(View view) {
        if (this.f845s != view) {
            this.f845s = view;
            this.f844r = C0908e.m44195a(this.f843q, C0926v.m44097f(view));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46048a(PopupWindow.OnDismissListener onDismissListener) {
        this.f828B = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: a */
    public final void mo46047a(C0268g c0268g) {
        c0268g.m46099a(this, this.f835i);
        if (mo45923e()) {
            m46118c(c0268g);
        } else {
            this.f840n.add(c0268g);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
        int size = this.f830b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (c0268g == this.f830b.get(i).f861b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.f830b.size()) {
            this.f830b.get(i2).f861b.m46094a(false);
        }
        C0264a remove = this.f830b.remove(i);
        remove.f861b.m46091b(this);
        if (this.f834f) {
            MenuPopupWindow menuPopupWindow = remove.f860a;
            if (Build.VERSION.SDK_INT >= 23) {
                menuPopupWindow.f1261n.setExitTransition(null);
            }
            remove.f860a.f1261n.setAnimationStyle(0);
        }
        remove.f860a.mo45925d();
        int size2 = this.f830b.size();
        if (size2 > 0) {
            this.f846t = this.f830b.get(size2 - 1).f862c;
        } else {
            this.f846t = m46115j();
        }
        if (size2 != 0) {
            if (!z) {
                return;
            }
            this.f830b.get(0).f861b.m46094a(false);
            return;
        }
        mo45925d();
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f827A;
        if (abstractC0284a != null) {
            abstractC0284a.mo45990a(c0268g, true);
        }
        ViewTreeObserver viewTreeObserver = this.f833e;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f833e.removeGlobalOnLayoutListener(this.f831c);
            }
            this.f833e = null;
        }
        this.f832d.removeOnAttachStateChangeListener(this.f841o);
        this.f828B.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f827A = abstractC0284a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        for (C0264a c0264a : this.f830b) {
            m46062a(c0264a.f860a.f1252e.getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10551a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        for (C0264a c0264a : this.f830b) {
            if (subMenuC0292r == c0264a.f861b) {
                c0264a.f860a.f1252e.requestFocus();
                return true;
            }
        }
        if (subMenuC0292r.hasVisibleItems()) {
            mo46047a((C0268g) subMenuC0292r);
            AbstractC0283m.AbstractC0284a abstractC0284a = this.f827A;
            if (abstractC0284a == null) {
                return true;
            }
            abstractC0284a.mo45991a(subMenuC0292r);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: b */
    public final void mo46046b(int i) {
        this.f847u = true;
        this.f849w = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: b */
    public final void mo46045b(boolean z) {
        this.f851y = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: c */
    public final void mo46044c(int i) {
        this.f848v = true;
        this.f850x = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: c */
    public final void mo46043c(boolean z) {
        this.f852z = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: d */
    public final void mo45925d() {
        int size = this.f830b.size();
        if (size > 0) {
            C0264a[] c0264aArr = (C0264a[]) this.f830b.toArray(new C0264a[size]);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0264a c0264a = c0264aArr[size];
                if (c0264a.f860a.f1261n.isShowing()) {
                    c0264a.f860a.mo45925d();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e */
    public final boolean mo45923e() {
        return this.f830b.size() > 0 && this.f830b.get(0).f860a.f1261n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e_ */
    public final void mo45922e_() {
        if (mo45923e()) {
            return;
        }
        for (C0268g c0268g : this.f840n) {
            m46118c(c0268g);
        }
        this.f840n.clear();
        View view = this.f845s;
        this.f832d = view;
        if (view == null) {
            return;
        }
        boolean z = this.f833e == null;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.f833e = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f831c);
        }
        this.f832d.addOnAttachStateChangeListener(this.f841o);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: g */
    public final ListView mo45920g() {
        if (this.f830b.isEmpty()) {
            return null;
        }
        List<C0264a> list = this.f830b;
        return list.get(list.size() - 1).f860a.f1252e;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0280k
    /* renamed from: h */
    protected final boolean mo46059h() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0264a c0264a;
        int size = this.f830b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0264a = null;
                break;
            }
            c0264a = this.f830b.get(i);
            if (!c0264a.f860a.f1261n.isShowing()) {
                break;
            }
            i++;
        }
        if (c0264a != null) {
            c0264a.f861b.m46094a(false);
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
