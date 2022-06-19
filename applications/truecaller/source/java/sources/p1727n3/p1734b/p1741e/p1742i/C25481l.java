package p1727n3.p1734b.p1741e.p1742i;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.C0032R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.e.i.l */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/l.class */
public class C25481l {

    /* renamed from: a */
    public final Context f71284a;

    /* renamed from: b */
    public final C25469g f71285b;

    /* renamed from: c */
    public final boolean f71286c;

    /* renamed from: d */
    public final int f71287d;

    /* renamed from: e */
    public final int f71288e;

    /* renamed from: f */
    public View f71289f;

    /* renamed from: h */
    public boolean f71291h;

    /* renamed from: i */
    public AbstractC25483m.AbstractC25484a f71292i;

    /* renamed from: j */
    public AbstractC25480k f71293j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f71294k;

    /* renamed from: g */
    public int f71290g = 8388611;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f71295l = new C25482a();

    /* renamed from: n3.b.e.i.l$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/l$a.class */
    public class C25482a implements PopupWindow.OnDismissListener {
        public C25482a() {
            C25481l.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C25481l.this.mo3429c();
        }
    }

    public C25481l(Context context, C25469g c25469g, View view, boolean z, int i, int i2) {
        this.f71284a = context;
        this.f71285b = c25469g;
        this.f71289f = view;
        this.f71286c = z;
        this.f71287d = i;
        this.f71288e = i2;
    }

    /* renamed from: a */
    public AbstractC25480k m3431a() {
        if (this.f71293j == null) {
            Display defaultDisplay = ((WindowManager) this.f71284a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            AbstractC25480k dVar = Math.min(point.x, point.y) >= this.f71284a.getResources().getDimensionPixelSize(C0032R.dimen.abc_cascading_menus_min_smallest_width) ? new d(this.f71284a, this.f71289f, this.f71287d, this.f71288e, this.f71286c) : new q(this.f71284a, this.f71285b, this.f71289f, this.f71287d, this.f71288e, this.f71286c);
            dVar.m3442l(this.f71285b);
            dVar.m3435s(this.f71295l);
            dVar.m3439o(this.f71289f);
            dVar.mo3416i(this.f71292i);
            dVar.m3438p(this.f71291h);
            dVar.m3437q(this.f71290g);
            this.f71293j = dVar;
        }
        return this.f71293j;
    }

    /* renamed from: b */
    public boolean m3430b() {
        AbstractC25480k abstractC25480k = this.f71293j;
        return abstractC25480k != null && abstractC25480k.isShowing();
    }

    /* renamed from: c */
    public void mo3429c() {
        this.f71293j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f71294k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: d */
    public void m3428d(boolean z) {
        this.f71291h = z;
        AbstractC25480k abstractC25480k = this.f71293j;
        if (abstractC25480k != null) {
            abstractC25480k.m3438p(z);
        }
    }

    /* renamed from: e */
    public void m3427e(AbstractC25483m.AbstractC25484a abstractC25484a) {
        this.f71292i = abstractC25484a;
        AbstractC25480k abstractC25480k = this.f71293j;
        if (abstractC25480k != null) {
            abstractC25480k.mo3416i(abstractC25484a);
        }
    }

    /* renamed from: f */
    public void m3426f() {
        if (m3424h()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: g */
    public final void m3425g(int i, int i2, boolean z, boolean z2) {
        AbstractC25480k m3431a = m3431a();
        m3431a.m3434t(z2);
        if (z) {
            int i3 = this.f71290g;
            View view = this.f71289f;
            AtomicInteger atomicInteger = C26614s.f74505a;
            int i4 = i;
            if ((Gravity.getAbsoluteGravity(i3, view.getLayoutDirection()) & 7) == 5) {
                i4 = i - this.f71289f.getWidth();
            }
            m3431a.m3436r(i4);
            m3431a.m3433u(i2);
            int i5 = (int) ((this.f71284a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m3431a.f71283a = new Rect(i4 - i5, i2 - i5, i4 + i5, i2 + i5);
        }
        m3431a.show();
    }

    /* renamed from: h */
    public boolean m3424h() {
        if (m3430b()) {
            return true;
        }
        if (this.f71289f == null) {
            return false;
        }
        m3425g(0, 0, false, false);
        return true;
    }
}
