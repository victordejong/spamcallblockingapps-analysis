package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker.class */
public final class RemoveMissedCallNotAnsweredNotificationWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29633a = new Companion(null);

    /* renamed from: b */
    private static final String f29634b = "job_remove_missed_and_not_answer_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26125a() {
            Calendar calendar = Calendar.getInstance();
            calendar.add(10, 48);
            Calendar now = Calendar.getInstance();
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            C18524p.m3843b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(RemoveMissedCallNotAnsweredNotificationWorker.class, e);
            }
            C3148m c = new C3148m.C3149a(RemoveMissedCallNotAnsweredNotificationWorker.class).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39256a(getTAG()).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…ONDS).addTag(TAG).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
            CLog.m27611a(RemoveMissedCallNotAnsweredNotificationWorker.class, "Scheduled RemoveMissedCallNotAnsweredNotificationWorker");
        }

        public final String getTAG() {
            return RemoveMissedCallNotAnsweredNotificationWorker.f29634b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveMissedCallNotAnsweredNotificationWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        CLog.m27611a(RemoveMissedCallNotAnsweredNotificationWorker.class, "RemoveMissedCallNotAnsweredNotificationWorker doWork");
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f23127a, (EventType<OnMissedCallCardChangeListener, Phone>) null, false);
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
