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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.widget.AbstractC0287ag;
import androidx.appcompat.widget.C0288ah;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public final class View$OnKeyListenerC0173d extends AbstractC0194k implements View.OnKeyListener, PopupWindow.OnDismissListener, AbstractC0197m {

    /* renamed from: g */
    private static final int f664g = C0051a.C0058g.abc_cascading_menu_item_layout;

    /* renamed from: A */
    private PopupWindow.OnDismissListener f665A;

    /* renamed from: d */
    View f669d;

    /* renamed from: e */
    ViewTreeObserver f670e;

    /* renamed from: f */
    boolean f671f;

    /* renamed from: h */
    private final Context f672h;

    /* renamed from: i */
    private final int f673i;

    /* renamed from: j */
    private final int f674j;

    /* renamed from: k */
    private final int f675k;

    /* renamed from: l */
    private final boolean f676l;

    /* renamed from: r */
    private View f682r;

    /* renamed from: t */
    private boolean f684t;

    /* renamed from: u */
    private boolean f685u;

    /* renamed from: v */
    private int f686v;

    /* renamed from: w */
    private int f687w;

    /* renamed from: y */
    private boolean f689y;

    /* renamed from: z */
    private AbstractC0197m.AbstractC0198a f690z;

    /* renamed from: m */
    private final List<C0182g> f677m = new ArrayList();

    /* renamed from: b */
    final List<C0178a> f667b = new ArrayList();

    /* renamed from: c */
    final ViewTreeObserver.OnGlobalLayoutListener f668c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0173d.this.mo7266c() || View$OnKeyListenerC0173d.this.f667b.size() <= 0 || View$OnKeyListenerC0173d.this.f667b.get(0).f698a.m7254i()) {
                return;
            }
            View view = View$OnKeyListenerC0173d.this.f669d;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0173d.this.mo7270b();
                return;
            }
            for (C0178a c0178a : View$OnKeyListenerC0173d.this.f667b) {
                c0178a.f698a.mo7250j_();
            }
        }
    };

    /* renamed from: n */
    private final View.OnAttachStateChangeListener f678n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (View$OnKeyListenerC0173d.this.f670e != null) {
                if (!View$OnKeyListenerC0173d.this.f670e.isAlive()) {
                    View$OnKeyListenerC0173d.this.f670e = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0173d.this.f670e.removeGlobalOnLayoutListener(View$OnKeyListenerC0173d.this.f668c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: o */
    private final AbstractC0287ag f679o = new AbstractC0287ag() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.AbstractC0287ag
        /* renamed from: a */
        public void mo7244a(C0182g c0182g, MenuItem menuItem) {
            View$OnKeyListenerC0173d.this.f666a.removeCallbacksAndMessages(c0182g);
        }

        @Override // androidx.appcompat.widget.AbstractC0287ag
        /* renamed from: b */
        public void mo7241b(final C0182g c0182g, final MenuItem menuItem) {
            C0178a c0178a = null;
            View$OnKeyListenerC0173d.this.f666a.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0173d.this.f667b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0182g == View$OnKeyListenerC0173d.this.f667b.get(i).f699b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < View$OnKeyListenerC0173d.this.f667b.size()) {
                c0178a = View$OnKeyListenerC0173d.this.f667b.get(i2);
            }
            final C0178a c0178a2 = c0178a;
            View$OnKeyListenerC0173d.this.f666a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (c0178a2 != null) {
                        View$OnKeyListenerC0173d.this.f671f = true;
                        c0178a2.f699b.close(false);
                        View$OnKeyListenerC0173d.this.f671f = false;
                    }
                    if (!menuItem.isEnabled() || !menuItem.hasSubMenu()) {
                        return;
                    }
                    c0182g.performItemAction(menuItem, 4);
                }
            }, c0182g, SystemClock.uptimeMillis() + 200);
        }
    };

    /* renamed from: p */
    private int f680p = 0;

    /* renamed from: q */
    private int f681q = 0;

    /* renamed from: x */
    private boolean f688x = false;

    /* renamed from: s */
    private int f683s = m7578h();

    /* renamed from: a */
    final Handler f666a = new Handler();

    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public static class C0178a {

        /* renamed from: a */
        public final C0288ah f698a;

        /* renamed from: b */
        public final C0182g f699b;

        /* renamed from: c */
        public final int f700c;

        public C0178a(C0288ah c0288ah, C0182g c0182g, int i) {
            this.f698a = c0288ah;
            this.f699b = c0182g;
            this.f700c = i;
        }

        /* renamed from: a */
        public ListView m7577a() {
            return this.f698a.mo7248k_();
        }
    }

    public View$OnKeyListenerC0173d(Context context, View view, int i, int i2, boolean z) {
        this.f672h = context;
        this.f682r = view;
        this.f674j = i;
        this.f675k = i2;
        this.f676l = z;
        Resources resources = context.getResources();
        this.f673i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0051a.C0055d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    private MenuItem m7583a(C0182g c0182g, C0182g c0182g2) {
        int size = c0182g.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0182g.getItem(i);
            if (item.hasSubMenu() && c0182g2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* renamed from: a */
    private View m7584a(C0178a c0178a, C0182g c0182g) {
        int i;
        C0181f c0181f;
        int firstVisiblePosition;
        MenuItem m7583a = m7583a(c0178a.f699b, c0182g);
        if (m7583a == null) {
            return null;
        }
        ListView m7577a = c0178a.m7577a();
        ListAdapter adapter = m7577a.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            c0181f = (C0181f) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0181f = (C0181f) adapter;
            i = 0;
        }
        int count = c0181f.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (m7583a == c0181f.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (firstVisiblePosition = (i2 + i) - m7577a.getFirstVisiblePosition()) < 0 || firstVisiblePosition >= m7577a.getChildCount()) {
            return null;
        }
        return m7577a.getChildAt(firstVisiblePosition);
    }

    /* renamed from: c */
    private void m7582c(C0182g c0182g) {
        View view;
        C0178a c0178a;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f672h);
        C0181f c0181f = new C0181f(c0182g, from, this.f676l, f664g);
        if (!mo7266c() && this.f688x) {
            c0181f.m7568a(true);
        } else if (mo7266c()) {
            c0181f.m7568a(AbstractC0194k.m7533b(c0182g));
        }
        int a = m7534a(c0181f, null, this.f672h, this.f673i);
        C0288ah m7579g = m7579g();
        m7579g.mo7273a((ListAdapter) c0181f);
        m7579g.m7255h(a);
        m7579g.m7259f(this.f681q);
        if (this.f667b.size() > 0) {
            List<C0178a> list = this.f667b;
            c0178a = list.get(list.size() - 1);
            view = m7584a(c0178a, c0182g);
        } else {
            c0178a = null;
            view = null;
        }
        if (view != null) {
            m7579g.m7239c(false);
            m7579g.m7242a((Object) null);
            int m7581d = m7581d(a);
            boolean z = m7581d == 1;
            this.f683s = m7581d;
            if (Build.VERSION.SDK_INT >= 26) {
                m7579g.m7268b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f682r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f681q & 7) == 5) {
                    iArr[0] = iArr[0] + this.f682r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f681q & 5) == 5) {
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
            m7579g.m7269b(i3);
            m7579g.m7267b(true);
            m7579g.m7278a(i2);
        } else {
            if (this.f684t) {
                m7579g.m7269b(this.f686v);
            }
            if (this.f685u) {
                m7579g.m7278a(this.f687w);
            }
            m7579g.m7277a(m7531f());
        }
        this.f667b.add(new C0178a(m7579g, c0182g, this.f683s));
        m7579g.mo7250j_();
        ListView k_ = m7579g.mo7248k_();
        k_.setOnKeyListener(this);
        if (c0178a != null || !this.f689y || c0182g.getHeaderTitle() == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) from.inflate(C0051a.C0058g.abc_popup_menu_header_item_layout, (ViewGroup) k_, false);
        frameLayout.setEnabled(false);
        ((TextView) frameLayout.findViewById(16908310)).setText(c0182g.getHeaderTitle());
        k_.addHeaderView(frameLayout, null, false);
        m7579g.mo7250j_();
    }

    /* renamed from: d */
    private int m7581d(int i) {
        List<C0178a> list = this.f667b;
        ListView m7577a = list.get(list.size() - 1).m7577a();
        int[] iArr = new int[2];
        m7577a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f669d.getWindowVisibleDisplayFrame(rect);
        return this.f683s == 1 ? (iArr[0] + m7577a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: d */
    private int m7580d(C0182g c0182g) {
        int size = this.f667b.size();
        for (int i = 0; i < size; i++) {
            if (c0182g == this.f667b.get(i).f699b) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: g */
    private C0288ah m7579g() {
        C0288ah c0288ah = new C0288ah(this.f672h, null, this.f674j, this.f675k);
        c0288ah.m7243a(this.f679o);
        c0288ah.m7274a((AdapterView.OnItemClickListener) this);
        c0288ah.m7272a((PopupWindow.OnDismissListener) this);
        c0288ah.m7268b(this.f682r);
        c0288ah.m7259f(this.f681q);
        c0288ah.m7271a(true);
        c0288ah.m7253i(2);
        return c0288ah;
    }

    /* renamed from: h */
    private int m7578h() {
        int i = 1;
        if (C0552u.m6245f(this.f682r) == 1) {
            i = 0;
        }
        return i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7517a(int i) {
        if (this.f680p != i) {
            this.f680p = i;
            this.f681q = C0533c.m6344a(i, C0552u.m6245f(this.f682r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7516a(View view) {
        if (this.f682r != view) {
            this.f682r = view;
            this.f681q = C0533c.m6344a(this.f680p, C0552u.m6245f(this.f682r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7515a(PopupWindow.OnDismissListener onDismissListener) {
        this.f665A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7514a(C0182g c0182g) {
        c0182g.addMenuPresenter(this, this.f672h);
        if (mo7266c()) {
            m7582c(c0182g);
        } else {
            this.f677m.add(c0182g);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: a */
    public void mo7513a(boolean z) {
        this.f688x = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: b */
    public void mo7270b() {
        int size = this.f667b.size();
        if (size > 0) {
            C0178a[] c0178aArr = (C0178a[]) this.f667b.toArray(new C0178a[size]);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0178a c0178a = c0178aArr[size];
                if (c0178a.f698a.mo7266c()) {
                    c0178a.f698a.mo7270b();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: b */
    public void mo7512b(int i) {
        this.f684t = true;
        this.f686v = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: b */
    public void mo7511b(boolean z) {
        this.f689y = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: c */
    public void mo7510c(int i) {
        this.f685u = true;
        this.f687w = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: c */
    public boolean mo7266c() {
        boolean z = false;
        if (this.f667b.size() > 0) {
            z = false;
            if (this.f667b.get(0).f698a.mo7266c()) {
                z = true;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0194k
    /* renamed from: e */
    protected boolean mo7532e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: j_ */
    public void mo7250j_() {
        if (mo7266c()) {
            return;
        }
        for (C0182g c0182g : this.f677m) {
            m7582c(c0182g);
        }
        this.f677m.clear();
        this.f669d = this.f682r;
        if (this.f669d == null) {
            return;
        }
        boolean z = this.f670e == null;
        this.f670e = this.f669d.getViewTreeObserver();
        if (z) {
            this.f670e.addOnGlobalLayoutListener(this.f668c);
        }
        this.f669d.addOnAttachStateChangeListener(this.f678n);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: k_ */
    public ListView mo7248k_() {
        ListView listView;
        if (this.f667b.isEmpty()) {
            listView = null;
        } else {
            List<C0178a> list = this.f667b;
            listView = list.get(list.size() - 1).m7577a();
        }
        return listView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        int m7580d = m7580d(c0182g);
        if (m7580d < 0) {
            return;
        }
        int i = m7580d + 1;
        if (i < this.f667b.size()) {
            this.f667b.get(i).f699b.close(false);
        }
        C0178a remove = this.f667b.remove(m7580d);
        remove.f699b.removeMenuPresenter(this);
        if (this.f671f) {
            remove.f698a.m7240b((Object) null);
            remove.f698a.m7261e(0);
        }
        remove.f698a.mo7270b();
        int size = this.f667b.size();
        if (size > 0) {
            this.f683s = this.f667b.get(size - 1).f700c;
        } else {
            this.f683s = m7578h();
        }
        if (size != 0) {
            if (!z) {
                return;
            }
            this.f667b.get(0).f699b.close(false);
            return;
        }
        mo7270b();
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f690z;
        if (abstractC0198a != null) {
            abstractC0198a.mo7435a(c0182g, true);
        }
        ViewTreeObserver viewTreeObserver = this.f670e;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f670e.removeGlobalOnLayoutListener(this.f668c);
            }
            this.f670e = null;
        }
        this.f669d.removeOnAttachStateChangeListener(this.f678n);
        this.f665A.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0178a c0178a;
        int size = this.f667b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0178a = null;
                break;
            }
            c0178a = this.f667b.get(i);
            if (!c0178a.f698a.mo7266c()) {
                break;
            }
            i++;
        }
        if (c0178a != null) {
            c0178a.f699b.close(false);
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
        for (C0178a c0178a : this.f667b) {
            if (subMenuC0206r == c0178a.f699b) {
                c0178a.m7577a().requestFocus();
                return true;
            }
        }
        if (subMenuC0206r.hasVisibleItems()) {
            mo7514a(subMenuC0206r);
            AbstractC0197m.AbstractC0198a abstractC0198a = this.f690z;
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
        this.f690z = abstractC0198a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        for (C0178a c0178a : this.f667b) {
            m7535a(c0178a.m7577a().getAdapter()).notifyDataSetChanged();
        }
    }
}
