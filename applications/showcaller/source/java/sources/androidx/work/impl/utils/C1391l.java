package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.AbstractC1241f;
import androidx.work.AbstractC1404j;
import androidx.work.C1240e;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.AbstractC1273a;
import androidx.work.impl.foreground.C1274b;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.l */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l.class */
public class C1391l implements AbstractC1241f {

    /* renamed from: a */
    private static final String f5702a = AbstractC1404j.m30159f("WMFgUpdater");

    /* renamed from: b */
    private final AbstractC1399a f5703b;

    /* renamed from: c */
    final AbstractC1273a f5704c;

    /* renamed from: d */
    final AbstractC1347q f5705d;

    /* renamed from: androidx.work.impl.utils.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l$a.class */
    class RunnableC1392a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1382a f5706d;

        /* renamed from: e */
        final /* synthetic */ UUID f5707e;

        /* renamed from: f */
        final /* synthetic */ C1240e f5708f;

        /* renamed from: g */
        final /* synthetic */ Context f5709g;

        RunnableC1392a(C1382a c1382a, UUID uuid, C1240e c1240e, Context context) {
            C1391l.this = r4;
            this.f5706d = c1382a;
            this.f5707e = uuid;
            this.f5708f = c1240e;
            this.f5709g = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f5706d.isCancelled()) {
                    String uuid = this.f5707e.toString();
                    WorkInfo$State mo30270m = C1391l.this.f5705d.mo30270m(uuid);
                    if (mo30270m == null || mo30270m.isFinished()) {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    C1391l.this.f5704c.mo30432a(uuid, this.f5708f);
                    this.f5709g.startService(C1274b.m30430a(this.f5709g, uuid, this.f5708f));
                }
                this.f5706d.mo30187q(null);
            } catch (Throwable th) {
                this.f5706d.mo30186r(th);
            }
        }
    }

    public C1391l(WorkDatabase workDatabase, AbstractC1273a abstractC1273a, AbstractC1399a abstractC1399a) {
        this.f5704c = abstractC1273a;
        this.f5703b = abstractC1399a;
        this.f5705d = workDatabase.mo30527B();
    }

    @Override // androidx.work.AbstractC1241f
    /* renamed from: a */
    public AbstractFutureC8832a<Void> mo30178a(Context context, UUID uuid, C1240e c1240e) {
        C1382a m30184u = C1382a.m30184u();
        this.f5703b.mo30172b(new RunnableC1392a(m30184u, uuid, c1240e, context));
        return m30184u;
    }
}
