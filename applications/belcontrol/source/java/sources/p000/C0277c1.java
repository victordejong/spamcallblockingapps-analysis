package p000;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import p000.AbstractC1270d1;
/* renamed from: c1 */
/* loaded from: classes-dex2jar.jar:c1.class */
public class C0277c1 {

    /* renamed from: a */
    public final Context f2106a;

    /* renamed from: b */
    public final x0 f2107b;

    /* renamed from: c */
    public final boolean f2108c;

    /* renamed from: d */
    public final int f2109d;

    /* renamed from: e */
    public final int f2110e;

    /* renamed from: f */
    public View f2111f;

    /* renamed from: g */
    public int f2112g;

    /* renamed from: h */
    public boolean f2113h;

    /* renamed from: i */
    public AbstractC1270d1.AbstractC1271a f2114i;

    /* renamed from: j */
    public b1 f2115j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f2116k;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f2117l;

    /* renamed from: c1$a */
    /* loaded from: classes-dex2jar.jar:c1$a.class */
    public class C0278a implements PopupWindow.OnDismissListener {
        public C0278a() {
            C0277c1.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0277c1.this.m5486e();
        }
    }

    public C0277c1(Context context, x0 x0Var, View view, boolean z, int i) {
        this(context, x0Var, view, z, i, 0);
    }

    public C0277c1(Context context, x0 x0Var, View view, boolean z, int i, int i2) {
        this.f2112g = 8388611;
        this.f2117l = new C0278a();
        this.f2106a = context;
        this.f2107b = x0Var;
        this.f2111f = view;
        this.f2108c = z;
        this.f2109d = i;
        this.f2110e = i2;
    }

    /* renamed from: a */
    public final b1 m5490a() {
        Display defaultDisplay = ((WindowManager) this.f2106a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        b1 u0Var = Math.min(point.x, point.y) >= this.f2106a.getResources().getDimensionPixelSize(i.abc_cascading_menus_min_smallest_width) ? new u0(this.f2106a, this.f2111f, this.f2109d, this.f2110e, this.f2108c) : new h1(this.f2106a, this.f2107b, this.f2111f, this.f2109d, this.f2110e, this.f2108c);
        u0Var.b(this.f2107b);
        u0Var.k(this.f2117l);
        u0Var.f(this.f2111f);
        u0Var.setCallback(this.f2114i);
        u0Var.h(this.f2113h);
        u0Var.i(this.f2112g);
        return u0Var;
    }

    /* renamed from: b */
    public void m5489b() {
        if (m5487d()) {
            this.f2115j.dismiss();
        }
    }

    /* renamed from: c */
    public b1 m5488c() {
        if (this.f2115j == null) {
            this.f2115j = m5490a();
        }
        return this.f2115j;
    }

    /* renamed from: d */
    public boolean m5487d() {
        b1 b1Var = this.f2115j;
        return b1Var != null && b1Var.a();
    }

    /* renamed from: e */
    public void m5486e() {
        this.f2115j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f2116k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m5485f(View view) {
        this.f2111f = view;
    }

    /* renamed from: g */
    public void m5484g(boolean z) {
        this.f2113h = z;
        b1 b1Var = this.f2115j;
        if (b1Var != null) {
            b1Var.h(z);
        }
    }

    /* renamed from: h */
    public void m5483h(int i) {
        this.f2112g = i;
    }

    /* renamed from: i */
    public void m5482i(PopupWindow.OnDismissListener onDismissListener) {
        this.f2116k = onDismissListener;
    }

    /* renamed from: j */
    public void m5481j(AbstractC1270d1.AbstractC1271a abstractC1271a) {
        this.f2114i = abstractC1271a;
        b1 b1Var = this.f2115j;
        if (b1Var != null) {
            b1Var.setCallback(abstractC1271a);
        }
    }

    /* renamed from: k */
    public void m5480k() {
        if (m5478m()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: l */
    public final void m5479l(int i, int i2, boolean z, boolean z2) {
        b1 m5488c = m5488c();
        m5488c.l(z2);
        if (z) {
            int i3 = i;
            if ((ta.b(this.f2112g, jb.B(this.f2111f)) & 7) == 5) {
                i3 = i - this.f2111f.getWidth();
            }
            m5488c.j(i3);
            m5488c.m(i2);
            int i4 = (int) ((this.f2106a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m5488c.g(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        m5488c.show();
    }

    /* renamed from: m */
    public boolean m5478m() {
        if (m5487d()) {
            return true;
        }
        if (this.f2111f == null) {
            return false;
        }
        m5479l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m5477n(int i, int i2) {
        if (m5487d()) {
            return true;
        }
        if (this.f2111f == null) {
            return false;
        }
        m5479l(i, i2, true, true);
        return true;
    }
}
