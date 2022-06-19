package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1741e.C25457f;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25481l;
/* renamed from: n3.b.f.g0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/g0.class */
public class C25508g0 {

    /* renamed from: a */
    public final Context f71379a;

    /* renamed from: b */
    public final C25469g f71380b;

    /* renamed from: c */
    public final View f71381c;

    /* renamed from: d */
    public final C25481l f71382d;

    /* renamed from: e */
    public AbstractC25510b f71383e;

    /* renamed from: f */
    public AbstractC25509a f71384f;

    /* renamed from: n3.b.f.g0$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/g0$a.class */
    public interface AbstractC25509a {
        /* renamed from: a */
        void mo3361a(C25508g0 c25508g0);
    }

    /* renamed from: n3.b.f.g0$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/g0$b.class */
    public interface AbstractC25510b {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public C25508g0(Context context, View view, int i) {
        int i2 = C0032R.attr.popupMenuStyle;
        this.f71379a = context;
        this.f71381c = view;
        C25469g c25469g = new C25469g(context);
        this.f71380b = c25469g;
        c25469g.m3460x(new C25504e0(this));
        C25481l c25481l = new C25481l(context, c25469g, view, false, i2, 0);
        this.f71382d = c25481l;
        c25481l.f71290g = i;
        c25481l.f71294k = new C25506f0(this);
    }

    /* renamed from: a */
    public void m3362a(int i) {
        new C25457f(this.f71379a).inflate(i, this.f71380b);
    }
}
