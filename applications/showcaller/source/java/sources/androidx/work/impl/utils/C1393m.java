package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1414m;
import androidx.work.C1238d;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.C1338m;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.m */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m.class */
public class C1393m implements AbstractC1414m {

    /* renamed from: a */
    static final String f5711a = AbstractC1404j.m30159f("WorkProgressUpdater");

    /* renamed from: b */
    final WorkDatabase f5712b;

    /* renamed from: c */
    final AbstractC1399a f5713c;

    /* renamed from: androidx.work.impl.utils.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m$a.class */
    class RunnableC1394a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ UUID f5714d;

        /* renamed from: e */
        final /* synthetic */ C1238d f5715e;

        /* renamed from: f */
        final /* synthetic */ C1382a f5716f;

        RunnableC1394a(UUID uuid, C1238d c1238d, C1382a c1382a) {
            C1393m.this = r4;
            this.f5714d = uuid;
            this.f5715e = c1238d;
            this.f5716f = c1382a;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1344p mo30269n;
            String uuid = this.f5714d.toString();
            AbstractC1404j m30161c = AbstractC1404j.m30161c();
            String str = C1393m.f5711a;
            m30161c.mo30158a(str, String.format("Updating progress for %s (%s)", this.f5714d, this.f5715e), new Throwable[0]);
            C1393m.this.f5712b.m31293c();
            try {
                mo30269n = C1393m.this.f5712b.mo30527B().mo30269n(uuid);
            } finally {
                try {
                    return;
                } finally {
                }
            }
            if (mo30269n != null) {
                if (mo30269n.f5579d == WorkInfo$State.RUNNING) {
                    C1393m.this.f5712b.mo30528A().mo30288c(new C1338m(uuid, this.f5715e));
                } else {
                    AbstractC1404j.m30161c().mo30154h(str, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid), new Throwable[0]);
                }
                this.f5716f.mo30187q(null);
                C1393m.this.f5712b.m31280r();
                return;
            }
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
    }

    public C1393m(WorkDatabase workDatabase, AbstractC1399a abstractC1399a) {
        this.f5712b = workDatabase;
        this.f5713c = abstractC1399a;
    }

    @Override // androidx.work.AbstractC1414m
    /* renamed from: a */
    public AbstractFutureC8832a<Void> mo30149a(Context context, UUID uuid, C1238d c1238d) {
        C1382a m30184u = C1382a.m30184u();
        this.f5713c.mo30172b(new RunnableC1394a(uuid, c1238d, m30184u));
        return m30184u;
    }
}
