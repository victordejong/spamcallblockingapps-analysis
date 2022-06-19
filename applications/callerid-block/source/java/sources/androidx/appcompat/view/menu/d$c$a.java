package androidx.appcompat.view.menu;

import android.view.MenuItem;
import androidx.appcompat.view.menu.d;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$c$a.class */
class d$c$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ d$d f309b;

    /* renamed from: c */
    final /* synthetic */ MenuItem f310c;

    /* renamed from: d */
    final /* synthetic */ g f311d;

    /* renamed from: e */
    final /* synthetic */ d.c f312e;

    d$c$a(d.c cVar, d$d d_d, MenuItem menuItem, g gVar) {
        this.f312e = cVar;
        this.f309b = d_d;
        this.f310c = menuItem;
        this.f311d = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        d$d d_d = this.f309b;
        if (d_d != null) {
            this.f312e.b.B = true;
            d_d.f314b.e(false);
            this.f312e.b.B = false;
        }
        if (!this.f310c.isEnabled() || !this.f310c.hasSubMenu()) {
            return;
        }
        this.f311d.N(this.f310c, 4);
    }
}
