package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0212l {

    /* renamed from: a */
    private final Context f846a;

    /* renamed from: b */
    private final C0199g f847b;

    /* renamed from: c */
    private final boolean f848c;

    /* renamed from: d */
    private final int f849d;

    /* renamed from: e */
    private final int f850e;

    /* renamed from: f */
    private View f851f;

    /* renamed from: g */
    private int f852g;

    /* renamed from: h */
    private boolean f853h;

    /* renamed from: i */
    private AbstractC0214m.AbstractC0215a f854i;

    /* renamed from: j */
    private AbstractC0211k f855j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f856k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f857l;

    public C0212l(Context context, C0199g c0199g, View view, boolean z, int i) {
        this(context, c0199g, view, z, i, 0);
    }

    public C0212l(Context context, C0199g c0199g, View view, boolean z, int i, int i2) {
        this.f852g = 8388611;
        this.f857l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.l.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                C0212l.this.mo21355e();
            }
        };
        this.f846a = context;
        this.f847b = c0199g;
        this.f851f = view;
        this.f848c = z;
        this.f849d = i;
        this.f850e = i2;
    }

    /* renamed from: a */
    private void m21808a(int i, int i2, boolean z, boolean z2) {
        AbstractC0211k m21803b = m21803b();
        m21803b.mo21791c(z2);
        if (z) {
            int i3 = i;
            if ((C0576c.m20421a(this.f852g, C0595u.m20320g(this.f851f)) & 7) == 5) {
                i3 = i - this.f851f.getWidth();
            }
            m21803b.mo21794b(i3);
            m21803b.mo21792c(i2);
            int i4 = (int) ((this.f846a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m21803b.m21817a(new Rect(i3 - i4, i2 - i4, i3 + i4, i4 + i2));
        }
        m21803b.mo21545a_();
    }

    /* renamed from: g */
    private AbstractC0211k m21799g() {
        Display defaultDisplay = ((WindowManager) this.f846a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        AbstractC0211k view$OnKeyListenerC0190d = Math.min(point.x, point.y) >= this.f846a.getResources().getDimensionPixelSize(C0083a.C0087d.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0190d(this.f846a, this.f851f, this.f849d, this.f850e, this.f848c) : new View$OnKeyListenerC0220q(this.f846a, this.f847b, this.f851f, this.f849d, this.f850e, this.f848c);
        view$OnKeyListenerC0190d.mo21795a(this.f847b);
        view$OnKeyListenerC0190d.mo21796a(this.f857l);
        view$OnKeyListenerC0190d.mo21797a(this.f851f);
        view$OnKeyListenerC0190d.mo3585a(this.f854i);
        view$OnKeyListenerC0190d.mo21793b(this.f853h);
        view$OnKeyListenerC0190d.mo21798a(this.f852g);
        return view$OnKeyListenerC0190d;
    }

    /* renamed from: a */
    public void m21811a() {
        if (!m21802c()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* renamed from: a */
    public void m21810a(int i) {
        this.f852g = i;
    }

    /* renamed from: a */
    public void m21807a(View view) {
        this.f851f = view;
    }

    /* renamed from: a */
    public void m21806a(PopupWindow.OnDismissListener onDismissListener) {
        this.f856k = onDismissListener;
    }

    /* renamed from: a */
    public void m21805a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        this.f854i = abstractC0215a;
        if (this.f855j != null) {
            this.f855j.mo3585a(abstractC0215a);
        }
    }

    /* renamed from: a */
    public void m21804a(boolean z) {
        this.f853h = z;
        if (this.f855j != null) {
            this.f855j.mo21793b(z);
        }
    }

    /* renamed from: a */
    public boolean m21809a(int i, int i2) {
        boolean z = true;
        if (!m21800f()) {
            if (this.f851f == null) {
                z = false;
            } else {
                m21808a(i, i2, true, true);
            }
        }
        return z;
    }

    /* renamed from: b */
    public AbstractC0211k m21803b() {
        if (this.f855j == null) {
            this.f855j = m21799g();
        }
        return this.f855j;
    }

    /* renamed from: c */
    public boolean m21802c() {
        boolean z = true;
        if (!m21800f()) {
            if (this.f851f == null) {
                z = false;
            } else {
                m21808a(0, 0, false, false);
            }
        }
        return z;
    }

    /* renamed from: d */
    public void m21801d() {
        if (m21800f()) {
            this.f855j.mo21538d();
        }
    }

    /* renamed from: e */
    public void mo21355e() {
        this.f855j = null;
        if (this.f856k != null) {
            this.f856k.onDismiss();
        }
    }

    /* renamed from: f */
    public boolean m21800f() {
        return this.f855j != null && this.f855j.mo21536e();
    }
}
