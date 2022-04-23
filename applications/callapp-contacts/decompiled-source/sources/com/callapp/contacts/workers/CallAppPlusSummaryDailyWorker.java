package com.callapp.contacts.workers;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItem;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppPlusSummaryDailyWorker.class */
public final class CallAppPlusSummaryDailyWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17031a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17032b = "YESTERDAY_CALLAPP_PLUS_LIST";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17033c = "job_callapp_plus_daily_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "YESTERDAY_CALLAPP_PLUS_LIST", "getYESTERDAY_CALLAPP_PLUS_LIST", "openCallAppPlusSummary", "", "scheduleJob", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 19);
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
                CLog.a(CallAppPlusSummaryDailyWorker.class, e);
            }
            m c2 = new m.a(CallAppPlusSummaryDailyWorker.class).a(getTAG()).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final String getTAG() {
            return CallAppPlusSummaryDailyWorker.f17033c;
        }

        public final String getYESTERDAY_CALLAPP_PLUS_LIST() {
            return CallAppPlusSummaryDailyWorker.f17032b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallAppPlusSummaryDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        try {
            CLog.a(CallAppPlusSummaryDailyWorker.class, "CallAppPlusSummaryDailyWorker onRunDailyJob");
            Companion companion = f17031a;
            Boolean bool = Prefs.G.get();
            p.b(bool, "Prefs.callAppPlusDailySummaryEnabled.get()");
            if (bool.booleanValue()) {
                List<CallAppPlusSummaryItem> last24ContactPlusItemsData = ContactPlusUtils.getLast24ContactPlusItemsData();
                if (CollectionUtils.b(last24ContactPlusItemsData)) {
                    Intent intent = new Intent(CallAppApplication.get(), CallAppPlusDaySummaryActivity.class);
                    intent.setFlags(268435456);
                    String yesterday_callapp_plus_list = companion.getYESTERDAY_CALLAPP_PLUS_LIST();
                    if (last24ContactPlusItemsData != null) {
                        intent.putParcelableArrayListExtra(yesterday_callapp_plus_list, (ArrayList) last24ContactPlusItemsData);
                        Activities.a(CallAppApplication.get(), intent);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>");
                    }
                }
            }
            ListenableWorker.a.c cVar = new ListenableWorker.a.c();
            p.b(cVar, "Result.success()");
            companion.a();
            return cVar;
        } catch (Throwable th) {
            f17031a.a();
            throw th;
        }
    }
}
