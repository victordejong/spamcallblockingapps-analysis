package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Pair;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/BirthdayDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BirthdayDailyWorker.class */
public final class BirthdayDailyWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29568a = new Companion(null);

    /* renamed from: b */
    private static final String f29569b = "job_birthday_daily_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BirthdayDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26184a() {
            Pair pair = (Pair) Prefs.f26664u.get();
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
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            C18524p.m3843b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(BirthdayDailyWorker.class, e);
            }
            C3148m c = new C3148m.C3149a(BirthdayDailyWorker.class).m39256a(getTAG()).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final String getTAG() {
            return BirthdayDailyWorker.f29569b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BirthdayDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        try {
            if (((Pair) Prefs.f26664u.get()) != null) {
                List<BirthdayData> birthdays = BirthdayManager.getBirthdays(true);
                if (CollectionUtils.m26068b(birthdays)) {
                    final NotificationManager notificationManager = NotificationManager.get();
                    int size = birthdays.size();
                    int i = 0;
                    while (i < size) {
                        final BirthdayData birthdayData = birthdays.get(i);
                        boolean z = Prefs.f26667x.get().booleanValue() && i == 0;
                        if (Prefs.f26664u.get() != null) {
                            final boolean z2 = z;
                            final int i2 = i;
                            new Task() { // from class: com.callapp.contacts.manager.NotificationManager.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    String str;
                                    String str2;
                                    String str3;
                                    CallAppApplication application = Singletons.get().getApplication();
                                    Intent m30647a = ContactsListActivity.m30647a(application, birthdayData);
                                    ContactData contactData = null;
                                    if (ContactUtils.m28326a(birthdayData.getPhone(), birthdayData.getContactId())) {
                                        str3 = birthdayData.getPhone().m26095b();
                                        str2 = birthdayData.getPhone().m26095b();
                                        str = ImageUtils.getResourceUri(2131232150);
                                    } else {
                                        str3 = StringUtils.m26020j(birthdayData.getDisplayName());
                                        str2 = str3.split("\\s+")[0];
                                        if (birthdayData.getContactId() > 0) {
                                            contactData = ContactUtils.m28310b(birthdayData.getPhone(), birthdayData.getContactId());
                                            str = contactData.getThumbnailUrl();
                                        } else {
                                            str = ContactUtils.m28323a(birthdayData.getSocialProfileId(), Integer.valueOf(birthdayData.getSocialNetId()));
                                        }
                                    }
                                    C0745g.C0751e m28557a = notificationManager.m28557a(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL);
                                    m28557a.m44581a(2131231911).m44570a(true).m44566c(ReminderType.BIRTHDAY.title).m44571a(Activities.m27697a(2131886331, str3)).m44567b(Activities.m27697a(2131886330, str2));
                                    int incrementAndGet = notificationManager.f25739c.incrementAndGet();
                                    Bitmap m28685a = notificationManager.f25740d.m28685a(str, incrementAndGet, contactData);
                                    if (m28685a != null) {
                                        try {
                                            NotificationManager.m28563a(m28557a, m28685a, (List<C0745g.C0747a>) null);
                                        } catch (RuntimeException e) {
                                            CLog.m27610a(getClass(), "Could not generate notification bitmap for birthday", e);
                                        }
                                        m28557a.m44576a(m28685a);
                                    }
                                    m28557a.m44568b(6);
                                    if (z2) {
                                        m28557a.m44575a(Uri.parse("android.resource://" + CallAppApplication.get().getPackageName() + "/raw/2131820545"));
                                    }
                                    if (m30647a != null) {
                                        m30647a.putExtra("future_target_index_key", incrementAndGet);
                                        m28557a.f3335f = PendingIntent.getActivity(application, 0, m30647a, 134217728);
                                    }
                                    NotificationManager.m28565a(m28557a, Prefs.f26217U.get().intValue() + i2, "com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION", incrementAndGet);
                                    notificationManager.m28573a(Prefs.f26217U.get().intValue() + i2, m28557a);
                                }
                            }.execute();
                        }
                        i++;
                    }
                    IntegerPref integerPref = Prefs.f26217U;
                    integerPref.set(Integer.valueOf(integerPref.get().intValue() + birthdays.size()));
                    if (Prefs.f26217U.get().intValue() > 1000) {
                        Prefs.f26217U.set(100);
                    }
                }
            }
            ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            f29568a.m26184a();
            return c2983c;
        } catch (Throwable th) {
            f29568a.m26184a();
            throw th;
        }
    }
}
