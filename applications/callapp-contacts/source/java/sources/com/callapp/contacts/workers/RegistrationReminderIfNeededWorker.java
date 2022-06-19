package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.C0745g;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RegistrationReminderIfNeededWorker.class */
public final class RegistrationReminderIfNeededWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29631a = new Companion(null);

    /* renamed from: b */
    private static final String f29632b = "job_registration_if_needed_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26127a() {
            if (!PhoneManager.m28221i()) {
                StringPref stringPref = Prefs.f26245aV;
                C18524p.m3843b(stringPref, "Prefs.activationCode");
                if (!stringPref.isNotNull()) {
                    Calendar reminderTime = Calendar.getInstance();
                    reminderTime.add(5, 1);
                    reminderTime.set(11, 17);
                    Calendar calendar = Calendar.getInstance();
                    C18524p.m3843b(calendar, "Calendar.getInstance()");
                    long timeInMillis = calendar.getTimeInMillis();
                    C18524p.m3843b(reminderTime, "reminderTime");
                    long timeInMillis2 = reminderTime.getTimeInMillis();
                    try {
                        AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                        C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                        mo39264a.mo39272a().get();
                    } catch (Exception e) {
                        CLog.m27609a(RegistrationReminderIfNeededWorker.class, e);
                    }
                    C3148m c = new C3148m.C3149a(RegistrationReminderIfNeededWorker.class).m39256a(getTAG()).m39259a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).m39254c();
                    C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
                    C3068j.m39359b(CallAppApplication.get()).m39265a(c);
                    return;
                }
            }
            CLog.m27606a(getTAG());
        }

        public final String getTAG() {
            return RegistrationReminderIfNeededWorker.f29632b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegistrationReminderIfNeededWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        StringPref stringPref = Prefs.f26245aV;
        C18524p.m3843b(stringPref, "Prefs.activationCode");
        if (stringPref.isNotNull()) {
            ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            return c2983c;
        }
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "RegistrationAlmostFinish_notification_receive", SetupWizardActivity.getCurrentSetupStage().name());
        NotificationManager notificationManager = NotificationManager.get();
        CallAppApplication application = Singletons.get().getApplication();
        PendingIntent activity = PendingIntent.getActivity(application, 0, new Intent(application, FinishSetupReminderActivity.class).setFlags(268435456), 134217728);
        String string = Activities.getString(2131886623);
        C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.REGISTRATION_REMINDER_NOTIFICATION_CHANNEL);
        m28557a.m44567b(Activities.getString(2131887651)).m44571a(string).m44581a(2131231569).f3335f = activity;
        m28557a.m44568b(-1);
        m28557a.m44579a(2, true);
        m28557a.m44570a(false);
        Prefs.f26278bB.set(Boolean.TRUE);
        notificationManager.m28573a(5, m28557a);
        ListenableWorker.AbstractC2980a.C2983c c2983c2 = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c2, "Result.success()");
        return c2983c2;
    }
}
