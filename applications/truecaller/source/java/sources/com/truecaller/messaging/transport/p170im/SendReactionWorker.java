package com.truecaller.messaging.transport.p170im;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p195a.p244k.p245a.AbstractC6626t;
import s1.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/truecaller/messaging/transport/im/SendReactionWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/a/k/a/t;", "a", "Le/a/a/k/a/t;", "getImManager$truecaller_googlePlayRelease", "()Le/a/a/k/a/t;", "setImManager$truecaller_googlePlayRelease", "(Le/a/a/k/a/t;)V", "imManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.SendReactionWorker */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/SendReactionWorker.class */
public final class SendReactionWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC6626t f13769a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendReactionWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParams");
        AbstractC16444k2.f46188a.m17389a().mo11371v(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        ListenableWorker.AbstractC0414a.C0416b c0416b;
        String m1301f = getInputData().m1301f("raw_id");
        if (m1301f == null) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        long m1302e = getInputData().m1302e("message_id", -1L);
        String m1301f2 = getInputData().m1301f("from_peer_id");
        if (m1301f2 == null) {
            ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c2, "Result.success()");
            return c0417c2;
        }
        long m1302e2 = getInputData().m1302e("particpant_id", -1L);
        String m1301f3 = getInputData().m1301f("to_group_id");
        String m1301f4 = getInputData().m1301f("emoji");
        AbstractC6626t abstractC6626t = this.f13769a;
        if (abstractC6626t == null) {
            l.l("imManager");
            throw null;
        }
        SendResult mo11831c = abstractC6626t.mo30629e(m1301f, m1302e, m1301f2, m1302e2, m1301f3, m1301f4).mo11831c();
        if (mo11831c != null) {
            int ordinal = mo11831c.ordinal();
            if (ordinal == 0) {
                c0416b = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0416b, "Result.success()");
            } else if (ordinal == 1) {
                c0416b = getRunAttemptCount() < 3 ? new ListenableWorker.AbstractC0414a.C0416b() : new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0416b, "if (runAttemptCount < MA…y() else Result.success()");
            } else if (ordinal != 2) {
                throw new i();
            }
            return c0416b;
        }
        c0416b = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0416b, "Result.success()");
        return c0416b;
    }
}
