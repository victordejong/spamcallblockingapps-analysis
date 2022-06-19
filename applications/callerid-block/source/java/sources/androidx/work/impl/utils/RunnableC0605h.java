package androidx.work.impl.utils;

import androidx.work.AbstractC0555f;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.h;
import androidx.work.impl.p009l.AbstractC0591k;
/* renamed from: androidx.work.impl.utils.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public class RunnableC0605h implements Runnable {

    /* renamed from: d */
    private static final String f3149d = AbstractC0555f.m11738f("StopWorkRunnable");

    /* renamed from: b */
    private h f3150b;

    /* renamed from: c */
    private String f3151c;

    public RunnableC0605h(h hVar, String str) {
        this.f3150b = hVar;
        this.f3151c = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        WorkDatabase n = this.f3150b.n();
        AbstractC0591k y = n.y();
        n.m12319c();
        try {
            if (y.m11658g(this.f3151c) == WorkInfo$State.RUNNING) {
                y.m11664a(WorkInfo$State.ENQUEUED, this.f3151c);
            }
            AbstractC0555f.m11741c().m11743a(f3149d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f3151c, Boolean.valueOf(this.f3150b.l().i(this.f3151c))), new Throwable[0]);
            n.m12305q();
        } finally {
            n.m12315g();
        }
    }
}
