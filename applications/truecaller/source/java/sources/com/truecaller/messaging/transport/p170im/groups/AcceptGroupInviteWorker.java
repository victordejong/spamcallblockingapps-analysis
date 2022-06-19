package com.truecaller.messaging.transport.p170im.groups;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.ImGroupInfo;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1050l5.p1051a.C17733s0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import s1.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001f\u0010\b\u001a\u0004\b \u0010\n\"\u0004\b!\u0010\fR\"\u0010*\u001a\u00020#8��@��X\u0081.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00061"}, d2 = {"Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/r2/f;", "Le/a/a/k/a/a/m;", "e", "Le/a/r2/f;", "getImGroupManager$truecaller_googlePlayRelease", "()Le/a/r2/f;", "setImGroupManager$truecaller_googlePlayRelease", "(Le/a/r2/f;)V", "imGroupManager", "Le/a/a/k/a/a/d;", "a", "Le/a/a/k/a/a/d;", "getImGroupHelper$truecaller_googlePlayRelease", "()Le/a/a/k/a/a/d;", "setImGroupHelper$truecaller_googlePlayRelease", "(Le/a/a/k/a/a/d;)V", "imGroupHelper", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "getAnalytics$truecaller_googlePlayRelease", "()Le/a/q2/a;", "setAnalytics$truecaller_googlePlayRelease", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/q2/a0;", AbstractC2405c.f7629a, "getEventsTracker$truecaller_googlePlayRelease", "setEventsTracker$truecaller_googlePlayRelease", "eventsTracker", "Le/a/a/i0;", "d", "Le/a/a/i0;", "getMessageSettings$truecaller_googlePlayRelease", "()Le/a/a/i0;", "setMessageSettings$truecaller_googlePlayRelease", "(Le/a/a/i0;)V", "messageSettings", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.groups.AcceptGroupInviteWorker */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker.class */
public final class AcceptGroupInviteWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC6448d f13770a;
    @Inject

    /* renamed from: b */
    public AbstractC19462a f13771b;
    @Inject

    /* renamed from: c */
    public AbstractC19854f<AbstractC19463a0> f13772c;
    @Inject

    /* renamed from: d */
    public AbstractC6392i0 f13773d;
    @Inject

    /* renamed from: e */
    public AbstractC19854f<AbstractC6485m> f13774e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AcceptGroupInviteWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParams");
        AbstractC16444k2.f46188a.m17389a().mo11368y(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        String m1301f = getInputData().m1301f("group_id");
        if (m1301f == null) {
            ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c2, "Result.success()");
            return c0417c2;
        }
        AbstractC6392i0 abstractC6392i0 = this.f13773d;
        if (abstractC6392i0 == null) {
            l.l("messageSettings");
            throw null;
        } else if (!abstractC6392i0.mo31099b2()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c3 = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c3, "Result.success()");
            return c0417c3;
        } else {
            AbstractC19854f<AbstractC6485m> abstractC19854f = this.f13774e;
            if (abstractC19854f == null) {
                l.l("imGroupManager");
                throw null;
            }
            ImGroupInfo mo11831c = abstractC19854f.mo11854a().mo30877w(m1301f).mo11831c();
            if (mo11831c == null || (mo11831c.f13324f & 2) == 0) {
                ListenableWorker.AbstractC0414a.C0417c c0417c4 = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c4, "Result.success()");
                return c0417c4;
            }
            String str = mo11831c.f13323e;
            if (str != null) {
                AbstractC6448d abstractC6448d = this.f13770a;
                if (abstractC6448d == null) {
                    l.l("imGroupHelper");
                    throw null;
                } else if (abstractC6448d.mo30925r(str)) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c5 = new ListenableWorker.AbstractC0414a.C0417c();
                    l.d(c0417c5, "Result.success()");
                    return c0417c5;
                }
            }
            AbstractC6448d abstractC6448d2 = this.f13770a;
            if (abstractC6448d2 == null) {
                l.l("imGroupHelper");
                throw null;
            }
            boolean mo30940c = abstractC6448d2.mo30940c(m1301f, true);
            if (mo30940c) {
                C17733s0.C17735b m15824a = C17733s0.m15824a();
                m15824a.m15821c(mo11831c.f13319a);
                String str2 = mo11831c.f13323e;
                if (str2 == null) {
                    str2 = "";
                }
                m15824a.m15819e(str2);
                AbstractC6392i0 abstractC6392i02 = this.f13773d;
                if (abstractC6392i02 == null) {
                    l.l("messageSettings");
                    throw null;
                }
                String mo31078f = abstractC6392i02.mo31078f();
                String str3 = "";
                if (mo31078f != null) {
                    str3 = mo31078f;
                }
                m15824a.m15820d(str3);
                m15824a.m15822b("Accept");
                AbstractC19854f<AbstractC19463a0> abstractC19854f2 = this.f13772c;
                if (abstractC19854f2 == null) {
                    l.l("eventsTracker");
                    throw null;
                }
                abstractC19854f2.mo11854a().mo13111a(m15824a.build());
            }
            if (mo30940c) {
                c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c, "Result.success()");
            } else if (mo30940c) {
                throw new i();
            } else {
                c0417c = getRunAttemptCount() < 3 ? new ListenableWorker.AbstractC0414a.C0416b() : new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c, "if (runAttemptCount < MA…y() else Result.success()");
            }
            return c0417c;
        }
    }
}
