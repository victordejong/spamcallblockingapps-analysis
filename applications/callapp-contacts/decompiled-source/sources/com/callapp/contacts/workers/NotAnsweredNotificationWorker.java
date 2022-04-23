package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnsweredNotificationWorker.class */
public final class NotAnsweredNotificationWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17071a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17072b = "job_not_answered_tag";

    /* renamed from: c  reason: collision with root package name */
    private static final int f17073c = 15;

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;", "", "()V", "NEXT_CHECK_IN_MINUTES", "", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "notAnsweredTime", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(long j) {
            Calendar cal = Calendar.getInstance();
            p.b(cal, "cal");
            cal.setTime(new Date(j));
            Boolean bool = Prefs.gC.get();
            p.b(bool, "Prefs.enableAutomationTestFlow.get()");
            if (bool.booleanValue()) {
                cal.add(12, 1);
            } else {
                cal.add(12, NotAnsweredNotificationWorker.f17073c);
            }
            m c2 = new m.a(NotAnsweredNotificationWorker.class).a(getTAG()).a(cal.getTimeInMillis() - Calendar.getInstance().getTimeInMillis(), TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            m mVar = c2;
            j.b(CallAppApplication.get()).a(mVar);
            String uuid = mVar.f6239a.toString();
            p.b(uuid, "workRequest.id.toString()");
            return uuid;
        }

        public final String getTAG() {
            return NotAnsweredNotificationWorker.f17072b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotAnsweredNotificationWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        int i = f17073c * 60 * 1000;
        Boolean bool = Prefs.gC.get();
        p.b(bool, "Prefs.enableAutomationTestFlow.get()");
        if (bool.booleanValue()) {
            i = 60000;
        }
        Date date = new Date((System.currentTimeMillis() - i) + FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
        List<CallLogUtils.MissedCallData> lastFifteenMinList = MissedCallUtils.a(Collections.singletonMap(40, Prefs.af.get()));
        p.b(lastFifteenMinList, "lastFifteenMinList");
        List<CallLogUtils.MissedCallData> list = lastFifteenMinList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((CallLogUtils.MissedCallData) obj).f15871b.before(date)) {
                arrayList.add(obj);
            }
        }
        CallLogContentObserver.a(arrayList);
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
