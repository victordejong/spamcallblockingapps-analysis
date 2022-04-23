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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.appcompat.widget.s;
import androidx.core.view.e;
import androidx.core.view.v;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public final class d extends k implements View.OnKeyListener, PopupWindow.OnDismissListener, m {
    private static final int h = a.g.abc_cascading_menu_item_layout;
    private m.a A;
    private PopupWindow.OnDismissListener B;

    /* renamed from: d  reason: collision with root package name */
    View f787d;
    ViewTreeObserver e;
    boolean f;
    private final Context i;
    private final int j;
    private final int k;
    private final int l;
    private final boolean m;
    private View s;
    private boolean u;
    private boolean v;
    private int w;
    private int x;
    private boolean z;
    private final List<g> n = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final List<a> f785b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f786c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (d.this.e() && d.this.f785b.size() > 0 && !d.this.f785b.get(0).f795a.m) {
                View view = d.this.f787d;
                if (view == null || !view.isShown()) {
                    d.this.d();
                    return;
                }
                for (a aVar : d.this.f785b) {
                    aVar.f795a.e_();
                }
            }
        }
    };
    private final View.OnAttachStateChangeListener o = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            if (d.this.e != null) {
                if (!d.this.e.isAlive()) {
                    d.this.e = view.getViewTreeObserver();
                }
                d.this.e.removeGlobalOnLayoutListener(d.this.f786c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final s p = new s() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.s
        public final void a(g gVar, MenuItem menuItem) {
            d.this.f784a.removeCallbacksAndMessages(gVar);
        }

        @Override // androidx.appcompat.widget.s
        public final void b(final g gVar, final MenuItem menuItem) {
            final a aVar = null;
            d.this.f784a.removeCallbacksAndMessages(null);
            int size = d.this.f785b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.f785b.get(i).f796b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (i2 < d.this.f785b.size()) {
                    aVar = d.this.f785b.get(i2);
                }
                d.this.f784a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (aVar != null) {
                            d.this.f = true;
                            aVar.f796b.a(false);
                            d.this.f = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            gVar.a(menuItem, (m) null, 4);
                        }
                    }
                }, gVar, SystemClock.uptimeMillis() + 200);
            }
        }
    };
    private int q = 0;
    private int r = 0;
    private boolean y = false;
    private int t = j();

    /* renamed from: a  reason: collision with root package name */
    final Handler f784a = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final MenuPopupWindow f795a;

        /* renamed from: b  reason: collision with root package name */
        public final g f796b;

        /* renamed from: c  reason: collision with root package name */
        public final int f797c;

        public a(MenuPopupWindow menuPopupWindow, g gVar, int i) {
            this.f795a = menuPopupWindow;
            this.f796b = gVar;
            this.f797c = i;
        }
    }

    public d(Context context, View view, int i, int i2, boolean z) {
        this.i = context;
        this.s = view;
        this.k = i;
        this.l = i2;
        this.m = z;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
    }

    private static MenuItem a(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private static View a(a aVar, g gVar) {
        int i;
        f fVar;
        int firstVisiblePosition;
        MenuItem a2 = a(aVar.f796b, gVar);
        if (a2 == null) {
            return null;
        }
        DropDownListView dropDownListView = aVar.f795a.e;
        ListAdapter adapter = dropDownListView.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            i = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (a2 == fVar.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - dropDownListView.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < dropDownListView.getChildCount()) {
            return dropDownListView.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private void c(g gVar) {
        View view;
        a aVar;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.i);
        f fVar = new f(gVar, from, this.m, h);
        if (!e() && this.y) {
            fVar.f805b = true;
        } else if (e()) {
            fVar.f805b = k.b(gVar);
        }
        int a2 = a(fVar, null, this.i, this.j);
        MenuPopupWindow i4 = i();
        i4.a(fVar);
        i4.d(a2);
        i4.g = this.r;
        if (this.f785b.size() > 0) {
            List<a> list = this.f785b;
            aVar = list.get(list.size() - 1);
            view = a(aVar, gVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            i4.h();
            i4.a();
            int d2 = d(a2);
            boolean z = d2 == 1;
            this.t = d2;
            if (Build.VERSION.SDK_INT >= 26) {
                i4.i = view;
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.s.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.r & 7) == 5) {
                    iArr[0] = iArr[0] + this.s.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.r & 5) == 5) {
                if (!z) {
                    a2 = view.getWidth();
                    i3 = i - a2;
                }
                i3 = i + a2;
            } else {
                if (z) {
                    a2 = view.getWidth();
                    i3 = i + a2;
                }
                i3 = i - a2;
            }
            i4.f = i3;
            i4.p();
            i4.a(i2);
        } else {
            if (this.u) {
                i4.f = this.w;
            }
            if (this.v) {
                i4.a(this.x);
            }
            i4.a(this.g);
        }
        this.f785b.add(new a(i4, gVar, this.t));
        i4.e_();
        DropDownListView dropDownListView = i4.e;
        dropDownListView.setOnKeyListener(this);
        if (aVar == null && this.z && gVar.f != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(gVar.f);
            dropDownListView.addHeaderView(frameLayout, null, false);
            i4.e_();
        }
    }

    private int d(int i) {
        List<a> list = this.f785b;
        DropDownListView dropDownListView = list.get(list.size() - 1).f795a.e;
        int[] iArr = new int[2];
        dropDownListView.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f787d.getWindowVisibleDisplayFrame(rect);
        return this.t == 1 ? (iArr[0] + dropDownListView.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    private MenuPopupWindow i() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.i, null, this.k, this.l);
        menuPopupWindow.f974a = this.p;
        menuPopupWindow.j = this;
        menuPopupWindow.a(this);
        menuPopupWindow.i = this.s;
        menuPopupWindow.g = this.r;
        menuPopupWindow.j();
        menuPopupWindow.l();
        return menuPopupWindow;
    }

    private int j() {
        return v.f(this.s) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(int i) {
        if (this.q != i) {
            this.q = i;
            this.r = e.a(i, v.f(this.s));
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(View view) {
        if (this.s != view) {
            this.s = view;
            this.r = e.a(this.q, v.f(view));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(PopupWindow.OnDismissListener onDismissListener) {
        this.B = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void a(g gVar) {
        gVar.a(this, this.i);
        if (e()) {
            c(gVar);
        } else {
            this.n.add(gVar);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(g gVar, boolean z) {
        int size = this.f785b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (gVar == this.f785b.get(i).f796b) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            int i2 = i + 1;
            if (i2 < this.f785b.size()) {
                this.f785b.get(i2).f796b.a(false);
            }
            a remove = this.f785b.remove(i);
            remove.f796b.b(this);
            if (this.f) {
                MenuPopupWindow menuPopupWindow = remove.f795a;
                if (Build.VERSION.SDK_INT >= 23) {
                    menuPopupWindow.n.setExitTransition(null);
                }
                remove.f795a.n.setAnimationStyle(0);
            }
            remove.f795a.d();
            int size2 = this.f785b.size();
            if (size2 > 0) {
                this.t = this.f785b.get(size2 - 1).f797c;
            } else {
                this.t = j();
            }
            if (size2 == 0) {
                d();
                m.a aVar = this.A;
                if (aVar != null) {
                    aVar.a(gVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.e;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.e.removeGlobalOnLayoutListener(this.f786c);
                    }
                    this.e = null;
                }
                this.f787d.removeOnAttachStateChangeListener(this.o);
                this.B.onDismiss();
            } else if (z) {
                this.f785b.get(0).f796b.a(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
        this.A = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        for (a aVar : this.f785b) {
            a(aVar.f795a.e.getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a(r rVar) {
        for (a aVar : this.f785b) {
            if (rVar == aVar.f796b) {
                aVar.f795a.e.requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        a((g) rVar);
        m.a aVar2 = this.A;
        if (aVar2 == null) {
            return true;
        }
        aVar2.a(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void b(int i) {
        this.u = true;
        this.w = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void b(boolean z) {
        this.y = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void c(int i) {
        this.v = true;
        this.x = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public final void c(boolean z) {
        this.z = z;
    }

    @Override // androidx.appcompat.view.menu.p
    public final void d() {
        int size = this.f785b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f785b.toArray(new a[size]);
            while (true) {
                size--;
                if (size >= 0) {
                    a aVar = aVarArr[size];
                    if (aVar.f795a.n.isShowing()) {
                        aVar.f795a.d();
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public final boolean e() {
        return this.f785b.size() > 0 && this.f785b.get(0).f795a.n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.p
    public final void e_() {
        if (!e()) {
            for (g gVar : this.n) {
                c(gVar);
            }
            this.n.clear();
            View view = this.s;
            this.f787d = view;
            if (view != null) {
                boolean z = this.e == null;
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                this.e = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f786c);
                }
                this.f787d.addOnAttachStateChangeListener(this.o);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public final ListView g() {
        if (this.f785b.isEmpty()) {
            return null;
        }
        List<a> list = this.f785b;
        return list.get(list.size() - 1).f795a.e;
    }

    @Override // androidx.appcompat.view.menu.k
    protected final boolean h() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        a aVar;
        int size = this.f785b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f785b.get(i);
            if (!aVar.f795a.n.isShowing()) {
                break;
            }
            i++;
        }
        if (aVar != null) {
            aVar.f796b.a(false);
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
