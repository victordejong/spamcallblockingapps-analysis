package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.AbstractC1404j;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.background.systemalarm.C1256e;
import androidx.work.impl.p015m.AbstractC1299c;
import androidx.work.impl.p015m.C1300d;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.C1387j;
import androidx.work.impl.utils.C1395n;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d.class */
public class C1255d implements AbstractC1299c, AbstractC1250b, C1395n.AbstractC1397b {

    /* renamed from: d */
    private static final String f5335d = AbstractC1404j.m30159f("DelayMetCommandHandler");

    /* renamed from: e */
    private final Context f5336e;

    /* renamed from: f */
    private final int f5337f;

    /* renamed from: g */
    private final String f5338g;

    /* renamed from: h */
    private final C1256e f5339h;

    /* renamed from: i */
    private final C1300d f5340i;

    /* renamed from: l */
    private PowerManager.WakeLock f5343l;

    /* renamed from: m */
    private boolean f5344m = false;

    /* renamed from: k */
    private int f5342k = 0;

    /* renamed from: j */
    private final Object f5341j = new Object();

    public C1255d(Context context, int i, String str, C1256e c1256e) {
        this.f5336e = context;
        this.f5337f = i;
        this.f5339h = c1256e;
        this.f5338g = str;
        this.f5340i = new C1300d(context, c1256e.m30471f(), this);
    }

    /* renamed from: c */
    private void m30478c() {
        synchronized (this.f5341j) {
            this.f5340i.m30345e();
            this.f5339h.m30469h().m30175c(this.f5338g);
            PowerManager.WakeLock wakeLock = this.f5343l;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC1404j.m30161c().mo30158a(f5335d, String.format("Releasing wakelock %s for WorkSpec %s", this.f5343l, this.f5338g), new Throwable[0]);
                this.f5343l.release();
            }
        }
    }

    /* renamed from: g */
    private void m30476g() {
        synchronized (this.f5341j) {
            if (this.f5342k < 2) {
                this.f5342k = 2;
                AbstractC1404j m30161c = AbstractC1404j.m30161c();
                String str = f5335d;
                m30161c.mo30158a(str, String.format("Stopping work for WorkSpec %s", this.f5338g), new Throwable[0]);
                Intent m30489g = C1253b.m30489g(this.f5336e, this.f5338g);
                C1256e c1256e = this.f5339h;
                c1256e.m30466k(new C1256e.RunnableC1258b(c1256e, m30489g, this.f5337f));
                if (this.f5339h.m30472e().m30445g(this.f5338g)) {
                    AbstractC1404j.m30161c().mo30158a(str, String.format("WorkSpec %s needs to be rescheduled", this.f5338g), new Throwable[0]);
                    Intent m30490f = C1253b.m30490f(this.f5336e, this.f5338g);
                    C1256e c1256e2 = this.f5339h;
                    c1256e2.m30466k(new C1256e.RunnableC1258b(c1256e2, m30490f, this.f5337f));
                } else {
                    AbstractC1404j.m30161c().mo30158a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f5338g), new Throwable[0]);
                }
            } else {
                AbstractC1404j.m30161c().mo30158a(f5335d, String.format("Already stopped work for %s", this.f5338g), new Throwable[0]);
            }
        }
    }

    @Override // androidx.work.impl.utils.C1395n.AbstractC1397b
    /* renamed from: a */
    public void mo30174a(String str) {
        AbstractC1404j.m30161c().mo30158a(f5335d, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        m30476g();
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: b */
    public void mo30168b(List<String> list) {
        m30476g();
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        AbstractC1404j.m30161c().mo30158a(f5335d, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        m30478c();
        if (z) {
            Intent m30490f = C1253b.m30490f(this.f5336e, this.f5338g);
            C1256e c1256e = this.f5339h;
            c1256e.m30466k(new C1256e.RunnableC1258b(c1256e, m30490f, this.f5337f));
        }
        if (this.f5344m) {
            Intent m30494a = C1253b.m30494a(this.f5336e);
            C1256e c1256e2 = this.f5339h;
            c1256e2.m30466k(new C1256e.RunnableC1258b(c1256e2, m30494a, this.f5337f));
        }
    }

    /* renamed from: e */
    public void m30477e() {
        this.f5343l = C1387j.m30180b(this.f5336e, String.format("%s (%s)", this.f5338g, Integer.valueOf(this.f5337f)));
        AbstractC1404j m30161c = AbstractC1404j.m30161c();
        String str = f5335d;
        m30161c.mo30158a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f5343l, this.f5338g), new Throwable[0]);
        this.f5343l.acquire();
        C1344p mo30269n = this.f5339h.m30470g().m30388o().mo30527B().mo30269n(this.f5338g);
        if (mo30269n == null) {
            m30476g();
            return;
        }
        boolean m30285b = mo30269n.m30285b();
        this.f5344m = m30285b;
        if (m30285b) {
            this.f5340i.m30346d(Collections.singletonList(mo30269n));
            return;
        }
        AbstractC1404j.m30161c().mo30158a(str, String.format("No constraints for %s", this.f5338g), new Throwable[0]);
        mo30164f(Collections.singletonList(this.f5338g));
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: f */
    public void mo30164f(List<String> list) {
        if (!list.contains(this.f5338g)) {
            return;
        }
        synchronized (this.f5341j) {
            if (this.f5342k == 0) {
                this.f5342k = 1;
                AbstractC1404j.m30161c().mo30158a(f5335d, String.format("onAllConstraintsMet for %s", this.f5338g), new Throwable[0]);
                if (this.f5339h.m30472e().m30442j(this.f5338g)) {
                    this.f5339h.m30469h().m30176b(this.f5338g, 600000L, this);
                } else {
                    m30478c();
                }
            } else {
                AbstractC1404j.m30161c().mo30158a(f5335d, String.format("Already started work for %s", this.f5338g), new Throwable[0]);
            }
        }
    }
}
