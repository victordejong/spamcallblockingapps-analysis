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
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.widget.AbstractC0293ad;
import androidx.appcompat.widget.C0294ae;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public final class View$OnKeyListenerC0190d extends AbstractC0211k implements View.OnKeyListener, PopupWindow.OnDismissListener, AbstractC0214m {

    /* renamed from: g */
    private static final int f716g = C0083a.C0090g.abc_cascading_menu_item_layout;

    /* renamed from: A */
    private PopupWindow.OnDismissListener f717A;

    /* renamed from: d */
    View f721d;

    /* renamed from: e */
    ViewTreeObserver f722e;

    /* renamed from: f */
    boolean f723f;

    /* renamed from: h */
    private final Context f724h;

    /* renamed from: i */
    private final int f725i;

    /* renamed from: j */
    private final int f726j;

    /* renamed from: k */
    private final int f727k;

    /* renamed from: l */
    private final boolean f728l;

    /* renamed from: r */
    private View f734r;

    /* renamed from: t */
    private boolean f736t;

    /* renamed from: u */
    private boolean f737u;

    /* renamed from: v */
    private int f738v;

    /* renamed from: w */
    private int f739w;

    /* renamed from: y */
    private boolean f741y;

    /* renamed from: z */
    private AbstractC0214m.AbstractC0215a f742z;

    /* renamed from: m */
    private final List<C0199g> f729m = new ArrayList();

    /* renamed from: b */
    final List<C0195a> f719b = new ArrayList();

    /* renamed from: c */
    final ViewTreeObserver.OnGlobalLayoutListener f720c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0190d.this.mo21536e() || View$OnKeyListenerC0190d.this.f719b.size() <= 0 || View$OnKeyListenerC0190d.this.f719b.get(0).f750a.m21526j()) {
                return;
            }
            View view = View$OnKeyListenerC0190d.this.f721d;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0190d.this.mo21538d();
                return;
            }
            for (C0195a c0195a : View$OnKeyListenerC0190d.this.f719b) {
                c0195a.f750a.mo21545a_();
            }
        }
    };

    /* renamed from: n */
    private final View.OnAttachStateChangeListener f730n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0190d.this.f722e != null) {
                if (!View$OnKeyListenerC0190d.this.f722e.isAlive()) {
                    View$OnKeyListenerC0190d.this.f722e = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0190d.this.f722e.removeGlobalOnLayoutListener(View$OnKeyListenerC0190d.this.f720c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: o */
    private final AbstractC0293ad f731o = new AbstractC0293ad() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.AbstractC0293ad
        /* renamed from: a */
        public void mo21519a(C0199g c0199g, MenuItem menuItem) {
            View$OnKeyListenerC0190d.this.f718a.removeCallbacksAndMessages(c0199g);
        }

        @Override // androidx.appcompat.widget.AbstractC0293ad
        /* renamed from: b */
        public void mo21516b(final C0199g c0199g, final MenuItem menuItem) {
            View$OnKeyListenerC0190d.this.f718a.removeCallbacksAndMessages(null);
            int i = 0;
            int size = View$OnKeyListenerC0190d.this.f719b.size();
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0199g == View$OnKeyListenerC0190d.this.f719b.get(i).f751b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            final C0195a c0195a = i2 < View$OnKeyListenerC0190d.this.f719b.size() ? View$OnKeyListenerC0190d.this.f719b.get(i2) : null;
            View$OnKeyListenerC0190d.this.f718a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (c0195a != null) {
                        View$OnKeyListenerC0190d.this.f723f = true;
                        c0195a.f751b.m21878a(false);
                        View$OnKeyListenerC0190d.this.f723f = false;
                    }
                    if (!menuItem.isEnabled() || !menuItem.hasSubMenu()) {
                        return;
                    }
                    c0199g.m21888a(menuItem, 4);
                }
            }, c0199g, SystemClock.uptimeMillis() + 200);
        }
    };

    /* renamed from: p */
    private int f732p = 0;

    /* renamed from: q */
    private int f733q = 0;

    /* renamed from: x */
    private boolean f740x = false;

    /* renamed from: s */
    private int f735s = m21909k();

    /* renamed from: a */
    final Handler f718a = new Handler();

    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public static class C0195a {

        /* renamed from: a */
        public final C0294ae f750a;

        /* renamed from: b */
        public final C0199g f751b;

        /* renamed from: c */
        public final int f752c;

        public C0195a(C0294ae c0294ae, C0199g c0199g, int i) {
            this.f750a = c0294ae;
            this.f751b = c0199g;
            this.f752c = i;
        }

        /* renamed from: a */
        public ListView m21908a() {
            return this.f750a.mo21532g();
        }
    }

    public View$OnKeyListenerC0190d(Context context, View view, int i, int i2, boolean z) {
        this.f724h = context;
        this.f734r = view;
        this.f726j = i;
        this.f727k = i2;
        this.f728l = z;
        Resources resources = context.getResources();
        this.f725i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0083a.C0087d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    private MenuItem m21914a(C0199g c0199g, C0199g c0199g2) {
        MenuItem menuItem;
        int size = c0199g.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                menuItem = null;
                break;
            }
            MenuItem item = c0199g.getItem(i);
            if (item.hasSubMenu() && c0199g2 == item.getSubMenu()) {
                menuItem = item;
                break;
            }
            i++;
        }
        return menuItem;
    }

    /* renamed from: a */
    private View m21915a(C0195a c0195a, C0199g c0199g) {
        C0198f c0198f;
        int i;
        View childAt;
        int i2 = 0;
        MenuItem m21914a = m21914a(c0195a.f751b, c0199g);
        if (m21914a == null) {
            childAt = null;
        } else {
            ListView m21908a = c0195a.m21908a();
            ListAdapter adapter = m21908a.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                c0198f = (C0198f) headerViewListAdapter.getWrappedAdapter();
            } else {
                c0198f = (C0198f) adapter;
                i = 0;
            }
            int count = c0198f.getCount();
            while (true) {
                if (i2 >= count) {
                    i2 = -1;
                    break;
                } else if (m21914a == c0198f.getItem(i2)) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                childAt = null;
            } else {
                int firstVisiblePosition = (i2 + i) - m21908a.getFirstVisiblePosition();
                childAt = (firstVisiblePosition < 0 || firstVisiblePosition >= m21908a.getChildCount()) ? null : m21908a.getChildAt(firstVisiblePosition);
            }
        }
        return childAt;
    }

    /* renamed from: c */
    private void m21913c(C0199g c0199g) {
        View view;
        C0195a c0195a;
        int i;
        int i2;
        LayoutInflater from = LayoutInflater.from(this.f724h);
        C0198f c0198f = new C0198f(c0199g, from, this.f728l, f716g);
        if (!mo21536e() && this.f740x) {
            c0198f.m21899a(true);
        } else if (mo21536e()) {
            c0198f.m21899a(AbstractC0211k.m21814b(c0199g));
        }
        int a = m21815a(c0198f, null, this.f724h, this.f725i);
        C0294ae m21910j = m21910j();
        m21910j.mo21548a((ListAdapter) c0198f);
        m21910j.m21529h(a);
        m21910j.m21533f(this.f733q);
        if (this.f719b.size() > 0) {
            c0195a = this.f719b.get(this.f719b.size() - 1);
            view = m21915a(c0195a, c0199g);
        } else {
            view = null;
            c0195a = null;
        }
        if (view != null) {
            m21910j.m21514c(false);
            m21910j.m21517a((Object) null);
            int m21912d = m21912d(a);
            boolean z = m21912d == 1;
            this.f735s = m21912d;
            if (Build.VERSION.SDK_INT >= 26) {
                m21910j.m21542b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f734r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f733q & 7) == 5) {
                    iArr[0] = iArr[0] + this.f734r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            m21910j.m21543b((this.f733q & 5) == 5 ? z ? i + a : i - view.getWidth() : z ? view.getWidth() + i : i - a);
            m21910j.m21541b(true);
            m21910j.m21553a(i2);
        } else {
            if (this.f736t) {
                m21910j.m21543b(this.f738v);
            }
            if (this.f737u) {
                m21910j.m21553a(this.f739w);
            }
            m21910j.m21552a(m21812i());
        }
        this.f719b.add(new C0195a(m21910j, c0199g, this.f735s));
        m21910j.mo21545a_();
        ListView g = m21910j.mo21532g();
        g.setOnKeyListener(this);
        if (c0195a != null || !this.f741y || c0199g.m21852n() == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) from.inflate(C0083a.C0090g.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
        frameLayout.setEnabled(false);
        ((TextView) frameLayout.findViewById(16908310)).setText(c0199g.m21852n());
        g.addHeaderView(frameLayout, null, false);
        m21910j.mo21545a_();
    }

    /* renamed from: d */
    private int m21912d(int i) {
        int i2;
        ListView m21908a = this.f719b.get(this.f719b.size() - 1).m21908a();
        int[] iArr = new int[2];
        m21908a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f721d.getWindowVisibleDisplayFrame(rect);
        if (this.f735s == 1) {
            i2 = (m21908a.getWidth() + iArr[0]) + i > rect.right ? 0 : 1;
        } else {
            i2 = iArr[0] - i < 0 ? 1 : 0;
        }
        return i2;
    }

    /* renamed from: d */
    private int m21911d(C0199g c0199g) {
        int i = 0;
        int size = this.f719b.size();
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (c0199g == this.f719b.get(i).f751b) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: j */
    private C0294ae m21910j() {
        C0294ae c0294ae = new C0294ae(this.f724h, null, this.f726j, this.f727k);
        c0294ae.m21518a(this.f731o);
        c0294ae.m21549a((AdapterView.OnItemClickListener) this);
        c0294ae.m21547a((PopupWindow.OnDismissListener) this);
        c0294ae.m21542b(this.f734r);
        c0294ae.m21533f(this.f733q);
        c0294ae.m21546a(true);
        c0294ae.m21527i(2);
        return c0294ae;
    }

    /* renamed from: k */
    private int m21909k() {
        int i = 1;
        if (C0595u.m20320g(this.f734r) == 1) {
            i = 0;
        }
        return i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21798a(int i) {
        if (this.f732p != i) {
            this.f732p = i;
            this.f733q = C0576c.m20421a(i, C0595u.m20320g(this.f734r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3588a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21797a(View view) {
        if (this.f734r != view) {
            this.f734r = view;
            this.f733q = C0576c.m20421a(this.f732p, C0595u.m20320g(this.f734r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21796a(PopupWindow.OnDismissListener onDismissListener) {
        this.f717A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: a */
    public void mo21795a(C0199g c0199g) {
        c0199g.m21883a(this, this.f724h);
        if (mo21536e()) {
            m21913c(c0199g);
        } else {
            this.f729m.add(c0199g);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
        int m21911d = m21911d(c0199g);
        if (m21911d < 0) {
            return;
        }
        int i = m21911d + 1;
        if (i < this.f719b.size()) {
            this.f719b.get(i).f751b.m21878a(false);
        }
        C0195a remove = this.f719b.remove(m21911d);
        remove.f751b.m21874b(this);
        if (this.f723f) {
            remove.f750a.m21515b((Object) null);
            remove.f750a.m21535e(0);
        }
        remove.f750a.mo21538d();
        int size = this.f719b.size();
        if (size > 0) {
            this.f735s = this.f719b.get(size - 1).f752c;
        } else {
            this.f735s = m21909k();
        }
        if (size != 0) {
            if (!z) {
                return;
            }
            this.f719b.get(0).f751b.m21878a(false);
            return;
        }
        mo21538d();
        if (this.f742z != null) {
            this.f742z.mo21353a(c0199g, true);
        }
        if (this.f722e != null) {
            if (this.f722e.isAlive()) {
                this.f722e.removeGlobalOnLayoutListener(this.f720c);
            }
            this.f722e = null;
        }
        this.f721d.removeOnAttachStateChangeListener(this.f730n);
        this.f717A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        this.f742z = abstractC0215a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        for (C0195a c0195a : this.f719b) {
            m21816a(c0195a.m21908a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        boolean z;
        Iterator<C0195a> it = this.f719b.iterator();
        while (true) {
            if (it.hasNext()) {
                C0195a next = it.next();
                if (subMenuC0223r == next.f751b) {
                    next.m21908a().requestFocus();
                    z = true;
                    break;
                }
            } else if (subMenuC0223r.hasVisibleItems()) {
                mo21795a((C0199g) subMenuC0223r);
                if (this.f742z != null) {
                    this.f742z.mo21354a(subMenuC0223r);
                }
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: a_ */
    public void mo21545a_() {
        if (mo21536e()) {
            return;
        }
        for (C0199g c0199g : this.f729m) {
            m21913c(c0199g);
        }
        this.f729m.clear();
        this.f721d = this.f734r;
        if (this.f721d == null) {
            return;
        }
        boolean z = this.f722e == null;
        this.f722e = this.f721d.getViewTreeObserver();
        if (z) {
            this.f722e.addOnGlobalLayoutListener(this.f720c);
        }
        this.f721d.addOnAttachStateChangeListener(this.f730n);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: b */
    public void mo21794b(int i) {
        this.f736t = true;
        this.f738v = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: b */
    public void mo21793b(boolean z) {
        this.f740x = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3581b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: c */
    public void mo21792c(int i) {
        this.f737u = true;
        this.f739w = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: c */
    public void mo21791c(boolean z) {
        this.f741y = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: d */
    public void mo21538d() {
        int size = this.f719b.size();
        if (size > 0) {
            C0195a[] c0195aArr = (C0195a[]) this.f719b.toArray(new C0195a[size]);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0195a c0195a = c0195aArr[size];
                if (c0195a.f750a.mo21536e()) {
                    c0195a.f750a.mo21538d();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: e */
    public boolean mo21536e() {
        return this.f719b.size() > 0 && this.f719b.get(0).f750a.mo21536e();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: f */
    public Parcelable mo3577f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: g */
    public ListView mo21532g() {
        return this.f719b.isEmpty() ? null : this.f719b.get(this.f719b.size() - 1).m21908a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0211k
    /* renamed from: h */
    protected boolean mo21813h() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0195a c0195a;
        int size = this.f719b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0195a = null;
                break;
            }
            c0195a = this.f719b.get(i);
            if (!c0195a.f750a.mo21536e()) {
                break;
            }
            i++;
        }
        if (c0195a != null) {
            c0195a.f751b.m21878a(false);
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
