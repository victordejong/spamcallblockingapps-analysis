package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0097m;
import d.a.d;
import d.h.m.t;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0095l {

    /* renamed from: a */
    private final Context f328a;

    /* renamed from: b */
    private final g f329b;

    /* renamed from: c */
    private final boolean f330c;

    /* renamed from: d */
    private final int f331d;

    /* renamed from: e */
    private final int f332e;

    /* renamed from: f */
    private View f333f;

    /* renamed from: g */
    private int f334g;

    /* renamed from: h */
    private boolean f335h;

    /* renamed from: i */
    private AbstractC0097m.AbstractC0098a f336i;

    /* renamed from: j */
    private k f337j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f338k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f339l;

    /* renamed from: androidx.appcompat.view.menu.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l$a.class */
    class C0096a implements PopupWindow.OnDismissListener {
        C0096a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0095l.this.m14832e();
        }
    }

    public C0095l(Context context, g gVar, View view, boolean z, int i) {
        this(context, gVar, view, z, i, 0);
    }

    public C0095l(Context context, g gVar, View view, boolean z, int i, int i2) {
        this.f334g = 8388611;
        this.f339l = new C0096a();
        this.f328a = context;
        this.f329b = gVar;
        this.f333f = view;
        this.f330c = z;
        this.f331d = i;
        this.f332e = i2;
    }

    /* renamed from: a */
    private k m14836a() {
        Display defaultDisplay = ((WindowManager) this.f328a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        d dVar = Math.min(point.x, point.y) >= this.f328a.getResources().getDimensionPixelSize(d.abc_cascading_menus_min_smallest_width) ? new d(this.f328a, this.f333f, this.f331d, this.f332e, this.f330c) : new q(this.f328a, this.f329b, this.f333f, this.f331d, this.f332e, this.f330c);
        dVar.b(this.f329b);
        dVar.n(this.f339l);
        dVar.i(this.f333f);
        dVar.m14813O(this.f336i);
        dVar.k(this.f335h);
        dVar.l(this.f334g);
        return dVar;
    }

    /* renamed from: l */
    private void m14825l(int i, int i2, boolean z, boolean z2) {
        k c = m14834c();
        c.o(z2);
        if (z) {
            int i3 = i;
            if ((d.h.m.d.b(this.f334g, t.B(this.f333f)) & 7) == 5) {
                i3 = i - this.f333f.getWidth();
            }
            c.m(i3);
            c.p(i2);
            int i4 = (int) ((this.f328a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c.j(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        c.m14805e();
    }

    /* renamed from: b */
    public void m14835b() {
        if (m14833d()) {
            this.f337j.dismiss();
        }
    }

    /* renamed from: c */
    public k m14834c() {
        if (this.f337j == null) {
            this.f337j = m14836a();
        }
        return this.f337j;
    }

    /* renamed from: d */
    public boolean m14833d() {
        k kVar = this.f337j;
        return kVar != null && kVar.m14806c();
    }

    /* renamed from: e */
    protected void m14832e() {
        this.f337j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f338k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m14831f(View view) {
        this.f333f = view;
    }

    /* renamed from: g */
    public void m14830g(boolean z) {
        this.f335h = z;
        k kVar = this.f337j;
        if (kVar != null) {
            kVar.k(z);
        }
    }

    /* renamed from: h */
    public void m14829h(int i) {
        this.f334g = i;
    }

    /* renamed from: i */
    public void m14828i(PopupWindow.OnDismissListener onDismissListener) {
        this.f338k = onDismissListener;
    }

    /* renamed from: j */
    public void m14827j(AbstractC0097m.AbstractC0098a aVar) {
        this.f336i = aVar;
        k kVar = this.f337j;
        if (kVar != null) {
            kVar.m14813O(aVar);
        }
    }

    /* renamed from: k */
    public void m14826k() {
        if (!m14824m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* renamed from: m */
    public boolean m14824m() {
        if (m14833d()) {
            return true;
        }
        if (this.f333f == null) {
            return false;
        }
        m14825l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m14823n(int i, int i2) {
        if (m14833d()) {
            return true;
        }
        if (this.f333f == null) {
            return false;
        }
        m14825l(i, i2, true, true);
        return true;
    }
}
