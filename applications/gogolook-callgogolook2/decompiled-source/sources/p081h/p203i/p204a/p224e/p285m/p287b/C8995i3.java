package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p259j.p276q.HandlerC8545a;
/* renamed from: h.i.a.e.m.b.i3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/i3.class */
public final class C8995i3 extends AbstractC9055s3 {

    /* renamed from: c */
    public Handler f20435c;

    /* renamed from: e */
    public final AbstractC9056s4 f20437e = new C9001j3(this, this.f20541a);

    /* renamed from: f */
    public final AbstractC9056s4 f20438f = new C9007k3(this, this.f20541a);

    /* renamed from: d */
    public long f20436d = mo16174e().elapsedRealtime();

    public C8995i3(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: A */
    public final void m16562A() {
        synchronized (this) {
            if (this.f20435c == null) {
                this.f20435c = new HandlerC8545a(Looper.getMainLooper());
            }
        }
    }

    @WorkerThread
    /* renamed from: B */
    public final void m16561B() {
        mo16328d();
        m16552d(mo16174e().currentTimeMillis());
    }

    @WorkerThread
    /* renamed from: C */
    public final void m16560C() {
        mo16328d();
        m16556a(false);
        m16324n().m16773a(mo16174e().elapsedRealtime());
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16559a(long j) {
        mo16328d();
        m16562A();
        mo16178c().m16389A().m16337a("Activity resumed, time", Long.valueOf(j));
        this.f20436d = j;
        if (m16349l().m16487o(m16322p().m16568B())) {
            m16555b(mo16174e().currentTimeMillis());
            return;
        }
        this.f20437e.m16221a();
        this.f20438f.m16221a();
        if (mo16174e().currentTimeMillis() - m16350k().f20212q.m16696a() > m16350k().f20215t.m16696a()) {
            m16350k().f20213r.m16744a(true);
            m16350k().f20216u.m16695a(0L);
        }
        if (m16350k().f20213r.m16745a()) {
            this.f20437e.m16220a(Math.max(0L, m16350k().f20211p.m16696a() - m16350k().f20216u.m16696a()));
        } else {
            this.f20438f.m16220a(Math.max(0L, 3600000 - m16350k().f20216u.m16696a()));
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16556a(boolean z) {
        mo16328d();
        m16226v();
        long elapsedRealtime = mo16174e().elapsedRealtime();
        m16350k().f20215t.m16695a(mo16174e().currentTimeMillis());
        long j = elapsedRealtime - this.f20436d;
        if (z || j >= 1000) {
            m16350k().f20216u.m16695a(j);
            mo16178c().m16389A().m16337a("Recording user engagement, ms", Long.valueOf(j));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j);
            C8982g2.m16594a(m16320r().m16601A(), bundle, true);
            m16323o().m16236b(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_e", bundle);
            this.f20436d = elapsedRealtime;
            this.f20438f.m16221a();
            this.f20438f.m16220a(Math.max(0L, 3600000 - m16350k().f20216u.m16696a()));
            return true;
        }
        mo16178c().m16389A().m16337a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
        return false;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16555b(long j) {
        mo16328d();
        m16562A();
        this.f20437e.m16221a();
        this.f20438f.m16221a();
        if (j - m16350k().f20212q.m16696a() > m16350k().f20215t.m16696a()) {
            m16350k().f20213r.m16744a(true);
            m16350k().f20216u.m16695a(0L);
        }
        if (m16350k().f20213r.m16745a()) {
            m16552d(j);
        } else {
            this.f20438f.m16220a(Math.max(0L, 3600000 - m16350k().f20216u.m16696a()));
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m16553c(long j) {
        mo16328d();
        m16562A();
        this.f20437e.m16221a();
        this.f20438f.m16221a();
        mo16178c().m16389A().m16337a("Activity paused, time", Long.valueOf(j));
        if (this.f20436d != 0) {
            m16350k().f20216u.m16695a(m16350k().f20216u.m16696a() + (j - this.f20436d));
        }
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16552d(long j) {
        mo16328d();
        mo16178c().m16389A().m16337a("Session started, time", Long.valueOf(mo16174e().elapsedRealtime()));
        if (m16349l().m16489n(m16322p().m16568B())) {
            m16323o().m16248a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_sid", Long.valueOf(j / 1000), j);
        } else {
            m16323o().m16248a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_sid", (Object) null, j);
        }
        m16350k().f20213r.m16744a(false);
        Bundle bundle = new Bundle();
        if (m16349l().m16489n(m16322p().m16568B())) {
            bundle.putLong("_sid", j / 1000);
        }
        m16323o().m16254a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_s", j, bundle);
        m16350k().f20215t.m16695a(j);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return false;
    }
}
