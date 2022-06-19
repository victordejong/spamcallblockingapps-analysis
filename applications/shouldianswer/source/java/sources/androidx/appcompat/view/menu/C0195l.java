package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0195l {

    /* renamed from: a */
    private final Context f767a;

    /* renamed from: b */
    private final C0182g f768b;

    /* renamed from: c */
    private final boolean f769c;

    /* renamed from: d */
    private final int f770d;

    /* renamed from: e */
    private final int f771e;

    /* renamed from: f */
    private View f772f;

    /* renamed from: g */
    private int f773g;

    /* renamed from: h */
    private boolean f774h;

    /* renamed from: i */
    private AbstractC0197m.AbstractC0198a f775i;

    /* renamed from: j */
    private AbstractC0194k f776j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f777k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f778l;

    public C0195l(Context context, C0182g c0182g, View view, boolean z, int i) {
        this(context, c0182g, view, z, i, 0);
    }

    public C0195l(Context context, C0182g c0182g, View view, boolean z, int i, int i2) {
        this.f773g = 8388611;
        this.f778l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.l.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                C0195l.this.mo7455e();
            }
        };
        this.f767a = context;
        this.f768b = c0182g;
        this.f772f = view;
        this.f769c = z;
        this.f770d = i;
        this.f771e = i2;
    }

    /* renamed from: a */
    private void m7527a(int i, int i2, boolean z, boolean z2) {
        AbstractC0194k m7522b = m7522b();
        m7522b.mo7511b(z2);
        if (z) {
            int i3 = i;
            if ((C0533c.m6344a(this.f773g, C0552u.m6245f(this.f772f)) & 7) == 5) {
                i3 = i - this.f772f.getWidth();
            }
            m7522b.mo7512b(i3);
            m7522b.mo7510c(i2);
            int i4 = (int) ((this.f767a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m7522b.m7536a(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        m7522b.mo7250j_();
    }

    /* renamed from: g */
    private AbstractC0194k m7518g() {
        Display defaultDisplay = ((WindowManager) this.f767a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        View$OnKeyListenerC0173d view$OnKeyListenerC0173d = Math.min(point.x, point.y) >= this.f767a.getResources().getDimensionPixelSize(C0051a.C0055d.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0173d(this.f767a, this.f772f, this.f770d, this.f771e, this.f769c) : new View$OnKeyListenerC0203q(this.f767a, this.f768b, this.f772f, this.f770d, this.f771e, this.f769c);
        view$OnKeyListenerC0173d.mo7514a(this.f768b);
        view$OnKeyListenerC0173d.mo7515a(this.f778l);
        view$OnKeyListenerC0173d.mo7516a(this.f772f);
        view$OnKeyListenerC0173d.setCallback(this.f775i);
        view$OnKeyListenerC0173d.mo7513a(this.f774h);
        view$OnKeyListenerC0173d.mo7517a(this.f773g);
        return view$OnKeyListenerC0173d;
    }

    /* renamed from: a */
    public void m7530a() {
        if (m7521c()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: a */
    public void m7529a(int i) {
        this.f773g = i;
    }

    /* renamed from: a */
    public void m7526a(View view) {
        this.f772f = view;
    }

    /* renamed from: a */
    public void m7525a(PopupWindow.OnDismissListener onDismissListener) {
        this.f777k = onDismissListener;
    }

    /* renamed from: a */
    public void m7524a(AbstractC0197m.AbstractC0198a abstractC0198a) {
        this.f775i = abstractC0198a;
        AbstractC0194k abstractC0194k = this.f776j;
        if (abstractC0194k != null) {
            abstractC0194k.setCallback(abstractC0198a);
        }
    }

    /* renamed from: a */
    public void m7523a(boolean z) {
        this.f774h = z;
        AbstractC0194k abstractC0194k = this.f776j;
        if (abstractC0194k != null) {
            abstractC0194k.mo7513a(z);
        }
    }

    /* renamed from: a */
    public boolean m7528a(int i, int i2) {
        if (m7519f()) {
            return true;
        }
        if (this.f772f == null) {
            return false;
        }
        m7527a(i, i2, true, true);
        return true;
    }

    /* renamed from: b */
    public AbstractC0194k m7522b() {
        if (this.f776j == null) {
            this.f776j = m7518g();
        }
        return this.f776j;
    }

    /* renamed from: c */
    public boolean m7521c() {
        if (m7519f()) {
            return true;
        }
        if (this.f772f == null) {
            return false;
        }
        m7527a(0, 0, false, false);
        return true;
    }

    /* renamed from: d */
    public void m7520d() {
        if (m7519f()) {
            this.f776j.mo7270b();
        }
    }

    /* renamed from: e */
    public void mo7455e() {
        this.f776j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f777k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public boolean m7519f() {
        AbstractC0194k abstractC0194k = this.f776j;
        return abstractC0194k != null && abstractC0194k.mo7266c();
    }
}
