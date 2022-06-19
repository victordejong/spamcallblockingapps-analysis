package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0281l {

    /* renamed from: a */
    public View f956a;

    /* renamed from: b */
    PopupWindow.OnDismissListener f957b;

    /* renamed from: c */
    private final Context f958c;

    /* renamed from: d */
    private final C0268g f959d;

    /* renamed from: e */
    private final boolean f960e;

    /* renamed from: f */
    private final int f961f;

    /* renamed from: g */
    private final int f962g;

    /* renamed from: h */
    private int f963h;

    /* renamed from: i */
    private boolean f964i;

    /* renamed from: j */
    private AbstractC0283m.AbstractC0284a f965j;

    /* renamed from: k */
    private AbstractC0280k f966k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f967l;

    public C0281l(Context context, C0268g c0268g) {
        this(context, c0268g, null, false, C0142a.C0143a.popupMenuStyle, 0);
    }

    public C0281l(Context context, C0268g c0268g, View view) {
        this(context, c0268g, view, false, C0142a.C0143a.popupMenuStyle, 0);
    }

    public C0281l(Context context, C0268g c0268g, View view, boolean z, int i) {
        this(context, c0268g, view, z, i, 0);
    }

    public C0281l(Context context, C0268g c0268g, View view, boolean z, int i, int i2) {
        this.f963h = 8388611;
        this.f967l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.l.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                C0281l.this.mo46003e();
            }
        };
        this.f958c = context;
        this.f959d = c0268g;
        this.f956a = view;
        this.f960e = z;
        this.f961f = i;
        this.f962g = i2;
    }

    /* renamed from: a */
    public final void m46058a() {
        this.f963h = 8388613;
    }

    /* renamed from: a */
    public final void m46057a(int i, int i2, boolean z, boolean z2) {
        AbstractC0280k m46054b = m46054b();
        m46054b.mo46043c(z2);
        if (z) {
            int i3 = i;
            if ((C0908e.m44195a(this.f963h, C0926v.m44097f(this.f956a)) & 7) == 5) {
                i3 = i - this.f956a.getWidth();
            }
            m46054b.mo46046b(i3);
            m46054b.mo46044c(i2);
            int i4 = (int) ((this.f958c.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m46054b.f955g = new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4);
        }
        m46054b.mo45922e_();
    }

    /* renamed from: a */
    public final void m46056a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f965j = abstractC0284a;
        AbstractC0280k abstractC0280k = this.f966k;
        if (abstractC0280k != null) {
            abstractC0280k.mo10543a(abstractC0284a);
        }
    }

    /* renamed from: a */
    public final void m46055a(boolean z) {
        this.f964i = z;
        AbstractC0280k abstractC0280k = this.f966k;
        if (abstractC0280k != null) {
            abstractC0280k.mo46045b(z);
        }
    }

    /* renamed from: b */
    public final AbstractC0280k m46054b() {
        if (this.f966k == null) {
            Display defaultDisplay = ((WindowManager) this.f958c.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
            View$OnKeyListenerC0259d view$OnKeyListenerC0259d = Math.min(point.x, point.y) >= this.f958c.getResources().getDimensionPixelSize(C0142a.C0146d.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0259d(this.f958c, this.f956a, this.f961f, this.f962g, this.f960e) : new View$OnKeyListenerC0289q(this.f958c, this.f959d, this.f956a, this.f961f, this.f962g, this.f960e);
            view$OnKeyListenerC0259d.mo46047a(this.f959d);
            view$OnKeyListenerC0259d.mo46048a(this.f967l);
            view$OnKeyListenerC0259d.mo46049a(this.f956a);
            view$OnKeyListenerC0259d.mo10543a(this.f965j);
            view$OnKeyListenerC0259d.mo46045b(this.f964i);
            view$OnKeyListenerC0259d.mo46050a(this.f963h);
            this.f966k = view$OnKeyListenerC0259d;
        }
        return this.f966k;
    }

    /* renamed from: c */
    public final boolean m46053c() {
        if (m46051f()) {
            return true;
        }
        if (this.f956a == null) {
            return false;
        }
        m46057a(0, 0, false, false);
        return true;
    }

    /* renamed from: d */
    public final void m46052d() {
        if (m46051f()) {
            this.f966k.mo45925d();
        }
    }

    /* renamed from: e */
    public void mo46003e() {
        this.f966k = null;
        PopupWindow.OnDismissListener onDismissListener = this.f957b;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public final boolean m46051f() {
        AbstractC0280k abstractC0280k = this.f966k;
        return abstractC0280k != null && abstractC0280k.mo45923e();
    }
}
