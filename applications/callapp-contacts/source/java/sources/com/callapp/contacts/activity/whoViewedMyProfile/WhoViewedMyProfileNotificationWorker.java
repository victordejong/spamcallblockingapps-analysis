package com.callapp.contacts.activity.whoViewedMyProfile;

import android.content.Context;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker.class */
public final class WhoViewedMyProfileNotificationWorker extends Worker {

    /* renamed from: a */
    public static final Companion f24650a = new Companion(null);

    /* renamed from: b */
    private static final String f24651b = "job_who_viewed_my_profile_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "cancelWhoViewedMyProfileDailyWorkerJob", "", "scheduleJob", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m29338a() {
            CLog.m27606a("WhoViewedMyProfileNotificationWorker");
            Calendar calendar = Calendar.getInstance();
            Calendar now = Calendar.getInstance();
            if (((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.f26645hy.get()) == WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.DAILY) {
                CLog.m27606a("WhoViewedMyProfileNotificationWorker");
                calendar.set(11, 11);
                if (!now.before(calendar)) {
                    calendar.add(5, 1);
                }
            } else if (((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.f26645hy.get()) == WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.WEEKLY) {
                CLog.m27606a("WhoViewedMyProfileNotificationWorker");
                calendar.set(11, 11);
                calendar.set(7, 3);
                if (!now.before(calendar)) {
                    calendar.add(5, 7);
                }
            }
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            C18524p.m3843b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            Companion companion = this;
            companion.m29337b();
            Prefs.f26597hC.set(now.getTime());
            C3148m c = new C3148m.C3149a(WhoViewedMyProfileNotificationWorker.class).m39256a(companion.getTAG()).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        /* renamed from: b */
        public final void m29337b() {
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27596b(WhoViewedMyProfileNotificationWorker.class, e);
            }
        }

        public final String getTAG() {
            return WhoViewedMyProfileNotificationWorker.f24651b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WhoViewedMyProfileNotificationWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        ListenableWorker.AbstractC2980a.C2983c c2983c;
        try {
            CLog.m27606a("WhoViewedMyProfileNotificationWorker");
            CLog.m27611a(WhoViewedMyProfileNotificationWorker.class, "WhoViewedMyProfileNotificationDailyWorker onRunDailyJob");
            Date date = Prefs.f26597hC.get();
            if (date != null) {
                Calendar calendar = Calendar.getInstance();
                C18524p.m3843b(calendar, "calendar");
                if (DateUtils.m27125a(date, calendar.getTime())) {
                    CLog.m27611a(WhoViewedMyProfileNotificationWorker.class, "Already ran WhoViewedMyProfileNotificationDailyWorker for today");
                    c2983c = new ListenableWorker.AbstractC2980a.C2983c();
                    C18524p.m3843b(c2983c, "Result.success()");
                    f24650a.m29338a();
                    return c2983c;
                }
            }
            List<ProfileViewedData> notificationDataByDate = WhoViewedMyProfileDataManager.f24643a.getNotificationDataByDate();
            if (CollectionUtils.m26068b(notificationDataByDate) && !Prefs.f26595hA.get().booleanValue()) {
                Boolean bool = Prefs.f26646hz.get();
                C18524p.m3843b(bool, "Prefs.whoViewedMyProfileNotificationEnabled.get()");
                if (bool.booleanValue()) {
                    for (ProfileViewedData profileViewedData : notificationDataByDate) {
                        CLog.m27611a(WhoViewedMyProfileNotificationWorker.class, "showProfileViewedNotification" + profileViewedData.getPhoneNumber() + profileViewedData.getName());
                        NotificationManager.get().m28549a(profileViewedData.getPhoneNumber(), profileViewedData.getName());
                    }
                }
            }
            c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            f24650a.m29338a();
            return c2983c;
        } catch (Throwable th) {
            f24650a.m29338a();
            throw th;
        }
    }
}
