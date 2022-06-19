package androidx.work.impl.utils;

import androidx.work.AbstractC1404j;
import androidx.work.WorkInfo$State;
import androidx.work.impl.C1266d;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.AbstractC1347q;
/* renamed from: androidx.work.impl.utils.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public class RunnableC1386i implements Runnable {

    /* renamed from: d */
    private static final String f5685d = AbstractC1404j.m30159f("StopWorkRunnable");

    /* renamed from: e */
    private final C1289j f5686e;

    /* renamed from: f */
    private final String f5687f;

    /* renamed from: g */
    private final boolean f5688g;

    public RunnableC1386i(C1289j c1289j, String str, boolean z) {
        this.f5686e = c1289j;
        this.f5687f = str;
        this.f5688g = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        WorkDatabase m30388o = this.f5686e.m30388o();
        C1266d m30390m = this.f5686e.m30390m();
        AbstractC1347q mo30527B = m30388o.mo30527B();
        m30388o.m31293c();
        try {
            boolean m30444h = m30390m.m30444h(this.f5687f);
            if (this.f5688g) {
                z = this.f5686e.m30390m().m30438n(this.f5687f);
            } else {
                if (!m30444h && mo30527B.mo30270m(this.f5687f) == WorkInfo$State.RUNNING) {
                    mo30527B.mo30281b(WorkInfo$State.ENQUEUED, this.f5687f);
                }
                z = this.f5686e.m30390m().m30437o(this.f5687f);
            }
            AbstractC1404j.m30161c().mo30158a(f5685d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f5687f, Boolean.valueOf(z)), new Throwable[0]);
            m30388o.m31280r();
        } finally {
            m30388o.m31291g();
        }
    }
}
