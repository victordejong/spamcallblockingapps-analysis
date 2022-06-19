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
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.widget.tutorial.TutorialPageRepository;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0002¨\u0006\f"}, m4298d2 = {"Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "shouldDisplayTutorialForUser", "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CompleteTutorialReminderWorker.class */
public final class CompleteTutorialReminderWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29585a = new Companion(null);

    /* renamed from: b */
    private static final String f29586b = "job_complete_tutorial_reminder_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;", "", "()V", "TAG", "", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static void m26163a() {
            Calendar calendar = Calendar.getInstance();
            calendar.add(10, 12);
            Calendar calendar2 = Calendar.getInstance();
            C18524p.m3843b(calendar2, "Calendar.getInstance()");
            long timeInMillis = calendar2.getTimeInMillis();
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis2 = calendar.getTimeInMillis();
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(CompleteTutorialReminderWorker.f29586b);
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(CompleteTutorialReminderWorker.class, e);
            }
            C3148m c = new C3148m.C3149a(CompleteTutorialReminderWorker.class).m39256a(CompleteTutorialReminderWorker.f29586b).m39259a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompleteTutorialReminderWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        if (TutorialPageRepository.m26261c()) {
            NotificationManager notificationManager = NotificationManager.get();
            String string = Activities.getString(2131886625);
            String string2 = Activities.getString(2131886624);
            Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
            intent.setAction("com.callapp.contacts/showTutorial");
            PendingIntent activity = PendingIntent.getActivity(CallAppApplication.get(), 0, intent, 1073741824);
            C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.REGISTRATION_REMINDER_NOTIFICATION_CHANNEL);
            C0745g.C0751e m44581a = m28557a.m44571a(string).m44567b(string2).m44581a(2131231569);
            m44581a.f3335f = activity;
            m44581a.m44570a(true);
            notificationManager.m28573a(4, m28557a);
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
