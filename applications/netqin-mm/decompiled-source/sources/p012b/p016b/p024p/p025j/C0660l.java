package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import p012b.p016b.C0577d;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.p.j.l */
/* loaded from: classes-dex2jar.jar:b/b/p/j/l.class */
public class C0660l {

    /* renamed from: a */
    public final Context f3302a;

    /* renamed from: b */
    public final C0647g f3303b;

    /* renamed from: c */
    public final boolean f3304c;

    /* renamed from: d */
    public final int f3305d;

    /* renamed from: e */
    public final int f3306e;

    /* renamed from: f */
    public View f3307f;

    /* renamed from: g */
    public int f3308g;

    /* renamed from: h */
    public boolean f3309h;

    /* renamed from: i */
    public AbstractC0662m.AbstractC0663a f3310i;

    /* renamed from: j */
    public AbstractC0659k f3311j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f3312k;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f3313l;

    /* renamed from: b.b.p.j.l$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/l$a.class */
    public class C0661a implements PopupWindow.OnDismissListener {
        public C0661a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0660l.this.mo36528e();
        }
    }

    public C0660l(Context context, C0647g gVar, View view, boolean z, int i) {
        this(context, gVar, view, z, i, 0);
    }

    public C0660l(Context context, C0647g gVar, View view, boolean z, int i, int i2) {
        this.f3308g = 8388611;
        this.f3313l = new C0661a();
        this.f3302a = context;
        this.f3303b = gVar;
        this.f3307f = view;
        this.f3304c = z;
        this.f3305d = i;
        this.f3306e = i2;
    }

    /* renamed from: a */
    public final AbstractC0659k m36539a() {
        Display defaultDisplay = ((WindowManager) this.f3302a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        AbstractC0659k dVar = Math.min(point.x, point.y) >= this.f3302a.getResources().getDimensionPixelSize(C0577d.abc_cascading_menus_min_smallest_width) ? new View$OnKeyListenerC0638d(this.f3302a, this.f3307f, this.f3305d, this.f3306e, this.f3304c) : new View$OnKeyListenerC0668q(this.f3302a, this.f3303b, this.f3307f, this.f3305d, this.f3306e, this.f3304c);
        dVar.mo36513a(this.f3303b);
        dVar.mo36514a(this.f3313l);
        dVar.mo36515a(this.f3307f);
        dVar.mo36511a(this.f3310i);
        dVar.mo36506b(this.f3309h);
        dVar.mo36516a(this.f3308g);
        return dVar;
    }

    /* renamed from: a */
    public void m36538a(int i) {
        this.f3308g = i;
    }

    /* renamed from: a */
    public final void m36536a(int i, int i2, boolean z, boolean z2) {
        AbstractC0659k c = m36530c();
        c.mo36504c(z2);
        if (z) {
            int i3 = i;
            if ((C0967d.m35388a(this.f3308g, C1002u.m35208n(this.f3307f)) & 7) == 5) {
                i3 = i - this.f3307f.getWidth();
            }
            c.mo36507b(i3);
            c.mo36505c(i2);
            int i4 = (int) ((this.f3302a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c.m36545a(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        c.show();
    }

    /* renamed from: a */
    public void m36535a(View view) {
        this.f3307f = view;
    }

    /* renamed from: a */
    public void m36534a(PopupWindow.OnDismissListener onDismissListener) {
        this.f3312k = onDismissListener;
    }

    /* renamed from: a */
    public void m36533a(AbstractC0662m.AbstractC0663a aVar) {
        this.f3310i = aVar;
        AbstractC0659k kVar = this.f3311j;
        if (kVar != null) {
            kVar.mo36511a(aVar);
        }
    }

    /* renamed from: a */
    public void m36532a(boolean z) {
        this.f3309h = z;
        AbstractC0659k kVar = this.f3311j;
        if (kVar != null) {
            kVar.mo36506b(z);
        }
    }

    /* renamed from: a */
    public boolean m36537a(int i, int i2) {
        if (m36529d()) {
            return true;
        }
        if (this.f3307f == null) {
            return false;
        }
        m36536a(i, i2, true, true);
        return true;
    }

    /* renamed from: b */
    public void m36531b() {
        if (m36529d()) {
            this.f3311j.dismiss();
        }
    }

    /* renamed from: c */
    public AbstractC0659k m36530c() {
        if (this.f3311j == null) {
            this.f3311j = m36539a();
        }
        return this.f3311j;
    }

    /* renamed from: d */
    public boolean m36529d() {
        AbstractC0659k kVar = this.f3311j;
        return kVar != null && kVar.mo36517a();
    }

    /* renamed from: e */
    public void mo36528e() {
        this.f3311j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f3312k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m36527f() {
        if (!m36526g()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* renamed from: g */
    public boolean m36526g() {
        if (m36529d()) {
            return true;
        }
        if (this.f3307f == null) {
            return false;
        }
        m36536a(0, 0, false, false);
        return true;
    }
}
