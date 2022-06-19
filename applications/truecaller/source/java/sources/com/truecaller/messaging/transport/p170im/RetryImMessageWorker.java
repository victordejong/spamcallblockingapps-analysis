package com.truecaller.messaging.transport.p170im;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R.\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001d"}, d2 = {"Lcom/truecaller/messaging/transport/im/RetryImMessageWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Lo3/a;", "Le/a/r2/f;", "Le/a/a/g/m;", C22021b.f61237c, "Lo3/a;", "getMessagesStorage$truecaller_googlePlayRelease", "()Lo3/a;", "setMessagesStorage$truecaller_googlePlayRelease", "(Lo3/a;)V", "messagesStorage", "Le/a/b0/e/l;", "a", "Le/a/b0/e/l;", "getAccountManager$truecaller_googlePlayRelease", "()Le/a/b0/e/l;", "setAccountManager$truecaller_googlePlayRelease", "(Le/a/b0/e/l;)V", "accountManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.RetryImMessageWorker */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/RetryImMessageWorker.class */
public final class RetryImMessageWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC8432l f13766a;
    @Inject

    /* renamed from: b */
    public a<AbstractC19854f<AbstractC6233m>> f13767b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryImMessageWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11400B(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        AbstractC8432l abstractC8432l = this.f13766a;
        if (abstractC8432l == null) {
            l.l("accountManager");
            throw null;
        } else if (!abstractC8432l.mo28580d()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        } else {
            long m1302e = getInputData().m1302e("to_date", 0L);
            if (m1302e == 0) {
                ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
                l.d(c0415a, "Result.failure()");
                return c0415a;
            }
            a<AbstractC19854f<AbstractC6233m>> aVar = this.f13767b;
            if (aVar == null) {
                l.l("messagesStorage");
                throw null;
            }
            ((AbstractC6233m) ((AbstractC19854f) aVar.get()).mo11854a()).mo31684p(2, new b(m1302e));
            ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c2, "Result.success()");
            return c0417c2;
        }
    }
}
