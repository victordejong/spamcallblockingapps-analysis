package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.core.app.C0745g;
import androidx.work.C2992d;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallReminderWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "handleCallReminder", "", "notificationId", "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallReminderWorker.class */
public final class CallReminderWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29582a = new Companion(null);

    /* renamed from: b */
    private static final String f29583b = "job_callreminder_tag";

    /* renamed from: c */
    private static final String f29584c = "notificationId";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallReminderWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "notif_id", "cancelJob", "", "jobId", "scheduleJob", "notificationId", "", "notificationTime", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallReminderWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static void m26165a(String jobId) {
            C18524p.m3840d(jobId, "jobId");
            C3068j.m39359b(CallAppApplication.get()).mo39262a(UUID.fromString(jobId));
        }

        /* renamed from: a */
        public final String m26166a(int i, long j) {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            C2992d.C2993a c2993a = new C2992d.C2993a();
            c2993a.m39500a(CallReminderWorker.f29584c, i);
            C3148m c = new C3148m.C3149a(CallReminderWorker.class).m39256a(getTAG()).m39257a(c2993a.m39502a()).m39259a(j - timeInMillis, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3148m c3148m = c;
            C3068j.m39359b(CallAppApplication.get()).m39265a(c3148m);
            String uuid = c3148m.f11519a.toString();
            C18524p.m3843b(uuid, "workRequest.id.toString()");
            return uuid;
        }

        public final String getTAG() {
            return CallReminderWorker.f29583b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallReminderWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        Bitmap bitmap;
        Bitmap bitmap2;
        List<CallRemindersData> m28694a = CallRemindersManager.m28694a(Long.valueOf(getInputData().m39511a(f29584c, -1)));
        if (CollectionUtils.m26068b(m28694a)) {
            NotificationManager notificationManager = NotificationManager.get();
            CallRemindersData callRemindersData = m28694a.get(0);
            synchronized (NotificationManager.f25736e) {
                if (callRemindersData.notificationId != null) {
                    int intValue = callRemindersData.notificationId.intValue();
                    C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.CALL_REMINDER_NOTIFICATION_CHANNEL);
                    m28557a.m44567b(Activities.getString(2131886453)).m44581a(2131231916).m44570a(true).m44579a(2, false);
                    m28557a.f3341l = 2;
                    m28557a.f3312A = "call";
                    ContactData m28327a = ContactUtils.m28327a(callRemindersData.phone);
                    if (m28327a != null) {
                        String nameOrNumber = m28327a.getNameOrNumber();
                        Phone phone = m28327a.getPhone();
                        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
                        intent.setAction("com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION");
                        intent.putExtra("notification_id", callRemindersData.notificationId.intValue());
                        ContactDetailsActivity.fillIntentWithCallData(intent, callRemindersData.contactId, callRemindersData.phone.getRawNumber(), null, null, true, null, ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                        NotificationManager.setDummyData(intent);
                        int incrementAndGet = notificationManager.f25739c.incrementAndGet();
                        if (m28327a.isIncognito()) {
                            m28557a.m44571a(Activities.m27697a(2131886439, m28327a.getPhone().m26095b()));
                            Bitmap m28690a = notificationManager.f25740d.m28690a(2131232150, incrementAndGet);
                            bitmap2 = m28690a;
                            if (m28690a != null) {
                                bitmap2 = m28690a;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        } else if (m28327a.isVoiceMail()) {
                            m28557a.m44571a(Activities.m27697a(2131886439, Activities.getString(2131888153)));
                            m28557a.m44567b(m28327a.getPhone().m26095b());
                            Bitmap m28690a2 = notificationManager.f25740d.m28690a(2131231612, incrementAndGet);
                            bitmap2 = m28690a2;
                            if (m28690a2 != null) {
                                bitmap2 = m28690a2;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        } else {
                            m28557a.m44571a(Activities.m27697a(2131886439, StringUtils.m26020j(m28327a.getNameOrNumber())));
                            m28557a.m44567b(StringUtils.m26020j(m28327a.getNameOrNumber()));
                            Bitmap m28685a = notificationManager.f25740d.m28685a(m28327a.getThumbnailUrl(), incrementAndGet, m28327a);
                            bitmap2 = m28685a;
                            if (m28685a != null) {
                                bitmap2 = m28685a;
                                bitmap = bitmap2;
                            }
                            bitmap = null;
                        }
                        m28557a.m44576a(bitmap2);
                        intent.putExtra("future_target_index_key", incrementAndGet);
                        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), intValue, intent, 1073741824);
                        NotificationManager.m28565a(m28557a, intValue, "com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS", incrementAndGet);
                        m28557a.m44568b(23);
                        m28557a.f3335f = service;
                        for (C0745g.C0747a c0747a : notificationManager.m28569a(intValue, phone, nameOrNumber, callRemindersData.notificationTime.longValue(), false)) {
                            m28557a.m44574a(c0747a);
                        }
                        NotificationManager.m28563a(m28557a, bitmap, notificationManager.m28569a(intValue, phone, nameOrNumber, callRemindersData.notificationTime.longValue(), true));
                        notificationManager.m28573a(intValue, m28557a);
                        CallRemindersManager.m28692b(callRemindersData.notificationId);
                        EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.REMINDER);
                    } else {
                        CLog.m27611a(NotificationManager.class, "info is null");
                    }
                }
            }
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
