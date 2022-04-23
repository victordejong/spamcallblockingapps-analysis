package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.g;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.FinishSetupReminderActivity;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RegistrationReminderIfNeededWorker.class */
public final class RegistrationReminderIfNeededWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17074a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17075b = "job_registration_if_needed_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            if (!PhoneManager.i()) {
                StringPref stringPref = Prefs.aV;
                p.b(stringPref, "Prefs.activationCode");
                if (!stringPref.isNotNull()) {
                    Calendar reminderTime = Calendar.getInstance();
                    reminderTime.add(5, 1);
                    reminderTime.set(11, 17);
                    Calendar instance = Calendar.getInstance();
                    p.b(instance, "Calendar.getInstance()");
                    long timeInMillis = instance.getTimeInMillis();
                    p.b(reminderTime, "reminderTime");
                    long timeInMillis2 = reminderTime.getTimeInMillis();
                    try {
                        n a2 = j.b(CallAppApplication.get()).a(getTAG());
                        p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                        a2.a().get();
                    } catch (Exception e) {
                        CLog.a(RegistrationReminderIfNeededWorker.class, e);
                    }
                    m c2 = new m.a(RegistrationReminderIfNeededWorker.class).a(getTAG()).a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).c();
                    p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
                    j.b(CallAppApplication.get()).a(c2);
                    return;
                }
            }
            CLog.a(getTAG());
        }

        public final String getTAG() {
            return RegistrationReminderIfNeededWorker.f17075b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegistrationReminderIfNeededWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        StringPref stringPref = Prefs.aV;
        p.b(stringPref, "Prefs.activationCode");
        if (stringPref.isNotNull()) {
            ListenableWorker.a.c cVar = new ListenableWorker.a.c();
            p.b(cVar, "Result.success()");
            return cVar;
        }
        AnalyticsManager.get().a(Constants.REGISTRATION, "RegistrationAlmostFinish_notification_receive", SetupWizardActivity.getCurrentSetupStage().name());
        NotificationManager notificationManager = NotificationManager.get();
        CallAppApplication application = Singletons.get().getApplication();
        PendingIntent activity = PendingIntent.getActivity(application, 0, new Intent(application, FinishSetupReminderActivity.class).setFlags(268435456), 134217728);
        String string = Activities.getString(2131886623);
        g.e a2 = notificationManager.a(NotificationManager.NotificationChannelEnum.REGISTRATION_REMINDER_NOTIFICATION_CHANNEL);
        a2.b(Activities.getString(2131887651)).a(string).a(2131231569).f = activity;
        a2.b(-1);
        a2.a(2, true);
        a2.a(false);
        Prefs.bB.set(Boolean.TRUE);
        notificationManager.a(5, a2);
        ListenableWorker.a.c cVar2 = new ListenableWorker.a.c();
        p.b(cVar2, "Result.success()");
        return cVar2;
    }
}
