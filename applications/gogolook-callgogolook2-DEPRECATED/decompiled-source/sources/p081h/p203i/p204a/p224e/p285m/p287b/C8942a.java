package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/a.class */
public final class C8942a extends C9048r2 {

    /* renamed from: d */
    public long f20196d;

    /* renamed from: c */
    public final Map<String, Integer> f20195c = new ArrayMap();

    /* renamed from: b */
    public final Map<String, Long> f20194b = new ArrayMap();

    public C8942a(C9052s0 s0Var) {
        super(s0Var);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16773a(long j) {
        C8976f2 A = m16320r().m16601A();
        for (String str : this.f20194b.keySet()) {
            m16768a(str, j - this.f20194b.get(str).longValue(), A);
        }
        if (!this.f20194b.isEmpty()) {
            m16772a(j - this.f20196d, A);
        }
        m16767b(j);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16772a(long j, C8976f2 f2Var) {
        if (f2Var == null) {
            mo16178c().m16389A().m16338a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            mo16178c().m16389A().m16337a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C8982g2.m16594a(f2Var, bundle, true);
            m16323o().m16236b("am", "_xa", bundle);
        }
    }

    /* renamed from: a */
    public final void m16769a(String str, long j) {
        if (str == null || str.length() == 0) {
            mo16178c().m16375s().m16338a("Ad unit id must be a non-empty string");
        } else {
            mo16214a().m16364a(new RunnableC9092z(this, str, j));
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16768a(String str, long j, C8976f2 f2Var) {
        if (f2Var == null) {
            mo16178c().m16389A().m16338a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            mo16178c().m16389A().m16337a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C8982g2.m16594a(f2Var, bundle, true);
            m16323o().m16236b("am", "_xu", bundle);
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16767b(long j) {
        for (String str : this.f20194b.keySet()) {
            this.f20194b.put(str, Long.valueOf(j));
        }
        if (!this.f20194b.isEmpty()) {
            this.f20196d = j;
        }
    }

    /* renamed from: b */
    public final void m16765b(String str, long j) {
        if (str == null || str.length() == 0) {
            mo16178c().m16375s().m16338a("Ad unit id must be a non-empty string");
        } else {
            mo16214a().m16364a(new RunnableC9093z0(this, str, j));
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m16764c(String str, long j) {
        mo16327f();
        mo16328d();
        C7021t.m21283b(str);
        if (this.f20195c.isEmpty()) {
            this.f20196d = j;
        }
        Integer num = this.f20195c.get(str);
        if (num != null) {
            this.f20195c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f20195c.size() >= 100) {
            mo16178c().m16372v().m16338a("Too many ads visible");
        } else {
            this.f20195c.put(str, 1);
            this.f20194b.put(str, Long.valueOf(j));
        }
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16763d(String str, long j) {
        mo16327f();
        mo16328d();
        C7021t.m21283b(str);
        Integer num = this.f20195c.get(str);
        if (num != null) {
            C8976f2 A = m16320r().m16601A();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f20195c.remove(str);
                Long l = this.f20194b.get(str);
                if (l == null) {
                    mo16178c().m16375s().m16338a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    this.f20194b.remove(str);
                    m16768a(str, j - longValue, A);
                }
                if (this.f20195c.isEmpty()) {
                    long j2 = this.f20196d;
                    if (j2 == 0) {
                        mo16178c().m16375s().m16338a("First ad exposure time was never set");
                        return;
                    }
                    m16772a(j - j2, A);
                    this.f20196d = 0L;
                    return;
                }
                return;
            }
            this.f20195c.put(str, Integer.valueOf(intValue));
            return;
        }
        mo16178c().m16375s().m16337a("Call to endAdUnitExposure for unknown ad unit id", str);
    }
}
