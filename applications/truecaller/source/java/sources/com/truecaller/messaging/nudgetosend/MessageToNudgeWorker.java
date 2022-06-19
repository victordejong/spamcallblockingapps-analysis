package com.truecaller.messaging.nudgetosend;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p195a.p287z0.AbstractC7355b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/truecaller/messaging/nudgetosend/MessageToNudgeWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/a/z0/b;", "a", "Le/a/a/z0/b;", "getMessageToNudgeHelper$truecaller_googlePlayRelease", "()Le/a/a/z0/b;", "setMessageToNudgeHelper$truecaller_googlePlayRelease", "(Le/a/a/z0/b;)V", "messageToNudgeHelper", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/nudgetosend/MessageToNudgeWorker.class */
public final class MessageToNudgeWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC7355b f13657a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageToNudgeWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11389d(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        AbstractC7355b abstractC7355b = this.f13657a;
        if (abstractC7355b == null) {
            l.l("messageToNudgeHelper");
            throw null;
        }
        abstractC7355b.mo29745a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }
}
