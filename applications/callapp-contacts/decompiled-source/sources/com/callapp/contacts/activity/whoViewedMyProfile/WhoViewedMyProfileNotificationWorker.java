package com.callapp.contacts.activity.whoViewedMyProfile;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker.class */
public final class WhoViewedMyProfileNotificationWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f14025a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f14026b = "job_who_viewed_my_profile_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "cancelWhoViewedMyProfileDailyWorkerJob", "", "scheduleJob", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            CLog.a("WhoViewedMyProfileNotificationWorker");
            Calendar calendar = Calendar.getInstance();
            Calendar now = Calendar.getInstance();
            if (((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.hy.get()) == WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.DAILY) {
                CLog.a("WhoViewedMyProfileNotificationWorker");
                calendar.set(11, 11);
                if (!now.before(calendar)) {
                    calendar.add(5, 1);
                }
            } else if (((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.hy.get()) == WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.WEEKLY) {
                CLog.a("WhoViewedMyProfileNotificationWorker");
                calendar.set(11, 11);
                calendar.set(7, 3);
                if (!now.before(calendar)) {
                    calendar.add(5, 7);
                }
            }
            p.b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            p.b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            Companion companion = this;
            companion.b();
            Prefs.hC.set(now.getTime());
            m c2 = new m.a(WhoViewedMyProfileNotificationWorker.class).a(companion.getTAG()).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final void b() {
            try {
                n a2 = j.b(CallAppApplication.get()).a(getTAG());
                p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                a2.a().get();
            } catch (Exception e) {
                CLog.b(WhoViewedMyProfileNotificationWorker.class, e);
            }
        }

        public final String getTAG() {
            return WhoViewedMyProfileNotificationWorker.f14026b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WhoViewedMyProfileNotificationWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        ListenableWorker.a.c cVar;
        try {
            CLog.a("WhoViewedMyProfileNotificationWorker");
            CLog.a(WhoViewedMyProfileNotificationWorker.class, "WhoViewedMyProfileNotificationDailyWorker onRunDailyJob");
            Date date = Prefs.hC.get();
            if (date != null) {
                Calendar calendar = Calendar.getInstance();
                p.b(calendar, "calendar");
                if (DateUtils.a(date, calendar.getTime())) {
                    CLog.a(WhoViewedMyProfileNotificationWorker.class, "Already ran WhoViewedMyProfileNotificationDailyWorker for today");
                    cVar = new ListenableWorker.a.c();
                    p.b(cVar, "Result.success()");
                    f14025a.a();
                    return cVar;
                }
            }
            List<ProfileViewedData> notificationDataByDate = WhoViewedMyProfileDataManager.f14018a.getNotificationDataByDate();
            if (CollectionUtils.b(notificationDataByDate) && !Prefs.hA.get().booleanValue()) {
                Boolean bool = Prefs.hz.get();
                p.b(bool, "Prefs.whoViewedMyProfileNotificationEnabled.get()");
                if (bool.booleanValue()) {
                    for (ProfileViewedData profileViewedData : notificationDataByDate) {
                        CLog.a(WhoViewedMyProfileNotificationWorker.class, "showProfileViewedNotification" + profileViewedData.getPhoneNumber() + profileViewedData.getName());
                        NotificationManager.get().a(profileViewedData.getPhoneNumber(), profileViewedData.getName());
                    }
                }
            }
            cVar = new ListenableWorker.a.c();
            p.b(cVar, "Result.success()");
            f14025a.a();
            return cVar;
        } catch (Throwable th) {
            f14025a.a();
            throw th;
        }
    }
}
