package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.JobIntentService;
import androidx.core.app.SafeJobIntentService;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.SmsSentReceiver;
import com.callapp.contacts.receiver.StartupReceiver;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.workers.MissedCallSummaryWorker;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/StartupServiceV1.class */
public class StartupServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        new StringBuilder("StartupReceiver.onReceive called! ").append(intent.getAction());
        CLog.m27606a("StartupService");
        if (!Prefs.f26246aW.get().booleanValue() && Prefs.f26319bq.get() == null) {
            NotificationManager.get().m28579a();
        }
        if (Prefs.f26245aV.isNotNull()) {
            PermissionManager.get();
            if (!PermissionManager.m28256a()) {
                return;
            }
            if (StringUtils.m26042b(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
                try {
                    if (Prefs.f26593gz.get().booleanValue()) {
                        return;
                    }
                    Prefs.f26593gz.set(Boolean.TRUE);
                    JobIntentService.m44627a(CallAppApplication.get(), ConnectionChangedService.class, 1, intent);
                } catch (SecurityException e) {
                    CLog.m27609a(StartupReceiver.class, e);
                }
            } else if (StringUtils.m26042b(intent.getAction(), "android.intent.action.ACTION_POWER_CONNECTED")) {
                if (Prefs.f26542gA.get().booleanValue()) {
                    return;
                }
                Prefs.f26542gA.set(Boolean.TRUE);
                JobIntentService.m44627a(CallAppApplication.get(), PowerConnectedService.class, 2, intent);
            } else if (!StringUtils.m26042b(intent.getAction(), "android.intent.action.ACTION_POWER_DISCONNECTED")) {
                if (!StringUtils.m26042b(intent.getAction(), "android.intent.action.BOOT_COMPLETED") && !StringUtils.m26042b(intent.getAction(), "android.intent.action.QUICKBOOT_POWERON")) {
                    return;
                }
                RealSyncService.m27752d();
                SmsSentReceiver.m27885b();
                MissedCallManager.m29817e();
            } else {
                MissedCallSummaryWorker.Companion companion = MissedCallSummaryWorker.f29599a;
                Date date = Prefs.f26209M.get();
                Calendar calendar = Calendar.getInstance();
                C18524p.m3843b(calendar, "calendar");
                Date time = calendar.getTime();
                if (date != null && DateUtils.m27125a(date, time)) {
                    CLog.m27611a(MissedCallSummaryWorker.class, "Already scheduled missed call summary for today");
                    return;
                }
                int i = calendar.get(11);
                int i2 = calendar.get(12);
                if (i < 5 || (i >= 8 && (i != 8 || i2 > 30))) {
                    CLog.m27611a(MissedCallSummaryWorker.class, "Not scheduling missed call summary - out of hours");
                    return;
                }
                Prefs.f26209M.set(time);
                calendar.add(10, 1);
                Calendar calendar2 = Calendar.getInstance();
                C18524p.m3843b(calendar2, "Calendar.getInstance()");
                long timeInMillis = calendar2.getTimeInMillis();
                long timeInMillis2 = calendar.getTimeInMillis();
                try {
                    AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(companion.getTAG());
                    C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                    mo39264a.mo39272a().get();
                } catch (Exception e2) {
                    CLog.m27609a(MissedCallSummaryWorker.class, e2);
                }
                C3148m c = new C3148m.C3149a(MissedCallSummaryWorker.class).m39259a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).m39256a(companion.getTAG()).m39254c();
                C18524p.m3843b(c, "OneTimeWorkRequestBuilde…ONDS).addTag(TAG).build()");
                C3068j.m39359b(CallAppApplication.get()).m39265a(c);
                CLog.m27611a(MissedCallSummaryWorker.class, "Scheduled missed call summary");
            }
        }
    }
}
