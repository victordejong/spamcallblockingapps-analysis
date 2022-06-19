package androidx.work.impl.utils;

import androidx.work.AbstractC3145k;
import androidx.work.C3163t;
import androidx.work.impl.C3046d;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpecDao;
/* renamed from: androidx.work.impl.utils.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/j.class */
public final class RunnableC3131j implements Runnable {

    /* renamed from: a */
    private static final String f11466a = AbstractC3145k.m39275a("StopWorkRunnable");

    /* renamed from: b */
    private final C3068j f11467b;

    /* renamed from: c */
    private final String f11468c;

    /* renamed from: d */
    private final boolean f11469d;

    public RunnableC3131j(C3068j c3068j, String str, boolean z) {
        this.f11467b = c3068j;
        this.f11468c = str;
        this.f11469d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        WorkDatabase workDatabase = this.f11467b.f11355c;
        C3046d c3046d = this.f11467b.f11358f;
        WorkSpecDao mo39474j = workDatabase.mo39474j();
        workDatabase.m39959e();
        try {
            boolean m39389g = c3046d.m39389g(this.f11468c);
            if (this.f11469d) {
                z = this.f11467b.f11358f.m39397a(this.f11468c);
            } else {
                if (!m39389g && mo39474j.getState(this.f11468c) == C3163t.EnumC3164a.RUNNING) {
                    mo39474j.setState(C3163t.EnumC3164a.ENQUEUED, this.f11468c);
                }
                z = this.f11467b.f11358f.m39393b(this.f11468c);
            }
            AbstractC3145k.m39277a();
            String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f11468c, Boolean.valueOf(z));
            workDatabase.m39957g();
        } finally {
            workDatabase.m39958f();
        }
    }
}
