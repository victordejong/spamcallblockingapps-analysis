package androidx.work.impl.utils;

import androidx.work.AbstractC1293l;
import androidx.work.C1308s;
import androidx.work.impl.C1226c;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.AbstractC1194q;
/* renamed from: androidx.work.impl.utils.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public class RunnableC1280h implements Runnable {

    /* renamed from: a */
    private static final String f4298a = AbstractC1293l.m17541a("StopWorkRunnable");

    /* renamed from: b */
    private final C1249i f4299b;

    /* renamed from: c */
    private final String f4300c;

    /* renamed from: d */
    private final boolean f4301d;

    public RunnableC1280h(C1249i c1249i, String str, boolean z) {
        this.f4299b = c1249i;
        this.f4300c = str;
        this.f4301d = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m17709c;
        WorkDatabase m17652c = this.f4299b.m17652c();
        C1226c m17648f = this.f4299b.m17648f();
        AbstractC1194q mo17885o = m17652c.mo17885o();
        m17652c.m18291g();
        try {
            boolean m17705h = m17648f.m17705h(this.f4300c);
            if (this.f4301d) {
                m17709c = this.f4299b.m17648f().m17710b(this.f4300c);
            } else {
                if (!m17705h && mo17885o.mo17787f(this.f4300c) == C1308s.EnumC1309a.RUNNING) {
                    mo17885o.mo17799a(C1308s.EnumC1309a.ENQUEUED, this.f4300c);
                }
                m17709c = this.f4299b.m17648f().m17709c(this.f4300c);
            }
            AbstractC1293l.m17543a().mo17539b(f4298a, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f4300c, Boolean.valueOf(m17709c)), new Throwable[0]);
            m17652c.m18288j();
        } finally {
            m17652c.m18290h();
        }
    }
}
