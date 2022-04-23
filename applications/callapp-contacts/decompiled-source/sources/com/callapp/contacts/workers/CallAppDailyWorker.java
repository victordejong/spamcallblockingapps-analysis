package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.n;
import androidx.work.o;
import androidx.work.t;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/workers/CallAppDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "billingManager", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker.class */
public final class CallAppDailyWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17024a = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f17025c = "job_daily_tag";

    /* renamed from: d  reason: collision with root package name */
    private static final long f17026d = Constants.FIVE_DAYS_IN_MILLIS;
    private static final long e = 86400000;
    private static final long f = 864000000;

    /* renamed from: b  reason: collision with root package name */
    private BillingManager f17027b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0007J\u0006\u0010\u0018\u001a\u00020\u0010J\b\u0010\u0019\u001a\u00020\u0014H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;", "", "()V", "AFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION", "", "getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION", "()J", "SHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE", "getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE", "TAG", "", "getTAG", "()Ljava/lang/String;", "TIME_TO_SHOW_UPGRADE_NOTIFICATION", "getTIME_TO_SHOW_UPGRADE_NOTIFICATION", "ensureMandatoryWorkersAreScheduled", "", "handleDailyTask", "handleValidateTask", "isWorkerNotScheduled", "", "workInfoList", "", "Landroidx/work/WorkInfo;", "scheduleJob", "shouldShowUpgradeNotification", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static boolean a(List<t> list) {
            if (list == null) {
                return true;
            }
            for (t tVar : list) {
                t.a aVar = tVar.f6236b;
                p.b(aVar, "workInfo.state");
                if (!aVar.isFinished()) {
                    return false;
                }
            }
            return true;
        }

        public final void a() {
            try {
                n a2 = j.b(CallAppApplication.get()).a(getTAG());
                p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                a2.a().get();
            } catch (Exception e) {
                CLog.a(CallAppDailyWorker.class, e);
            }
            o c2 = new o.a(CallAppDailyWorker.class, 24L, TimeUnit.HOURS).a(getTAG()).c();
            p.b(c2, "PeriodicWorkRequest.Buil…OURS).addTag(TAG).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final long getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION() {
            return CallAppDailyWorker.e;
        }

        public final long getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE() {
            return CallAppDailyWorker.f17026d;
        }

        public final String getTAG() {
            return CallAppDailyWorker.f17025c;
        }

        public final long getTIME_TO_SHOW_UPGRADE_NOTIFICATION() {
            return CallAppDailyWorker.f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallAppDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0263  */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.work.ListenableWorker.a doWork() {
        /*
            Method dump skipped, instructions count: 1422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.workers.CallAppDailyWorker.doWork():androidx.work.ListenableWorker$a");
    }
}
