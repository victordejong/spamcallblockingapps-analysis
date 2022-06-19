package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.widget.AbstractC0259n0;
import androidx.appcompat.widget.C0238i0;
import androidx.appcompat.widget.C0261o0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p151l.AbstractC3422d;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public final class View$OnKeyListenerC0127b extends AbstractC3422d implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: A */
    public boolean f376A;

    /* renamed from: b */
    public final Context f377b;

    /* renamed from: c */
    public final int f378c;

    /* renamed from: d */
    public final int f379d;

    /* renamed from: e */
    public final int f380e;

    /* renamed from: f */
    public final boolean f381f;

    /* renamed from: g */
    public final Handler f382g;

    /* renamed from: o */
    public View f390o;

    /* renamed from: p */
    public View f391p;

    /* renamed from: q */
    public int f392q;

    /* renamed from: r */
    public boolean f393r;

    /* renamed from: s */
    public boolean f394s;

    /* renamed from: t */
    public int f395t;

    /* renamed from: u */
    public int f396u;

    /* renamed from: w */
    public boolean f398w;

    /* renamed from: x */
    public AbstractC0144i.AbstractC0145a f399x;

    /* renamed from: y */
    public ViewTreeObserver f400y;

    /* renamed from: z */
    public PopupWindow.OnDismissListener f401z;

    /* renamed from: h */
    public final List<C0136e> f383h = new ArrayList();

    /* renamed from: i */
    public final List<C0132d> f384i = new ArrayList();

    /* renamed from: j */
    public final ViewTreeObserver.OnGlobalLayoutListener f385j = new ViewTreeObserver$OnGlobalLayoutListenerC0128a();

    /* renamed from: k */
    public final View.OnAttachStateChangeListener f386k = new View$OnAttachStateChangeListenerC0129b();

    /* renamed from: l */
    public final AbstractC0259n0 f387l = new C0130c();

    /* renamed from: m */
    public int f388m = 0;

    /* renamed from: n */
    public int f389n = 0;

    /* renamed from: v */
    public boolean f397v = false;

    /* renamed from: androidx.appcompat.view.menu.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0128a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0128a() {
            View$OnKeyListenerC0127b.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!View$OnKeyListenerC0127b.this.mo2305b() || View$OnKeyListenerC0127b.this.f384i.size() <= 0 || View$OnKeyListenerC0127b.this.f384i.get(0).f409a.f1042x) {
                return;
            }
            View view = View$OnKeyListenerC0127b.this.f391p;
            if (view == null || !view.isShown()) {
                View$OnKeyListenerC0127b.this.dismiss();
                return;
            }
            for (C0132d c0132d : View$OnKeyListenerC0127b.this.f384i) {
                c0132d.f409a.show();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b$b.class */
    public class View$OnAttachStateChangeListenerC0129b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0129b() {
            View$OnKeyListenerC0127b.this = r4;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0127b.this.f400y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0127b.this.f400y = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0127b view$OnKeyListenerC0127b = View$OnKeyListenerC0127b.this;
                view$OnKeyListenerC0127b.f400y.removeGlobalOnLayoutListener(view$OnKeyListenerC0127b.f385j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b$c.class */
    public class C0130c implements AbstractC0259n0 {

        /* renamed from: androidx.appcompat.view.menu.b$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b$c$a.class */
        public class RunnableC0131a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C0132d f405a;

            /* renamed from: b */
            public final /* synthetic */ MenuItem f406b;

            /* renamed from: c */
            public final /* synthetic */ C0136e f407c;

            public RunnableC0131a(C0132d c0132d, MenuItem menuItem, C0136e c0136e) {
                C0130c.this = r4;
                this.f405a = c0132d;
                this.f406b = menuItem;
                this.f407c = c0136e;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0132d c0132d = this.f405a;
                if (c0132d != null) {
                    View$OnKeyListenerC0127b.this.f376A = true;
                    c0132d.f410b.m8712c(false);
                    View$OnKeyListenerC0127b.this.f376A = false;
                }
                if (!this.f406b.isEnabled() || !this.f406b.hasSubMenu()) {
                    return;
                }
                this.f407c.m8707q(this.f406b, 4);
            }
        }

        public C0130c() {
            View$OnKeyListenerC0127b.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractC0259n0
        /* renamed from: a */
        public void mo8452a(C0136e c0136e, MenuItem menuItem) {
            C0132d c0132d = null;
            View$OnKeyListenerC0127b.this.f382g.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0127b.this.f384i.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0136e == View$OnKeyListenerC0127b.this.f384i.get(i).f410b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < View$OnKeyListenerC0127b.this.f384i.size()) {
                c0132d = View$OnKeyListenerC0127b.this.f384i.get(i2);
            }
            View$OnKeyListenerC0127b.this.f382g.postAtTime(new RunnableC0131a(c0132d, menuItem, c0136e), c0136e, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.AbstractC0259n0
        /* renamed from: d */
        public void mo8451d(C0136e c0136e, MenuItem menuItem) {
            View$OnKeyListenerC0127b.this.f382g.removeCallbacksAndMessages(c0136e);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b$d.class */
    public static class C0132d {

        /* renamed from: a */
        public final C0261o0 f409a;

        /* renamed from: b */
        public final C0136e f410b;

        /* renamed from: c */
        public final int f411c;

        public C0132d(C0261o0 c0261o0, C0136e c0136e, int i) {
            this.f409a = c0261o0;
            this.f410b = c0136e;
            this.f411c = i;
        }
    }

    public View$OnKeyListenerC0127b(Context context, View view, int i, int i2, boolean z) {
        this.f377b = context;
        this.f390o = view;
        this.f379d = i;
        this.f380e = i2;
        this.f381f = z;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        this.f392q = C3589v.C3594e.m2071d(view) == 1 ? 0 : 1;
        Resources resources = context.getResources();
        this.f378c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C3681R.dimen.abc_config_prefDialogWidth));
        this.f382g = new Handler();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: a */
    public void mo717a(C0136e c0136e, boolean z) {
        int size = this.f384i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (c0136e == this.f384i.get(i).f410b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.f384i.size()) {
            this.f384i.get(i2).f410b.m8712c(false);
        }
        C0132d remove = this.f384i.remove(i);
        remove.f410b.m8704t(this);
        if (this.f376A) {
            C0261o0 c0261o0 = remove.f409a;
            Objects.requireNonNull(c0261o0);
            if (Build.VERSION.SDK_INT >= 23) {
                c0261o0.f1043y.setExitTransition(null);
            }
            remove.f409a.f1043y.setAnimationStyle(0);
        }
        remove.f409a.dismiss();
        int size2 = this.f384i.size();
        if (size2 > 0) {
            this.f392q = this.f384i.get(size2 - 1).f411c;
        } else {
            View view = this.f390o;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            this.f392q = C3589v.C3594e.m2071d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (!z) {
                return;
            }
            this.f384i.get(0).f410b.m8712c(false);
            return;
        }
        dismiss();
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f399x;
        if (abstractC0145a != null) {
            abstractC0145a.mo3279a(c0136e, true);
        }
        ViewTreeObserver viewTreeObserver = this.f400y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f400y.removeGlobalOnLayoutListener(this.f385j);
            }
            this.f400y = null;
        }
        this.f391p.removeOnAttachStateChangeListener(this.f386k);
        this.f401z.onDismiss();
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: b */
    public boolean mo2305b() {
        boolean z = false;
        if (this.f384i.size() > 0) {
            z = false;
            if (this.f384i.get(0).f409a.mo2305b()) {
                z = true;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: d */
    public void mo714d(Parcelable parcelable) {
    }

    @Override // p151l.AbstractC3424f
    public void dismiss() {
        int size = this.f384i.size();
        if (size > 0) {
            C0132d[] c0132dArr = (C0132d[]) this.f384i.toArray(new C0132d[size]);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0132d c0132d = c0132dArr[size];
                if (c0132d.f409a.mo2305b()) {
                    c0132d.f409a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: e */
    public boolean mo713e(SubMenuC0151l subMenuC0151l) {
        for (C0132d c0132d : this.f384i) {
            if (subMenuC0151l == c0132d.f410b) {
                c0132d.f409a.f1021c.requestFocus();
                return true;
            }
        }
        if (subMenuC0151l.hasVisibleItems()) {
            subMenuC0151l.m8713b(this, this.f377b);
            if (mo2305b()) {
                m8720w(subMenuC0151l);
            } else {
                this.f383h.add(subMenuC0151l);
            }
            AbstractC0144i.AbstractC0145a abstractC0145a = this.f399x;
            if (abstractC0145a == null) {
                return true;
            }
            abstractC0145a.mo3278b(subMenuC0151l);
            return true;
        }
        return false;
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: f */
    public ListView mo2304f() {
        C0238i0 c0238i0;
        if (this.f384i.isEmpty()) {
            c0238i0 = null;
        } else {
            List<C0132d> list = this.f384i;
            c0238i0 = list.get(list.size() - 1).f409a.f1021c;
        }
        return c0238i0;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: g */
    public void mo711g(boolean z) {
        for (C0132d c0132d : this.f384i) {
            ListAdapter adapter = c0132d.f409a.f1021c.getAdapter();
            ((C0135d) (adapter instanceof HeaderViewListAdapter ? ((HeaderViewListAdapter) adapter).getWrappedAdapter() : adapter)).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: h */
    public boolean mo710h() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: i */
    public Parcelable mo709i() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: l */
    public void mo8681l(AbstractC0144i.AbstractC0145a abstractC0145a) {
        this.f399x = abstractC0145a;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: m */
    public void mo2315m(C0136e c0136e) {
        c0136e.m8713b(this, this.f377b);
        if (mo2305b()) {
            m8720w(c0136e);
        } else {
            this.f383h.add(c0136e);
        }
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: o */
    public void mo2313o(View view) {
        if (this.f390o != view) {
            this.f390o = view;
            int i = this.f388m;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            this.f389n = Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0132d c0132d;
        int size = this.f384i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0132d = null;
                break;
            }
            c0132d = this.f384i.get(i);
            if (!c0132d.f409a.mo2305b()) {
                break;
            }
            i++;
        }
        if (c0132d != null) {
            c0132d.f410b.m8712c(false);
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

    @Override // p151l.AbstractC3422d
    /* renamed from: p */
    public void mo2312p(boolean z) {
        this.f397v = z;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: q */
    public void mo2311q(int i) {
        if (this.f388m != i) {
            this.f388m = i;
            View view = this.f390o;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            this.f389n = Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(view));
        }
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: r */
    public void mo2310r(int i) {
        this.f393r = true;
        this.f395t = i;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: s */
    public void mo2309s(PopupWindow.OnDismissListener onDismissListener) {
        this.f401z = onDismissListener;
    }

    @Override // p151l.AbstractC3424f
    public void show() {
        if (mo2305b()) {
            return;
        }
        for (C0136e c0136e : this.f383h) {
            m8720w(c0136e);
        }
        this.f383h.clear();
        View view = this.f390o;
        this.f391p = view;
        if (view == null) {
            return;
        }
        boolean z = this.f400y == null;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.f400y = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f385j);
        }
        this.f391p.addOnAttachStateChangeListener(this.f386k);
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: t */
    public void mo2308t(boolean z) {
        this.f398w = z;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: u */
    public void mo2307u(int i) {
        this.f394s = true;
        this.f396u = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x038c  */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8720w(androidx.appcompat.view.menu.C0136e r8) {
        /*
            Method dump skipped, instructions count: 1086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.View$OnKeyListenerC0127b.m8720w(androidx.appcompat.view.menu.e):void");
    }
}
