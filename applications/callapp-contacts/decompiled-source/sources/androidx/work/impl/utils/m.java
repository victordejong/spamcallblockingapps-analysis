package androidx.work.impl.utils;

import androidx.work.d;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.a.c;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
import androidx.work.p;
import androidx.work.t;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m.class */
public final class m implements p {

    /* renamed from: a  reason: collision with root package name */
    static final String f6206a = k.a("WorkProgressUpdater");

    /* renamed from: b  reason: collision with root package name */
    final WorkDatabase f6207b;

    /* renamed from: c  reason: collision with root package name */
    final a f6208c;

    public m(WorkDatabase workDatabase, a aVar) {
        this.f6207b = workDatabase;
        this.f6208c = aVar;
    }

    @Override // androidx.work.p
    public final com.google.common.util.concurrent.a<Void> a(final UUID uuid, final d dVar) {
        final c a2 = c.a();
        this.f6208c.a(new Runnable() { // from class: androidx.work.impl.utils.m.1
            @Override // java.lang.Runnable
            public final void run() {
                WorkSpec workSpec;
                String uuid2 = uuid.toString();
                k.a();
                String str = m.f6206a;
                String.format("Updating progress for %s (%s)", uuid, dVar);
                m.this.f6207b.e();
                try {
                    workSpec = m.this.f6207b.j().getWorkSpec(uuid2);
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                if (workSpec != null) {
                    if (workSpec.state == t.a.RUNNING) {
                        m.this.f6207b.o().insert(new WorkProgress(uuid2, dVar));
                    } else {
                        k.a().a(m.f6206a, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid2));
                    }
                    a2.a((c) null);
                    m.this.f6207b.g();
                    return;
                }
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
        });
        return a2;
    }
}
