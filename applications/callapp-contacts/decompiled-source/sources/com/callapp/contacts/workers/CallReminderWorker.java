package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.core.app.g;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.d;
import androidx.work.impl.j;
import androidx.work.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.callreminder.CallRemindersData;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.service.NotificationPendingIntentHandlerService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/workers/CallReminderWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "handleCallReminder", "", "notificationId", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallReminderWorker.class */
public final class CallReminderWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17034a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17035b = "job_callreminder_tag";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17036c = "notificationId";

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/callapp/contacts/workers/CallReminderWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "notif_id", "cancelJob", "", "jobId", "scheduleJob", "notificationId", "", "notificationTime", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallReminderWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a(String jobId) {
            p.d(jobId, "jobId");
            j.b(CallAppApplication.get()).a(UUID.fromString(jobId));
        }

        public final String a(int i, long j) {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            d.a aVar = new d.a();
            aVar.a(CallReminderWorker.f17036c, i);
            m c2 = new m.a(CallReminderWorker.class).a(getTAG()).a(aVar.a()).a(j - timeInMillis, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            m mVar = c2;
            j.b(CallAppApplication.get()).a(mVar);
            String uuid = mVar.f6239a.toString();
            p.b(uuid, "workRequest.id.toString()");
            return uuid;
        }

        public final String getTAG() {
            return CallReminderWorker.f17035b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallReminderWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        Bitmap bitmap;
        Bitmap bitmap2;
        List<CallRemindersData> a2 = CallRemindersManager.a(Long.valueOf(getInputData().a(f17036c, -1)));
        if (CollectionUtils.b(a2)) {
            NotificationManager notificationManager = NotificationManager.get();
            CallRemindersData callRemindersData = a2.get(0);
            synchronized (NotificationManager.e) {
                if (callRemindersData.notificationId != null) {
                    int intValue = callRemindersData.notificationId.intValue();
                    g.e a3 = notificationManager.a(NotificationManager.NotificationChannelEnum.CALL_REMINDER_NOTIFICATION_CHANNEL);
                    a3.b(Activities.getString(2131886453)).a(2131231916).a(true).a(2, false);
                    a3.l = 2;
                    a3.A = "call";
                    ContactData a4 = ContactUtils.a(callRemindersData.phone);
                    if (a4 != null) {
                        String nameOrNumber = a4.getNameOrNumber();
                        Phone phone = a4.getPhone();
                        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
                        intent.setAction("com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION");
                        intent.putExtra("notification_id", callRemindersData.notificationId.intValue());
                        ContactDetailsActivity.fillIntentWithCallData(intent, callRemindersData.contactId, callRemindersData.phone.getRawNumber(), null, null, true, null, ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                        NotificationManager.setDummyData(intent);
                        int incrementAndGet = notificationManager.f14907c.incrementAndGet();
                        if (a4.isIncognito()) {
                            a3.a(Activities.a(2131886439, a4.getPhone().b()));
                            Bitmap a5 = notificationManager.f14908d.a(2131232150, incrementAndGet);
                            bitmap2 = a5;
                            if (a5 != null) {
                                bitmap2 = a5;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        } else if (a4.isVoiceMail()) {
                            a3.a(Activities.a(2131886439, Activities.getString(2131888153)));
                            a3.b(a4.getPhone().b());
                            Bitmap a6 = notificationManager.f14908d.a(2131231612, incrementAndGet);
                            bitmap2 = a6;
                            if (a6 != null) {
                                bitmap2 = a6;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        } else {
                            a3.a(Activities.a(2131886439, StringUtils.j(a4.getNameOrNumber())));
                            a3.b(StringUtils.j(a4.getNameOrNumber()));
                            Bitmap a7 = notificationManager.f14908d.a(a4.getThumbnailUrl(), incrementAndGet, a4);
                            bitmap2 = a7;
                            if (a7 != null) {
                                bitmap2 = a7;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        }
                        a3.a(bitmap2);
                        intent.putExtra("future_target_index_key", incrementAndGet);
                        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), intValue, intent, 1073741824);
                        NotificationManager.a(a3, intValue, "com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS", incrementAndGet);
                        a3.b(23);
                        a3.f = service;
                        for (g.a aVar : notificationManager.a(intValue, phone, nameOrNumber, callRemindersData.notificationTime.longValue(), false)) {
                            a3.a(aVar);
                        }
                        NotificationManager.a(a3, bitmap, notificationManager.a(intValue, phone, nameOrNumber, callRemindersData.notificationTime.longValue(), true));
                        notificationManager.a(intValue, a3);
                        CallRemindersManager.b(callRemindersData.notificationId);
                        EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.REMINDER);
                    } else {
                        CLog.a(NotificationManager.class, "info is null");
                    }
                }
            }
        }
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
