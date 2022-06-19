package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0193m;
import p020b.p021a.C1426d;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0191l {

    /* renamed from: a */
    private final Context f704a;

    /* renamed from: b */
    private final C0178g f705b;

    /* renamed from: c */
    private final boolean f706c;

    /* renamed from: d */
    private final int f707d;

    /* renamed from: e */
    private final int f708e;

    /* renamed from: f */
    private View f709f;

    /* renamed from: g */
    private int f710g;

    /* renamed from: h */
    private boolean f711h;

    /* renamed from: i */
    private AbstractC0193m.AbstractC0194a f712i;

    /* renamed from: j */
    private AbstractC0190k f713j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f714k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f715l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l$a.class */
    public class C0192a implements PopupWindow.OnDismissListener {
        C0192a() {
            C0191l.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0191l.this.mo35242e();
        }
    }

    public C0191l(Context context, C0178g c0178g, View view, boolean z, int i) {
        this(context, c0178g, view, z, i, 0);
    }

    public C0191l(Context context, C0178g c0178g, View view, boolean z, int i, int i2) {
        this.f710g = 8388611;
        this.f715l = new C0192a();
        this.f704a = context;
        this.f705b = c0178g;
        this.f709f = view;
        this.f706c = z;
        this.f707d = i;
        this.f708e = i2;
    }

    /* renamed from: a */
    private AbstractC0190k m35329a() {
        Display defaultDisplay = ((WindowManager) this.f704a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        View$OnKeyListenerC0169d view$OnKeyListenerC0169d = Math.min(point.x, point.y) >= this.f704a.getResources().getDimensionPixelSize(C1426d.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0169d(this.f704a, this.f709f, this.f707d, this.f708e, this.f706c) : new View$OnKeyListenerC0199q(this.f704a, this.f705b, this.f709f, this.f707d, this.f708e, this.f706c);
        view$OnKeyListenerC0169d.mo35314n(this.f705b);
        view$OnKeyListenerC0169d.mo35309w(this.f715l);
        view$OnKeyListenerC0169d.mo35313r(this.f709f);
        view$OnKeyListenerC0169d.mo35315g(this.f712i);
        view$OnKeyListenerC0169d.mo35312t(this.f711h);
        view$OnKeyListenerC0169d.mo35311u(this.f710g);
        return view$OnKeyListenerC0169d;
    }

    /* renamed from: l */
    private void m35319l(int i, int i2, boolean z, boolean z2) {
        AbstractC0190k m35327c = m35327c();
        m35327c.mo35308x(z2);
        if (z) {
            int i3 = i;
            if ((C1614e.m29600b(this.f710g, C1679w.m29346C(this.f709f)) & 7) == 5) {
                i3 = i - this.f709f.getWidth();
            }
            m35327c.mo35310v(i3);
            m35327c.mo35307y(i2);
            int i4 = (int) ((this.f704a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m35327c.m35331s(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        m35327c.mo35134h();
    }

    /* renamed from: b */
    public void m35328b() {
        if (m35326d()) {
            this.f713j.dismiss();
        }
    }

    /* renamed from: c */
    public AbstractC0190k m35327c() {
        if (this.f713j == null) {
            this.f713j = m35329a();
        }
        return this.f713j;
    }

    /* renamed from: d */
    public boolean m35326d() {
        AbstractC0190k abstractC0190k = this.f713j;
        return abstractC0190k != null && abstractC0190k.mo35138a();
    }

    /* renamed from: e */
    public void mo35242e() {
        this.f713j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f714k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m35325f(View view) {
        this.f709f = view;
    }

    /* renamed from: g */
    public void m35324g(boolean z) {
        this.f711h = z;
        AbstractC0190k abstractC0190k = this.f713j;
        if (abstractC0190k != null) {
            abstractC0190k.mo35312t(z);
        }
    }

    /* renamed from: h */
    public void m35323h(int i) {
        this.f710g = i;
    }

    /* renamed from: i */
    public void m35322i(PopupWindow.OnDismissListener onDismissListener) {
        this.f714k = onDismissListener;
    }

    /* renamed from: j */
    public void m35321j(AbstractC0193m.AbstractC0194a abstractC0194a) {
        this.f712i = abstractC0194a;
        AbstractC0190k abstractC0190k = this.f713j;
        if (abstractC0190k != null) {
            abstractC0190k.mo35315g(abstractC0194a);
        }
    }

    /* renamed from: k */
    public void m35320k() {
        if (m35318m()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: m */
    public boolean m35318m() {
        if (m35326d()) {
            return true;
        }
        if (this.f709f == null) {
            return false;
        }
        m35319l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m35317n(int i, int i2) {
        if (m35326d()) {
            return true;
        }
        if (this.f709f == null) {
            return false;
        }
        m35319l(i, i2, true, true);
        return true;
    }
}
