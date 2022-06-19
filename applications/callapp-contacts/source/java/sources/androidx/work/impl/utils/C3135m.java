package androidx.work.impl.utils;

import androidx.work.AbstractC3145k;
import androidx.work.AbstractC3158p;
import androidx.work.C2992d;
import androidx.work.C3163t;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.p089a.C3117c;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.m */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m.class */
public final class C3135m implements AbstractC3158p {

    /* renamed from: a */
    static final String f11480a = AbstractC3145k.m39275a("WorkProgressUpdater");

    /* renamed from: b */
    final WorkDatabase f11481b;

    /* renamed from: c */
    final AbstractC3119a f11482c;

    public C3135m(WorkDatabase workDatabase, AbstractC3119a abstractC3119a) {
        this.f11481b = workDatabase;
        this.f11482c = abstractC3119a;
    }

    @Override // androidx.work.AbstractC3158p
    /* renamed from: a */
    public final AbstractFutureC15579a<Void> mo39271a(final UUID uuid, final C2992d c2992d) {
        final C3117c m39313a = C3117c.m39313a();
        this.f11482c.mo39302a(new Runnable() { // from class: androidx.work.impl.utils.m.1
            @Override // java.lang.Runnable
            public final void run() {
                WorkSpec workSpec;
                String uuid2 = uuid.toString();
                AbstractC3145k.m39277a();
                String str = C3135m.f11480a;
                String.format("Updating progress for %s (%s)", uuid, c2992d);
                C3135m.this.f11481b.m39959e();
                try {
                    workSpec = C3135m.this.f11481b.mo39474j().getWorkSpec(uuid2);
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                if (workSpec != null) {
                    if (workSpec.state == C3163t.EnumC3164a.RUNNING) {
                        C3135m.this.f11481b.mo39469o().insert(new WorkProgress(uuid2, c2992d));
                    } else {
                        AbstractC3145k.m39277a().mo39274a(C3135m.f11480a, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid2));
                    }
                    m39313a.mo39311a((C3117c) null);
                    C3135m.this.f11481b.m39957g();
                    return;
                }
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
        });
        return m39313a;
    }
}
