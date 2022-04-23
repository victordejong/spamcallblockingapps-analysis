package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.JobIntentService;
import androidx.core.app.SafeJobIntentService;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
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
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/StartupServiceV1.class */
public class StartupServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        new StringBuilder("StartupReceiver.onReceive called! ").append(intent.getAction());
        CLog.a("StartupService");
        if (!Prefs.aW.get().booleanValue() && Prefs.bq.get() == null) {
            NotificationManager.get().a();
        }
        if (Prefs.aV.isNotNull()) {
            PermissionManager.get();
            if (!PermissionManager.a()) {
                return;
            }
            if (StringUtils.b(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
                try {
                    if (!Prefs.gz.get().booleanValue()) {
                        Prefs.gz.set(Boolean.TRUE);
                        JobIntentService.a(CallAppApplication.get(), ConnectionChangedService.class, 1, intent);
                    }
                } catch (SecurityException e) {
                    CLog.a(StartupReceiver.class, e);
                }
            } else if (StringUtils.b(intent.getAction(), "android.intent.action.ACTION_POWER_CONNECTED")) {
                if (!Prefs.gA.get().booleanValue()) {
                    Prefs.gA.set(Boolean.TRUE);
                    JobIntentService.a(CallAppApplication.get(), PowerConnectedService.class, 2, intent);
                }
            } else if (StringUtils.b(intent.getAction(), "android.intent.action.ACTION_POWER_DISCONNECTED")) {
                MissedCallSummaryWorker.Companion companion = MissedCallSummaryWorker.f17050a;
                Date date = Prefs.M.get();
                Calendar calendar = Calendar.getInstance();
                p.b(calendar, "calendar");
                Date time = calendar.getTime();
                if (date == null || !DateUtils.a(date, time)) {
                    int i = calendar.get(11);
                    int i2 = calendar.get(12);
                    if (i < 5 || (i >= 8 && (i != 8 || i2 > 30))) {
                        CLog.a(MissedCallSummaryWorker.class, "Not scheduling missed call summary - out of hours");
                        return;
                    }
                    Prefs.M.set(time);
                    calendar.add(10, 1);
                    Calendar instance = Calendar.getInstance();
                    p.b(instance, "Calendar.getInstance()");
                    long timeInMillis = instance.getTimeInMillis();
                    long timeInMillis2 = calendar.getTimeInMillis();
                    try {
                        n a2 = j.b(CallAppApplication.get()).a(companion.getTAG());
                        p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                        a2.a().get();
                    } catch (Exception e2) {
                        CLog.a(MissedCallSummaryWorker.class, e2);
                    }
                    m c2 = new m.a(MissedCallSummaryWorker.class).a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).a(companion.getTAG()).c();
                    p.b(c2, "OneTimeWorkRequestBuilde…ONDS).addTag(TAG).build()");
                    j.b(CallAppApplication.get()).a(c2);
                    CLog.a(MissedCallSummaryWorker.class, "Scheduled missed call summary");
                    return;
                }
                CLog.a(MissedCallSummaryWorker.class, "Already scheduled missed call summary for today");
            } else if (StringUtils.b(intent.getAction(), "android.intent.action.BOOT_COMPLETED") || StringUtils.b(intent.getAction(), "android.intent.action.QUICKBOOT_POWERON")) {
                RealSyncService.d();
                SmsSentReceiver.b();
                MissedCallManager.e();
            }
        }
    }
}
