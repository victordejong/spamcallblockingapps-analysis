package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0144i;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p151l.AbstractC3422d;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
public class C0142h {

    /* renamed from: a */
    public final Context f485a;

    /* renamed from: b */
    public final C0136e f486b;

    /* renamed from: c */
    public final boolean f487c;

    /* renamed from: d */
    public final int f488d;

    /* renamed from: e */
    public final int f489e;

    /* renamed from: f */
    public View f490f;

    /* renamed from: h */
    public boolean f492h;

    /* renamed from: i */
    public AbstractC0144i.AbstractC0145a f493i;

    /* renamed from: j */
    public AbstractC3422d f494j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f495k;

    /* renamed from: g */
    public int f491g = 8388611;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f496l = new C0143a();

    /* renamed from: androidx.appcompat.view.menu.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h$a.class */
    public class C0143a implements PopupWindow.OnDismissListener {
        public C0143a() {
            C0142h.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0142h.this.mo8566c();
        }
    }

    public C0142h(Context context, C0136e c0136e, View view, boolean z, int i, int i2) {
        this.f485a = context;
        this.f486b = c0136e;
        this.f490f = view;
        this.f487c = z;
        this.f488d = i;
        this.f489e = i2;
    }

    /* renamed from: a */
    public AbstractC3422d m8686a() {
        if (this.f494j == null) {
            Display defaultDisplay = ((WindowManager) this.f485a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            View$OnKeyListenerC0127b view$OnKeyListenerC0127b = Math.min(point.x, point.y) >= this.f485a.getResources().getDimensionPixelSize(C3681R.dimen.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0127b(this.f485a, this.f490f, this.f488d, this.f489e, this.f487c) : new View$OnKeyListenerC0148k(this.f485a, this.f486b, this.f490f, this.f488d, this.f489e, this.f487c);
            view$OnKeyListenerC0127b.mo2315m(this.f486b);
            view$OnKeyListenerC0127b.mo2309s(this.f496l);
            view$OnKeyListenerC0127b.mo2313o(this.f490f);
            view$OnKeyListenerC0127b.mo8681l(this.f493i);
            view$OnKeyListenerC0127b.mo2312p(this.f492h);
            view$OnKeyListenerC0127b.mo2311q(this.f491g);
            this.f494j = view$OnKeyListenerC0127b;
        }
        return this.f494j;
    }

    /* renamed from: b */
    public boolean m8685b() {
        AbstractC3422d abstractC3422d = this.f494j;
        return abstractC3422d != null && abstractC3422d.mo2305b();
    }

    /* renamed from: c */
    public void mo8566c() {
        this.f494j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f495k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: d */
    public void m8684d(AbstractC0144i.AbstractC0145a abstractC0145a) {
        this.f493i = abstractC0145a;
        AbstractC3422d abstractC3422d = this.f494j;
        if (abstractC3422d != null) {
            abstractC3422d.mo8681l(abstractC0145a);
        }
    }

    /* renamed from: e */
    public final void m8683e(int i, int i2, boolean z, boolean z2) {
        AbstractC3422d m8686a = m8686a();
        m8686a.mo2308t(z2);
        if (z) {
            int i3 = this.f491g;
            View view = this.f490f;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            int i4 = i;
            if ((Gravity.getAbsoluteGravity(i3, C3589v.C3594e.m2071d(view)) & 7) == 5) {
                i4 = i - this.f490f.getWidth();
            }
            m8686a.mo2310r(i4);
            m8686a.mo2307u(i2);
            int i5 = (int) ((this.f485a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m8686a.f11482a = new Rect(i4 - i5, i2 - i5, i4 + i5, i2 + i5);
        }
        m8686a.show();
    }

    /* renamed from: f */
    public boolean m8682f() {
        if (m8685b()) {
            return true;
        }
        if (this.f490f == null) {
            return false;
        }
        m8683e(0, 0, false, false);
        return true;
    }
}
