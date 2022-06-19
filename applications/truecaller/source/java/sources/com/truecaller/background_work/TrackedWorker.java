package com.truecaller.background_work;

import android.content.Context;
import android.os.SystemClock;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import e.m.d.y.n;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.C21764j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H'¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0007J\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0004¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/truecaller/background_work/TrackedWorker;", "Landroidx/work/Worker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "doWork", "", "message", "Ls1/s;", "p", "(Ljava/lang/String;)V", "Le/a/u3/g;", "o", "()Le/a/u3/g;", "featuresRegistry", "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "background-work_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/TrackedWorker.class */
public abstract class TrackedWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackedWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC0414a doWork() {
        String simpleName = getClass().getSimpleName();
        l.d(simpleName, "javaClass.simpleName");
        if (!mo34357q()) {
            m35890p("Worker " + simpleName + " was not run");
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ListenableWorker.AbstractC0414a mo34356r = mo34356r();
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        StringBuilder m8692L = C22128a.m8692L("Worker ", simpleName, " finished with result ");
        m8692L.append(n.k(mo34356r));
        m8692L.append(" after ");
        m8692L.append(elapsedRealtime2);
        m8692L.append(" ms");
        m35890p(m8692L.toString());
        if (mo34358o().m10961i0().isEnabled()) {
            n.B0(new C21764j(simpleName, n.k(mo34356r), elapsedRealtime2), mo34359n());
        }
        return mo34356r;
    }

    /* renamed from: n */
    public abstract AbstractC19462a mo34359n();

    /* renamed from: o */
    public abstract C20592g mo34358o();

    /* renamed from: p */
    public final void m35890p(String str) {
        l.e(str, "message");
        C18479b.m14875a(str);
    }

    /* renamed from: q */
    public abstract boolean mo34357q();

    /* renamed from: r */
    public abstract ListenableWorker.AbstractC0414a mo34356r();
}
