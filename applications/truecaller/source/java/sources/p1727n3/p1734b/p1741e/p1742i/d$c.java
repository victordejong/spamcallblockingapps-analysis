package p1727n3.p1734b.p1741e.p1742i;

import android.os.SystemClock;
import android.view.MenuItem;
import p1727n3.p1734b.p1743f.AbstractC25500c0;
/* renamed from: n3.b.e.i.d$c */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/d$c.class */
public class d$c implements AbstractC25500c0 {

    /* renamed from: a */
    public final /* synthetic */ d f71192a;

    /* renamed from: n3.b.e.i.d$c$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/d$c$a.class */
    public class RunnableC25465a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ d$d f71193a;

        /* renamed from: b */
        public final /* synthetic */ MenuItem f71194b;

        /* renamed from: c */
        public final /* synthetic */ C25469g f71195c;

        public RunnableC25465a(d$d d_d, MenuItem menuItem, C25469g c25469g) {
            d$c.this = r4;
            this.f71193a = d_d;
            this.f71194b = menuItem;
            this.f71195c = c25469g;
        }

        @Override // java.lang.Runnable
        public void run() {
            d$d d_d = this.f71193a;
            if (d_d != null) {
                d$c.this.f71192a.A = true;
                d_d.f71198b.m3481c(false);
                d$c.this.f71192a.A = false;
            }
            if (!this.f71194b.isEnabled() || !this.f71194b.hasSubMenu()) {
                return;
            }
            this.f71195c.m3466r(this.f71194b, 4);
        }
    }

    public d$c(d dVar) {
        this.f71192a = dVar;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25500c0
    /* renamed from: a */
    public void mo3384a(C25469g c25469g, MenuItem menuItem) {
        d$d d_d = null;
        this.f71192a.g.removeCallbacksAndMessages(null);
        int size = this.f71192a.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (c25469g == ((d$d) this.f71192a.i.get(i)).f71198b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.f71192a.i.size()) {
            d_d = (d$d) this.f71192a.i.get(i2);
        }
        this.f71192a.g.postAtTime(new RunnableC25465a(d_d, menuItem, c25469g), c25469g, SystemClock.uptimeMillis() + 200);
    }

    @Override // p1727n3.p1734b.p1743f.AbstractC25500c0
    /* renamed from: g */
    public void mo3383g(C25469g c25469g, MenuItem menuItem) {
        this.f71192a.g.removeCallbacksAndMessages(c25469g);
    }
}
