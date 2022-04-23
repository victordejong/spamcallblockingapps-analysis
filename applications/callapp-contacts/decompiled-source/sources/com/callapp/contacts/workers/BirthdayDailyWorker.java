package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Pair;
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
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.BirthdayManager;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.BirthdayData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/BirthdayDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BirthdayDailyWorker.class */
public final class BirthdayDailyWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17022a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17023b = "job_birthday_daily_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BirthdayDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            Pair pair = (Pair) Prefs.u.get();
            Calendar calendar = Calendar.getInstance();
            if (pair != null) {
                calendar.set(11, ((Number) pair.first).intValue());
                calendar.set(12, ((Number) pair.second).intValue());
                calendar.set(13, 0);
            } else {
                calendar.set(11, 10);
                calendar.set(12, 0);
                calendar.set(13, 0);
            }
            Calendar now = Calendar.getInstance();
            if (!now.before(calendar)) {
                calendar.add(5, 1);
            }
            p.b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            p.b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                n a2 = j.b(CallAppApplication.get()).a(getTAG());
                p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                a2.a().get();
            } catch (Exception e) {
                CLog.a(BirthdayDailyWorker.class, e);
            }
            m c2 = new m.a(BirthdayDailyWorker.class).a(getTAG()).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final String getTAG() {
            return BirthdayDailyWorker.f17023b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BirthdayDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        try {
            if (((Pair) Prefs.u.get()) != null) {
                List<BirthdayData> birthdays = BirthdayManager.getBirthdays(true);
                if (CollectionUtils.b(birthdays)) {
                    final NotificationManager notificationManager = NotificationManager.get();
                    int size = birthdays.size();
                    final int i = 0;
                    while (i < size) {
                        final BirthdayData birthdayData = birthdays.get(i);
                        final boolean z = Prefs.x.get().booleanValue() && i == 0;
                        if (Prefs.u.get() != null) {
                            new Task() { // from class: com.callapp.contacts.manager.NotificationManager.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    String str;
                                    String str2;
                                    String str3;
                                    CallAppApplication application = Singletons.get().getApplication();
                                    Intent a2 = ContactsListActivity.a(application, birthdayData);
                                    ContactData contactData = null;
                                    if (ContactUtils.a(birthdayData.getPhone(), birthdayData.getContactId())) {
                                        str3 = birthdayData.getPhone().b();
                                        str2 = birthdayData.getPhone().b();
                                        str = ImageUtils.getResourceUri(2131232150);
                                    } else {
                                        str3 = StringUtils.j(birthdayData.getDisplayName());
                                        str2 = str3.split("\\s+")[0];
                                        if (birthdayData.getContactId() > 0) {
                                            contactData = ContactUtils.b(birthdayData.getPhone(), birthdayData.getContactId());
                                            str = contactData.getThumbnailUrl();
                                        } else {
                                            str = ContactUtils.a(birthdayData.getSocialProfileId(), Integer.valueOf(birthdayData.getSocialNetId()));
                                        }
                                    }
                                    g.e a3 = notificationManager.a(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL);
                                    a3.a(2131231911).a(true).c(ReminderType.BIRTHDAY.title).a(Activities.a(2131886331, str3)).b(Activities.a(2131886330, str2));
                                    int incrementAndGet = notificationManager.f14907c.incrementAndGet();
                                    Bitmap a4 = notificationManager.f14908d.a(str, incrementAndGet, contactData);
                                    if (a4 != null) {
                                        try {
                                            NotificationManager.a(a3, a4, (List<g.a>) null);
                                        } catch (RuntimeException e) {
                                            CLog.a(getClass(), "Could not generate notification bitmap for birthday", e);
                                        }
                                        a3.a(a4);
                                    }
                                    a3.b(6);
                                    if (z) {
                                        a3.a(Uri.parse("android.resource://" + CallAppApplication.get().getPackageName() + "/raw/2131820545"));
                                    }
                                    if (a2 != null) {
                                        a2.putExtra("future_target_index_key", incrementAndGet);
                                        a3.f = PendingIntent.getActivity(application, 0, a2, 134217728);
                                    }
                                    NotificationManager.a(a3, Prefs.U.get().intValue() + i, "com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION", incrementAndGet);
                                    notificationManager.a(Prefs.U.get().intValue() + i, a3);
                                }
                            }.execute();
                        }
                        i++;
                    }
                    IntegerPref integerPref = Prefs.U;
                    integerPref.set(Integer.valueOf(integerPref.get().intValue() + birthdays.size()));
                    if (Prefs.U.get().intValue() > 1000) {
                        Prefs.U.set(100);
                    }
                }
            }
            ListenableWorker.a.c cVar = new ListenableWorker.a.c();
            p.b(cVar, "Result.success()");
            f17022a.a();
            return cVar;
        } catch (Throwable th) {
            f17022a.a();
            throw th;
        }
    }
}
