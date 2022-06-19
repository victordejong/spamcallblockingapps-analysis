package pl.droidsonroids.gif;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
/* renamed from: pl.droidsonroids.gif.k */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/k.class */
public class C9709k extends AbstractRunnableC9710l {
    public C9709k(C9692c c9692c) {
        super(c9692c);
    }

    @Override // pl.droidsonroids.gif.AbstractRunnableC9710l
    /* renamed from: a */
    public void mo39a() {
        C9692c c9692c = this.f40979d;
        long m93u = c9692c.f40950j.m93u(c9692c.f40949i);
        if (m93u >= 0) {
            this.f40979d.f40946f = SystemClock.uptimeMillis() + m93u;
            if (this.f40979d.isVisible() && this.f40979d.f40945e) {
                C9692c c9692c2 = this.f40979d;
                if (!c9692c2.f40955o) {
                    c9692c2.f40944d.remove(this);
                    C9692c c9692c3 = this.f40979d;
                    c9692c3.f40959s = c9692c3.f40944d.schedule(this, m93u, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.f40979d.f40951k.isEmpty() && this.f40979d.m62b() == this.f40979d.f40950j.m102l() - 1) {
                C9692c c9692c4 = this.f40979d;
                c9692c4.f40956p.sendEmptyMessageAtTime(c9692c4.m61c(), this.f40979d.f40946f);
            }
        } else {
            C9692c c9692c5 = this.f40979d;
            c9692c5.f40946f = Long.MIN_VALUE;
            c9692c5.f40945e = false;
        }
        if (!this.f40979d.isVisible() || this.f40979d.f40956p.hasMessages(-1)) {
            return;
        }
        this.f40979d.f40956p.sendEmptyMessageAtTime(-1, 0L);
    }
}
