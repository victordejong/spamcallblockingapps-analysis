package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.widget.C0261o0;
import me.zhanghai.android.materialprogressbar.C3681R;
import p151l.AbstractC3422d;
/* renamed from: androidx.appcompat.view.menu.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k.class */
public final class View$OnKeyListenerC0148k extends AbstractC3422d implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: b */
    public final Context f498b;

    /* renamed from: c */
    public final C0136e f499c;

    /* renamed from: d */
    public final C0135d f500d;

    /* renamed from: e */
    public final boolean f501e;

    /* renamed from: f */
    public final int f502f;

    /* renamed from: g */
    public final int f503g;

    /* renamed from: h */
    public final int f504h;

    /* renamed from: i */
    public final C0261o0 f505i;

    /* renamed from: l */
    public PopupWindow.OnDismissListener f508l;

    /* renamed from: m */
    public View f509m;

    /* renamed from: n */
    public View f510n;

    /* renamed from: o */
    public AbstractC0144i.AbstractC0145a f511o;

    /* renamed from: p */
    public ViewTreeObserver f512p;

    /* renamed from: q */
    public boolean f513q;

    /* renamed from: r */
    public boolean f514r;

    /* renamed from: s */
    public int f515s;

    /* renamed from: u */
    public boolean f517u;

    /* renamed from: j */
    public final ViewTreeObserver.OnGlobalLayoutListener f506j = new ViewTreeObserver$OnGlobalLayoutListenerC0149a();

    /* renamed from: k */
    public final View.OnAttachStateChangeListener f507k = new View$OnAttachStateChangeListenerC0150b();

    /* renamed from: t */
    public int f516t = 0;

    /* renamed from: androidx.appcompat.view.menu.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0149a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0149a() {
            View$OnKeyListenerC0148k.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (View$OnKeyListenerC0148k.this.mo2305b()) {
                View$OnKeyListenerC0148k view$OnKeyListenerC0148k = View$OnKeyListenerC0148k.this;
                if (view$OnKeyListenerC0148k.f505i.f1042x) {
                    return;
                }
                View view = view$OnKeyListenerC0148k.f510n;
                if (view == null || !view.isShown()) {
                    View$OnKeyListenerC0148k.this.dismiss();
                } else {
                    View$OnKeyListenerC0148k.this.f505i.show();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k$b.class */
    public class View$OnAttachStateChangeListenerC0150b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0150b() {
            View$OnKeyListenerC0148k.this = r4;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0148k.this.f512p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0148k.this.f512p = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0148k view$OnKeyListenerC0148k = View$OnKeyListenerC0148k.this;
                view$OnKeyListenerC0148k.f512p.removeGlobalOnLayoutListener(view$OnKeyListenerC0148k.f506j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public View$OnKeyListenerC0148k(Context context, C0136e c0136e, View view, int i, int i2, boolean z) {
        this.f498b = context;
        this.f499c = c0136e;
        this.f501e = z;
        this.f500d = new C0135d(c0136e, LayoutInflater.from(context), z, C3681R.layout.abc_popup_menu_item_layout);
        this.f503g = i;
        this.f504h = i2;
        Resources resources = context.getResources();
        this.f502f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C3681R.dimen.abc_config_prefDialogWidth));
        this.f509m = view;
        this.f505i = new C0261o0(context, null, i, i2);
        c0136e.m8713b(this, context);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: a */
    public void mo717a(C0136e c0136e, boolean z) {
        if (c0136e != this.f499c) {
            return;
        }
        dismiss();
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f511o;
        if (abstractC0145a == null) {
            return;
        }
        abstractC0145a.mo3279a(c0136e, z);
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: b */
    public boolean mo2305b() {
        return !this.f513q && this.f505i.mo2305b();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: d */
    public void mo714d(Parcelable parcelable) {
    }

    @Override // p151l.AbstractC3424f
    public void dismiss() {
        if (mo2305b()) {
            this.f505i.dismiss();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo713e(androidx.appcompat.view.menu.SubMenuC0151l r10) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.View$OnKeyListenerC0148k.mo713e(androidx.appcompat.view.menu.l):boolean");
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: f */
    public ListView mo2304f() {
        return this.f505i.f1021c;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: g */
    public void mo711g(boolean z) {
        this.f514r = false;
        C0135d c0135d = this.f500d;
        if (c0135d != null) {
            c0135d.notifyDataSetChanged();
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
        this.f511o = abstractC0145a;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: m */
    public void mo2315m(C0136e c0136e) {
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: o */
    public void mo2313o(View view) {
        this.f509m = view;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f513q = true;
        this.f499c.m8712c(true);
        ViewTreeObserver viewTreeObserver = this.f512p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f512p = this.f510n.getViewTreeObserver();
            }
            this.f512p.removeGlobalOnLayoutListener(this.f506j);
            this.f512p = null;
        }
        this.f510n.removeOnAttachStateChangeListener(this.f507k);
        PopupWindow.OnDismissListener onDismissListener = this.f508l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f500d.f422c = z;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: q */
    public void mo2311q(int i) {
        this.f516t = i;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: r */
    public void mo2310r(int i) {
        this.f505i.f1024f = i;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: s */
    public void mo2309s(PopupWindow.OnDismissListener onDismissListener) {
        this.f508l = onDismissListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0180 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0181  */
    @Override // p151l.AbstractC3424f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void show() {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.View$OnKeyListenerC0148k.show():void");
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: t */
    public void mo2308t(boolean z) {
        this.f517u = z;
    }

    @Override // p151l.AbstractC3422d
    /* renamed from: u */
    public void mo2307u(int i) {
        C0261o0 c0261o0 = this.f505i;
        c0261o0.f1025g = i;
        c0261o0.f1027i = true;
    }
}
