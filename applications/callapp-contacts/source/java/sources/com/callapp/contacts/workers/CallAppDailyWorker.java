package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.AbstractC3150n;
import androidx.work.C3156o;
import androidx.work.C3163t;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallAppDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "billingManager", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker.class */
public final class CallAppDailyWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29570a = new Companion(null);

    /* renamed from: c */
    private static final String f29571c = "job_daily_tag";

    /* renamed from: d */
    private static final long f29572d = Constants.FIVE_DAYS_IN_MILLIS;

    /* renamed from: e */
    private static final long f29573e = 86400000;

    /* renamed from: f */
    private static final long f29574f = 864000000;

    /* renamed from: b */
    private BillingManager f29575b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0007J\u0006\u0010\u0018\u001a\u00020\u0010J\b\u0010\u0019\u001a\u00020\u0014H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006¨\u0006\u001a"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;", "", "()V", "AFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION", "", "getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION", "()J", "SHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE", "getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE", "TAG", "", "getTAG", "()Ljava/lang/String;", "TIME_TO_SHOW_UPGRADE_NOTIFICATION", "getTIME_TO_SHOW_UPGRADE_NOTIFICATION", "ensureMandatoryWorkersAreScheduled", "", "handleDailyTask", "handleValidateTask", "isWorkerNotScheduled", "", "workInfoList", "", "Landroidx/work/WorkInfo;", "scheduleJob", "shouldShowUpgradeNotification", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static boolean m26172a(List<C3163t> list) {
            if (list != null) {
                for (C3163t c3163t : list) {
                    C3163t.EnumC3164a enumC3164a = c3163t.f11514b;
                    C18524p.m3843b(enumC3164a, "workInfo.state");
                    if (!enumC3164a.isFinished()) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }

        /* renamed from: a */
        public final void m26173a() {
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(CallAppDailyWorker.class, e);
            }
            C3156o c = new C3156o.C3157a(CallAppDailyWorker.class, 24L, TimeUnit.HOURS).m39256a(getTAG()).m39254c();
            C18524p.m3843b(c, "PeriodicWorkRequest.Buil…OURS).addTag(TAG).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final long getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION() {
            return CallAppDailyWorker.f29573e;
        }

        public final long getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE() {
            return CallAppDailyWorker.f29572d;
        }

        public final String getTAG() {
            return CallAppDailyWorker.f29571c;
        }

        public final long getTIME_TO_SHOW_UPGRADE_NOTIFICATION() {
            return CallAppDailyWorker.f29574f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallAppDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0263  */
    /* JADX WARN: Type inference failed for: r0v101, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v103, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v105, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v107, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v109, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v111, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v113, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    /* JADX WARN: Type inference failed for: r0v99, types: [com.callapp.contacts.workers.CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0] */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.work.ListenableWorker.AbstractC2980a doWork() {
        /*
            Method dump skipped, instructions count: 1422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.workers.CallAppDailyWorker.doWork():androidx.work.ListenableWorker$a");
    }
}
