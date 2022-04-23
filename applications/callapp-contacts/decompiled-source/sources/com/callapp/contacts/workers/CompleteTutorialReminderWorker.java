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
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.widget.tutorial.TutorialPageRepository;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0002¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "shouldDisplayTutorialForUser", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CompleteTutorialReminderWorker.class */
public final class CompleteTutorialReminderWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17037a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17038b = "job_complete_tutorial_reminder_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;", "", "()V", "TAG", "", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a() {
            Calendar calendar = Calendar.getInstance();
            calendar.add(10, 12);
            Calendar instance = Calendar.getInstance();
            p.b(instance, "Calendar.getInstance()");
            long timeInMillis = instance.getTimeInMillis();
            p.b(calendar, "calendar");
            long timeInMillis2 = calendar.getTimeInMillis();
            try {
                n a2 = j.b(CallAppApplication.get()).a(CompleteTutorialReminderWorker.f17038b);
                p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                a2.a().get();
            } catch (Exception e) {
                CLog.a(CompleteTutorialReminderWorker.class, e);
            }
            m c2 = new m.a(CompleteTutorialReminderWorker.class).a(CompleteTutorialReminderWorker.f17038b).a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompleteTutorialReminderWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        if (TutorialPageRepository.c()) {
            NotificationManager notificationManager = NotificationManager.get();
            String string = Activities.getString(2131886625);
            String string2 = Activities.getString(2131886624);
            Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
            intent.setAction("com.callapp.contacts/showTutorial");
            PendingIntent activity = PendingIntent.getActivity(CallAppApplication.get(), 0, intent, 1073741824);
            g.e a2 = notificationManager.a(NotificationManager.NotificationChannelEnum.REGISTRATION_REMINDER_NOTIFICATION_CHANNEL);
            g.e a3 = a2.a(string).b(string2).a(2131231569);
            a3.f = activity;
            a3.a(true);
            notificationManager.a(4, a2);
        }
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
