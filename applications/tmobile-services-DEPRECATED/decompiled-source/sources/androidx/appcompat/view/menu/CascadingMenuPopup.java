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
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/CascadingMenuPopup.class */
final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: G */
    private static final int f555G = C0042R.layout.abc_cascading_menu_item_layout;

    /* renamed from: B */
    private boolean f557B;

    /* renamed from: C */
    private MenuPresenter.Callback f558C;

    /* renamed from: D */
    ViewTreeObserver f559D;

    /* renamed from: E */
    private PopupWindow.OnDismissListener f560E;

    /* renamed from: F */
    boolean f561F;

    /* renamed from: g */
    private final Context f562g;

    /* renamed from: h */
    private final int f563h;

    /* renamed from: i */
    private final int f564i;

    /* renamed from: j */
    private final int f565j;

    /* renamed from: k */
    private final boolean f566k;

    /* renamed from: t */
    private View f575t;

    /* renamed from: u */
    View f576u;

    /* renamed from: w */
    private boolean f578w;

    /* renamed from: x */
    private boolean f579x;

    /* renamed from: y */
    private int f580y;

    /* renamed from: z */
    private int f581z;

    /* renamed from: m */
    private final List<MenuBuilder> f568m = new ArrayList();

    /* renamed from: n */
    final List<CascadingMenuInfo> f569n = new ArrayList();

    /* renamed from: o */
    final ViewTreeObserver.OnGlobalLayoutListener f570o = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (CascadingMenuPopup.this.mo21440a() && CascadingMenuPopup.this.f569n.size() > 0 && !CascadingMenuPopup.this.f569n.get(0).f589a.m21456B()) {
                View view = CascadingMenuPopup.this.f576u;
                if (view == null || !view.isShown()) {
                    CascadingMenuPopup.this.dismiss();
                    return;
                }
                for (CascadingMenuInfo cascadingMenuInfo : CascadingMenuPopup.this.f569n) {
                    cascadingMenuInfo.f589a.mo21439b();
                }
            }
        }
    };

    /* renamed from: p */
    private final View.OnAttachStateChangeListener f571p = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.f559D;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.f559D = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.f559D.removeGlobalOnLayoutListener(cascadingMenuPopup.f570o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: q */
    private final MenuItemHoverListener f572q = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        /* renamed from: e */
        public void mo21416e(@NonNull final MenuBuilder menuBuilder, @NonNull final MenuItem menuItem) {
            final CascadingMenuInfo cascadingMenuInfo = null;
            CascadingMenuPopup.this.f567l.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.f569n.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (menuBuilder == CascadingMenuPopup.this.f569n.get(i).f590b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (i2 < CascadingMenuPopup.this.f569n.size()) {
                    cascadingMenuInfo = CascadingMenuPopup.this.f569n.get(i2);
                }
                CascadingMenuPopup.this.f567l.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                        if (cascadingMenuInfo2 != null) {
                            CascadingMenuPopup.this.f561F = true;
                            cascadingMenuInfo2.f590b.m21868e(false);
                            CascadingMenuPopup.this.f561F = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            menuBuilder.m21887N(menuItem, 4);
                        }
                    }
                }, menuBuilder, SystemClock.uptimeMillis() + 200);
            }
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        /* renamed from: h */
        public void mo21415h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f567l.removeCallbacksAndMessages(menuBuilder);
        }
    };

    /* renamed from: r */
    private int f573r = 0;

    /* renamed from: s */
    private int f574s = 0;

    /* renamed from: A */
    private boolean f556A = false;

    /* renamed from: v */
    private int f577v = m21914F();

    /* renamed from: l */
    final Handler f567l = new Handler();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo.class */
    public static class CascadingMenuInfo {

        /* renamed from: a */
        public final MenuPopupWindow f589a;

        /* renamed from: b */
        public final MenuBuilder f590b;

        /* renamed from: c */
        public final int f591c;

        public CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i) {
            this.f589a = menuPopupWindow;
            this.f590b = menuBuilder;
            this.f591c = i;
        }

        /* renamed from: a */
        public ListView m21911a() {
            return this.f589a.mo21434k();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition.class */
    public @interface HorizPosition {
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i, @StyleRes int i2, boolean z) {
        this.f562g = context;
        this.f575t = view;
        this.f564i = i;
        this.f565j = i2;
        this.f566k = z;
        Resources resources = context.getResources();
        this.f563h = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0042R.dimen.abc_config_prefDialogWidth));
    }

    /* renamed from: B */
    private MenuPopupWindow m21918B() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f562g, null, this.f564i, this.f565j);
        menuPopupWindow.m21418T(this.f572q);
        menuPopupWindow.m21446L(this);
        menuPopupWindow.m21447K(this);
        menuPopupWindow.m21454D(this.f575t);
        menuPopupWindow.m21451G(this.f574s);
        menuPopupWindow.m21448J(true);
        menuPopupWindow.m21449I(2);
        return menuPopupWindow;
    }

    /* renamed from: C */
    private int m21917C(@NonNull MenuBuilder menuBuilder) {
        int size = this.f569n.size();
        for (int i = 0; i < size; i++) {
            if (menuBuilder == this.f569n.get(i).f590b) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: D */
    private MenuItem m21916D(@NonNull MenuBuilder menuBuilder, @NonNull MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: E */
    private View m21915E(@NonNull CascadingMenuInfo cascadingMenuInfo, @NonNull MenuBuilder menuBuilder) {
        int i;
        MenuAdapter menuAdapter;
        int firstVisiblePosition;
        MenuItem D = m21916D(cascadingMenuInfo.f590b, menuBuilder);
        if (D == null) {
            return null;
        }
        ListView a = cascadingMenuInfo.m21911a();
        ListAdapter adapter = a.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            i = 0;
        }
        int count = menuAdapter.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (D == menuAdapter.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - a.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a.getChildCount()) {
            return a.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    /* renamed from: F */
    private int m21914F() {
        int i = 1;
        if (ViewCompat.m19244A(this.f575t) == 1) {
            i = 0;
        }
        return i;
    }

    /* renamed from: G */
    private int m21913G(int i) {
        List<CascadingMenuInfo> list = this.f569n;
        ListView a = list.get(list.size() - 1).m21911a();
        int[] iArr = new int[2];
        a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f576u.getWindowVisibleDisplayFrame(rect);
        return this.f577v == 1 ? (iArr[0] + a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: H */
    private void m21912H(@NonNull MenuBuilder menuBuilder) {
        View view;
        CascadingMenuInfo cascadingMenuInfo;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f562g);
        MenuAdapter menuAdapter = new MenuAdapter(menuBuilder, from, this.f566k, f555G);
        if (!mo21440a() && this.f556A) {
            menuAdapter.m21896d(true);
        } else if (mo21440a()) {
            menuAdapter.m21896d(MenuPopup.m21811z(menuBuilder));
        }
        int q = MenuPopup.m21813q(menuAdapter, null, this.f562g, this.f563h);
        MenuPopupWindow B = m21918B();
        B.mo21431p(menuAdapter);
        B.m21452F(q);
        B.m21451G(this.f574s);
        if (this.f569n.size() > 0) {
            List<CascadingMenuInfo> list = this.f569n;
            cascadingMenuInfo = list.get(list.size() - 1);
            view = m21915E(cascadingMenuInfo, menuBuilder);
        } else {
            cascadingMenuInfo = null;
            view = null;
        }
        if (view != null) {
            B.m21417U(false);
            B.m21420R(null);
            int G = m21913G(q);
            boolean z = G == 1;
            this.f577v = G;
            if (Build.VERSION.SDK_INT >= 26) {
                B.m21454D(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f575t.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f574s & 7) == 5) {
                    iArr[0] = iArr[0] + this.f575t.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f574s & 5) == 5) {
                if (!z) {
                    q = view.getWidth();
                    i3 = i - q;
                }
                i3 = i + q;
            } else {
                if (z) {
                    q = view.getWidth();
                    i3 = i + q;
                }
                i3 = i - q;
            }
            B.m21436f(i3);
            B.m21445M(true);
            B.m21433l(i2);
        } else {
            if (this.f578w) {
                B.m21436f(this.f580y);
            }
            if (this.f579x) {
                B.m21433l(this.f581z);
            }
            B.m21450H(m21814p());
        }
        this.f569n.add(new CascadingMenuInfo(B, menuBuilder, this.f577v));
        B.mo21439b();
        ListView k = B.mo21434k();
        k.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.f557B && menuBuilder.m21847z() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C0042R.layout.abc_popup_menu_header_item_layout, (ViewGroup) k, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(menuBuilder.m21847z());
            k.addHeaderView(frameLayout, null, false);
            B.mo21439b();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: a */
    public boolean mo21440a() {
        boolean z = false;
        if (this.f569n.size() > 0) {
            z = false;
            if (this.f569n.get(0).f589a.mo21440a()) {
                z = true;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: b */
    public void mo21439b() {
        if (!mo21440a()) {
            for (MenuBuilder menuBuilder : this.f568m) {
                m21912H(menuBuilder);
            }
            this.f568m.clear();
            View view = this.f575t;
            this.f576u = view;
            if (view != null) {
                boolean z = this.f559D == null;
                ViewTreeObserver viewTreeObserver = this.f576u.getViewTreeObserver();
                this.f559D = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f570o);
                }
                this.f576u.addOnAttachStateChangeListener(this.f571p);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        int C = m21917C(menuBuilder);
        if (C >= 0) {
            int i = C + 1;
            if (i < this.f569n.size()) {
                this.f569n.get(i).f590b.m21868e(false);
            }
            CascadingMenuInfo remove = this.f569n.remove(C);
            remove.f590b.m21884Q(this);
            if (this.f561F) {
                remove.f589a.m21419S(null);
                remove.f589a.m21453E(0);
            }
            remove.f589a.dismiss();
            int size = this.f569n.size();
            if (size > 0) {
                this.f577v = this.f569n.get(size - 1).f591c;
            } else {
                this.f577v = m21914F();
            }
            if (size == 0) {
                dismiss();
                MenuPresenter.Callback callback = this.f558C;
                if (callback != null) {
                    callback.mo21698c(menuBuilder, true);
                }
                ViewTreeObserver viewTreeObserver = this.f559D;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.f559D.removeGlobalOnLayoutListener(this.f570o);
                    }
                    this.f559D = null;
                }
                this.f576u.removeOnAttachStateChangeListener(this.f571p);
                this.f560E.onDismiss();
            } else if (z) {
                this.f569n.get(0).f590b.m21868e(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        for (CascadingMenuInfo cascadingMenuInfo : this.f569n) {
            MenuPopup.m21816A(cascadingMenuInfo.m21911a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        int size = this.f569n.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) this.f569n.toArray(new CascadingMenuInfo[size]);
            while (true) {
                size--;
                if (size >= 0) {
                    CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[size];
                    if (cascadingMenuInfo.f589a.mo21440a()) {
                        cascadingMenuInfo.f589a.dismiss();
                    }
                } else {
                    return;
                }
            }
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
        this.f558C = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: k */
    public ListView mo21434k() {
        ListView listView;
        if (this.f569n.isEmpty()) {
            listView = null;
        } else {
            List<CascadingMenuInfo> list = this.f569n;
            listView = list.get(list.size() - 1).m21911a();
        }
        return listView;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.f569n) {
            if (subMenuBuilder == cascadingMenuInfo.f590b) {
                cascadingMenuInfo.m21911a().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        mo21796n(subMenuBuilder);
        MenuPresenter.Callback callback = this.f558C;
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
        menuBuilder.m21872c(this, this.f562g);
        if (mo21440a()) {
            m21912H(menuBuilder);
        } else {
            this.f568m.add(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: o */
    protected boolean mo21815o() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        int size = this.f569n.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                cascadingMenuInfo = null;
                break;
            }
            cascadingMenuInfo = this.f569n.get(i);
            if (!cascadingMenuInfo.f589a.mo21440a()) {
                break;
            }
            i++;
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.f590b.m21868e(false);
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
    public void mo21795r(@NonNull View view) {
        if (this.f575t != view) {
            this.f575t = view;
            this.f574s = GravityCompat.m19304b(this.f573r, ViewCompat.m19244A(view));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: t */
    public void mo21794t(boolean z) {
        this.f556A = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: u */
    public void mo21793u(int i) {
        if (this.f573r != i) {
            this.f573r = i;
            this.f574s = GravityCompat.m19304b(i, ViewCompat.m19244A(this.f575t));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: v */
    public void mo21792v(int i) {
        this.f578w = true;
        this.f580y = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: w */
    public void mo21791w(PopupWindow.OnDismissListener onDismissListener) {
        this.f560E = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: x */
    public void mo21790x(boolean z) {
        this.f557B = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    /* renamed from: y */
    public void mo21789y(int i) {
        this.f579x = true;
        this.f581z = i;
    }
}
