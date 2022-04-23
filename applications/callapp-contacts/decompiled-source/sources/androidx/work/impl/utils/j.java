package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.k;
import androidx.work.t;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/j.class */
public final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6193a = k.a("StopWorkRunnable");

    /* renamed from: b  reason: collision with root package name */
    private final androidx.work.impl.j f6194b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6195c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f6196d;

    public j(androidx.work.impl.j jVar, String str, boolean z) {
        this.f6194b = jVar;
        this.f6195c = str;
        this.f6196d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        WorkDatabase workDatabase = this.f6194b.f6118c;
        d dVar = this.f6194b.f;
        WorkSpecDao j = workDatabase.j();
        workDatabase.e();
        try {
            boolean g = dVar.g(this.f6195c);
            if (this.f6196d) {
                z = this.f6194b.f.a(this.f6195c);
            } else {
                if (!g && j.getState(this.f6195c) == t.a.RUNNING) {
                    j.setState(t.a.ENQUEUED, this.f6195c);
                }
                z = this.f6194b.f.b(this.f6195c);
            }
            k.a();
            String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f6195c, Boolean.valueOf(z));
            workDatabase.g();
        } finally {
            workDatabase.f();
        }
    }
}
